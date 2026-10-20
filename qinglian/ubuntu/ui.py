"""Native desktop components sharing Qinglian Android's Material palette and glass pills.
Backdrop capture draws only this app's content widget, never the screen/other windows.
"""
import io
import math
import time
import cairo
import gi
gi.require_version('Gtk','3.0')
gi.require_foreign('cairo')
from gi.repository import Gtk, Gdk, GLib, GObject
from PIL import Image, ImageFilter

CSS=b'''
window.qinglian { background:#fff8ff; color:#1d1b20; }
.qinglian headerbar { background:#fff8ff; border:0; box-shadow:none; min-height:26px; padding:0 6px; }
.qinglian headerbar label { font-size:11px; color:#79747e; }
.qinglian headerbar .title { font-size:11px; font-weight:400; }
.qinglian headerbar button { padding:3px; min-width:18px; min-height:18px; background:transparent; }
.qinglian .content-stack { background:#fff8ff; }
.qinglian label { padding:0; }
.qinglian .brand { font-size:25px; font-weight:600; }
.qinglian .title { font-size:25px; font-weight:700; }
.qinglian .card-title { font-size:18px; font-weight:700; }
.qinglian .hero-title { font-size:28px; font-weight:700; }
.qinglian .subtitle { color:#625d67; font-size:13px; }
.qinglian .small { font-size:12px; }
.qinglian .card { background:#f3edf7; border-radius:22px; padding:22px; }
.qinglian .hero { background:#c8eac8; color:#19351e; padding:26px; }
.qinglian .accent { background:#e8def8; }
.qinglian .hero .subtitle { color:#3b5840; }
.qinglian button { border:0; background:#e9e0ee; color:#334d37; border-radius:24px; box-shadow:none; padding:11px 16px; min-height:20px; font-weight:500; }
.qinglian button:hover { background:#e1d6e7; }
.qinglian button:focus { outline:2px solid alpha(#45654a,.65); outline-offset:-3px; }
.qinglian button.suggested-action { background:#45654a; color:#fff; min-height:24px; }
.qinglian button.suggested-action:hover { background:#36563c; }
.qinglian button:disabled { opacity:.5; }
.qinglian .glass-controls { padding:10px 16px; }
.qinglian .icon-button { background:transparent; border-radius:22px; padding:8px; min-width:24px; min-height:24px; }
.qinglian .mode-switch { background:alpha(#45654a,.09); padding:7px 12px; font-size:12px; }
.qinglian .mode-switch:checked { background:#d4e7d2; color:#234329; }
.qinglian .seg-option { background:transparent; border:0; border-radius:25px; box-shadow:none; color:#625d67; padding:9px 10px; min-width:0; min-height:22px; }
.qinglian .seg-option:checked { background:transparent; color:#1d1b20; }
.qinglian .seg-option:hover { background:alpha(#ffffff,.2); }
.qinglian .nav-option { padding:9px 4px; }
.qinglian .nav-option label { font-size:12px; }
.qinglian .rail-controls { padding:16px 12px; }
.qinglian .rail-option { background:transparent; color:#625d67; padding:14px 12px; border-radius:20px; }
.qinglian .rail-option:checked { background:#e8def8; color:#283f2c; }
.qinglian .rail-option radio { min-width:0; min-height:0; margin:0; padding:0; border:0; opacity:0; }
.qinglian .seg-option radio { min-width:0; min-height:0; margin:0; padding:0; border:0; opacity:0; }
.qinglian entry, .qinglian spinbutton, .qinglian combobox button { background:alpha(#ffffff,.6); color:#1d1b20; border:1px solid #cac4d0; border-radius:14px; padding:10px; box-shadow:none; }
.qinglian switch { border-radius:18px; background:#cac4d0; }
.qinglian switch:checked { background:#45654a; }
.qinglian switch slider { border-radius:16px; }
.qinglian progressbar trough { background:#d8cde3; border:0; border-radius:8px; min-height:7px; }
.qinglian progressbar progress { background:#45654a; border:0; border-radius:8px; }
.qinglian textview text { background:#f3edf7; color:#1d1b20; }
.qinglian .status-message { background:#e8def8; color:#342e3d; border-radius:16px; padding:12px 18px; }
.qinglian.dark, .qinglian.dark headerbar, .qinglian.dark .content-stack { background:#151318; color:#e6e1e5; }
.qinglian.dark .subtitle { color:#cac4d0; }
.qinglian.dark .card { background:#25212a; }
.qinglian.dark .hero { background:#29432d; color:#cfebcc; }
.qinglian.dark .hero .subtitle { color:#b9cfb7; }
.qinglian.dark .accent, .qinglian.dark .status-message { background:#3c3349; color:#eaddf5; }
.qinglian.dark button { background:#38303f; color:#d6e9d2; }
.qinglian.dark button:hover { background:#49404f; }
.qinglian.dark button.suggested-action { background:#adcfaa; color:#18371e; }
.qinglian.dark .icon-button, .qinglian.dark .seg-option, .qinglian.dark .seg-option:checked { background:transparent; color:#e6e1e5; }
.qinglian.dark .mode-switch { background:#333e33; color:#cbe4c7; }
.qinglian.dark .mode-switch:checked { background:#45654a; color:#fff; }
.qinglian.dark .rail-option { background:transparent; color:#cac4d0; }
.qinglian.dark .rail-option:checked { background:#3c3349; color:#d6e9d2; }
.qinglian.dark entry, .qinglian.dark spinbutton, .qinglian.dark combobox button { background:#302a35; color:#e6e1e5; border-color:#625968; }
.qinglian.dark textview text { background:#25212a; color:#e6e1e5; }

/* Classic mode follows the first Ubuntu preview's ordinary desktop forms. */
.qinglian.classic, .qinglian.classic .content-stack { background:#f7f9fc; color:#18212e; }
.qinglian.classic .card, .qinglian.classic .hero, .qinglian.classic .accent { background:#ffffff; color:#18212e; border-radius:18px; padding:24px; }
.qinglian.classic .subtitle, .qinglian.classic .hero .subtitle { color:#687588; }
.qinglian.classic button { border-radius:10px; padding:9px 16px; }
.qinglian.classic button.suggested-action { background:#176b56; color:#ffffff; }
.qinglian.classic .hero-title { font-size:26px; }
.qinglian.classic notebook > header { background:#f7f9fc; padding:4px 8px; }
.qinglian.classic.dark, .qinglian.classic.dark .content-stack, .qinglian.classic.dark notebook > header { background:#171d26; color:#e4eaf2; }
.qinglian.classic.dark .card, .qinglian.classic.dark .hero, .qinglian.classic.dark .accent { background:#242e3b; color:#e4eaf2; }
.qinglian.classic.dark .subtitle, .qinglian.classic.dark .hero .subtitle { color:#a9b8cb; }
'''

def rounded(cr,x,y,w,h,r):
    r=min(r,w/2,h/2)
    cr.new_sub_path()
    for cx,cy,a in ((x+w-r,y+r,-90),(x+w-r,y+h-r,0),(x+r,y+h-r,90),(x+r,y+r,180)):
        cr.arc(cx,cy,r,math.radians(a),math.radians(a+90))
    cr.close_path()

class Icon(Gtk.DrawingArea):
    def __init__(self,name,size=24):
        super().__init__(); self.name=name; self.set_size_request(size,size); self.connect('draw',self.paint)
        self.set_halign(Gtk.Align.CENTER); self.set_valign(Gtk.Align.CENTER)
    def paint(self,w,cr):
        size=min(w.get_allocated_width(),w.get_allocated_height()); cr.translate((w.get_allocated_width()-size)/2,(w.get_allocated_height()-size)/2); cr.scale(size/24,size/24)
        c=w.get_style_context().get_color(Gtk.StateFlags.NORMAL); cr.set_source_rgba(c.red,c.green,c.blue,c.alpha); cr.set_line_width(1.8); cr.set_line_cap(cairo.LINE_CAP_ROUND); cr.set_line_join(cairo.LINE_JOIN_ROUND)
        if self.name=='connect':
            cr.arc(12,12.5,8,math.radians(-55),math.radians(235)); cr.stroke(); cr.move_to(12,2); cr.line_to(12,12); cr.stroke()
        elif self.name=='speed':
            cr.arc(12,13,8.5,math.pi,math.pi*2); cr.stroke(); cr.move_to(12,13); cr.line_to(17,7); cr.stroke(); cr.arc(12,13,1.4,0,7); cr.fill()
        elif self.name=='routing':
            for x,y in ((6,4),(18,4),(12,20)):
                cr.arc(x,y,2.3,0,7); cr.stroke()
            cr.move_to(6,6.5); cr.curve_to(6,14,12,10,12,17.5); cr.move_to(18,6.5); cr.curve_to(18,12,12,10,12,15); cr.stroke()
        elif self.name=='about':
            cr.arc(12,12,9,0,7); cr.stroke(); cr.move_to(12,11); cr.line_to(12,17); cr.stroke(); cr.arc(12,7,1,0,7); cr.fill()
        elif self.name=='account':
            cr.arc(12,7,3.5,0,7); cr.stroke(); cr.arc(12,21,7.5,math.pi,math.pi*2); cr.stroke()
        elif self.name=='theme':
            cr.arc(12,12,9,0,7); cr.stroke(); cr.arc(12,12,7,math.pi/2,math.pi*1.5); cr.close_path(); cr.fill()
        elif self.name=='back':
            cr.move_to(15,5); cr.line_to(8,12); cr.line_to(15,19); cr.stroke()
        else:
            for x in (5,12,19): cr.arc(x,12,1.5,0,7); cr.fill()
        return False

class Clamp(Gtk.Bin):
    """Height-for-width centered content with an actual maximum width."""
    def __init__(self,child,width=1040):
        super().__init__(); self.limit=width; self.set_has_window(False); self.add(child)
    def do_get_request_mode(self): return Gtk.SizeRequestMode.HEIGHT_FOR_WIDTH
    def do_get_preferred_width(self): return (min(420,self.limit),self.limit)
    def do_get_preferred_height(self): return self.get_child().get_preferred_height()
    def do_get_preferred_height_for_width(self,width): return self.get_child().get_preferred_height_for_width(min(width,self.limit))
    def do_size_allocate(self,allocation):
        self.set_allocation(allocation)
        rect=Gdk.Rectangle(); rect.width=min(allocation.width,self.limit); rect.height=allocation.height
        rect.x=allocation.x+(allocation.width-rect.width)//2; rect.y=allocation.y
        self.get_child().size_allocate(rect)
    def set_limit(self,width): self.limit=width; self.queue_resize()

class Columns(Gtk.Box):
    def __init__(self):
        super().__init__(orientation=Gtk.Orientation.VERTICAL,spacing=16)
        self.columns=[Gtk.Box(orientation=Gtk.Orientation.VERTICAL,spacing=16) for _ in range(2)]
        for child in self.columns: self.pack_start(child,False,True,0)
        self.force_single=False; self.wide=False; self.connect('size-allocate',self.arrange)
    def arrange(self,*_):
        wide=self.get_allocated_width()>=800 and not self.force_single
        if wide==self.wide: return
        self.wide=wide; self.set_orientation(Gtk.Orientation.HORIZONTAL if wide else Gtk.Orientation.VERTICAL); self.set_homogeneous(wide)
        for child in self.columns: self.set_child_packing(child,wide,True,0,Gtk.PackType.START)
    def single(self,value): self.force_single=value; self.arrange(); self.queue_resize()

class Segments(Gtk.Overlay):
    __gsignals__={'changed':(GObject.SignalFlags.RUN_LAST,None,())}
    def __init__(self,titles,icons=None,height=50):
        super().__init__(); self.titles=titles; self.index=0; self.position=0.; self.dark=False; self.tick=0; self.buttons=[]; self.dragging=False; self.classic_mode=False
        self.canvas=Gtk.DrawingArea(); self.canvas.set_size_request(320 if icons else 200,height); self.add(self.canvas); self.canvas.connect('draw',self.paint)
        self.options=Gtk.Box(homogeneous=True); self.options.set_margin_start(4); self.options.set_margin_end(4); self.options.set_margin_top(4); self.options.set_margin_bottom(4); self.add_overlay(self.options)
        group=None
        for i,title in enumerate(titles):
            b=Gtk.RadioButton.new_from_widget(group); group=group or b; b.set_mode(False)
            b.get_style_context().add_class('seg-option')
            if icons:
                b.get_style_context().add_class('nav-option'); col=Gtk.Box(orientation=Gtk.Orientation.VERTICAL,spacing=5); col.pack_start(Icon(icons[i],22),False,False,0); col.pack_start(Gtk.Label(label=title),False,False,0); b.add(col)
            else: b.add(Gtk.Label(label=title))
            b.connect('toggled',self.toggled,i); self.options.pack_start(b,True,True,0); self.buttons.append(b)
        self.classic_combo=Gtk.ComboBoxText()
        for title in titles: self.classic_combo.append_text(title)
        self.classic_combo.set_active(0); self.classic_combo.set_valign(Gtk.Align.CENTER)
        self.classic_combo.set_no_show_all(True); self.add_overlay(self.classic_combo)
        self.classic_combo.connect('changed',lambda c:self.set_active(c.get_active()))
        self.buttons[0].set_active(True)
        self.gesture=Gtk.GestureDrag.new(self); self.gesture.set_propagation_phase(Gtk.PropagationPhase.CAPTURE)
        self.gesture.connect('drag-begin',self.drag_begin); self.gesture.connect('drag-update',self.drag_update); self.gesture.connect('drag-end',self.drag_end); self.gesture.connect('cancel',self.drag_cancel)
    def get_active(self): return self.index
    def get_active_text(self): return self.titles[self.index]
    def set_active(self,index):
        if index<0 or index>=len(self.buttons): return
        self.buttons[index].set_active(True)
    def toggled(self,b,index):
        if not b.get_active(): return
        changed=index!=self.index; self.index=index; self.animate(float(index))
        if self.classic_combo.get_active()!=index: self.classic_combo.set_active(index)
        if changed: self.emit('changed')
    def animate(self,target):
        if self.tick: self.remove_tick_callback(self.tick); self.tick=0
        if not Gtk.Settings.get_default().get_property('gtk-enable-animations') or not self.get_mapped(): self.position=target; self.canvas.queue_draw(); return
        start=self.position; began=time.monotonic()
        def frame(*_):
            p=min(1,(time.monotonic()-began)/.18); self.position=start+(target-start)*(1-(1-p)**3); self.canvas.queue_draw()
            if p>=1: self.tick=0; return False
            return True
        self.tick=self.add_tick_callback(frame)
    def drag_begin(self,g,x,y): self.origin=x; self.dragging=False
    def drag_update(self,g,dx,dy):
        if abs(dx)>6 and self.is_sensitive():
            self.dragging=True; g.set_state(Gtk.EventSequenceState.CLAIMED)
            if self.tick: self.remove_tick_callback(self.tick); self.tick=0
            self.position=max(0,min(len(self.buttons)-1,(self.origin+dx)/max(1,self.get_allocated_width())*len(self.buttons)-.5)); self.canvas.queue_draw()
    def drag_end(self,g,dx,dy):
        if self.dragging:
            index=max(0,min(len(self.buttons)-1,int((self.origin+dx)/max(1,self.get_allocated_width())*len(self.buttons))))
            self.set_active(index); self.animate(float(self.index)); self.dragging=False
    def drag_cancel(self,*_): self.dragging=False; self.animate(float(self.index))
    def set_classic(self,value):
        self.classic_mode=value; self.options.set_visible(not value); self.classic_combo.set_visible(value); self.canvas.queue_draw()
    def paint(self,w,cr):
        if self.classic_mode: return False
        width=w.get_allocated_width(); height=w.get_allocated_height()
        rounded(cr,0,0,width,height,height/2); cr.set_source_rgba(1,1,1,.10 if self.dark else .32); cr.fill()
        slot=(width-8)/len(self.buttons); x=4+self.position*slot
        rounded(cr,x,5,slot,height-8,(height-8)/2); cr.set_source_rgba(0,0,0,.05); cr.fill()
        rounded(cr,x,4,slot,height-8,(height-8)/2); cr.set_source_rgba(.88,.92,.88,.19) if self.dark else cr.set_source_rgba(1,1,1,.86); cr.fill_preserve()
        cr.set_source_rgba(1,1,1,.20 if self.dark else .72); cr.set_line_width(1); cr.stroke(); return False
    def set_dark(self,dark): self.dark=dark; self.canvas.queue_draw()

class FrostedPanel(Gtk.Overlay):
    """Bounded live CPU blur of this app's own stack, including scroll/animations."""
    def __init__(self,source,controls,height):
        super().__init__(); self.source=source; self.dark=False; self.pixbuf=None; self.last=None; self.refresh_count=0; self.timer=0; self.source_handler=0; self.last_sample=0
        self.canvas=Gtk.DrawingArea(); self.canvas.set_size_request(-1,height); self.add(self.canvas); self.add_overlay(controls); self.canvas.connect('draw',self.paint)
        self.connect('map',self.start); self.connect('unmap',self.stop); self.connect('destroy',self.stop)
    def start(self,*_):
        if self.timer: return
        self.source_handler=self.source.connect_after('draw',self.source_draw)
        self.timer=GLib.timeout_add(83,self.request_sample,priority=GLib.PRIORITY_LOW)
    def request_sample(self):
        self.source.queue_draw()
        return True
    def source_draw(self,*_):
        if getattr(self.source,'_blur_sampling',False): return False
        now=time.monotonic()
        if now-self.last_sample<.08: return False
        self.last_sample=now; self.sample(); return False
    def stop(self,*_):
        if self.timer: GLib.source_remove(self.timer); self.timer=0
        if self.source_handler: self.source.disconnect(self.source_handler); self.source_handler=0
        self.pixbuf=None; self.last=None
    def set_dark(self,dark): self.dark=dark; self.last=None; self.canvas.queue_draw()
    def sample(self):
        if not self.get_mapped() or not self.source.get_mapped(): return True
        win=self.get_toplevel().get_window()
        if win and win.get_state()&Gdk.WindowState.ICONIFIED: return True
        width=self.get_allocated_width(); height=self.get_allocated_height()
        target=self.source.get_visible_child()
        if not target or not target.get_mapped(): return True
        target.check_resize()
        target.size_allocate(target.get_allocation())
        coords=self.translate_coordinates(target,0,0)
        if width<2 or height<2 or not coords: return True
        x,y=coords; pad=20; scale=4; sw=math.ceil((width+2*pad)/scale); sh=math.ceil((height+2*pad)/scale)
        surface=cairo.ImageSurface(cairo.FORMAT_ARGB32,sw,sh); cr=cairo.Context(surface)
        cr.set_source_rgb(*((.082,.074,.094) if self.dark else (1,.973,1))); cr.paint(); cr.scale(1/scale,1/scale); cr.translate(pad-x,pad-y)
        # Called only from the source's completed draw: GTK has resolved allocation.
        self.source._blur_sampling=True
        try: target.draw(cr)
        finally: self.source._blur_sampling=False
        raw=bytes(surface.get_data()); stamp=(width,height,self.dark,hash(raw))
        if stamp==self.last: return True
        self.last=stamp
        buffer=io.BytesIO(); surface.write_to_png(buffer); buffer.seek(0)
        im=Image.open(buffer).convert('RGBA').filter(ImageFilter.GaussianBlur(3.5)).resize((sw*scale,sh*scale),Image.Resampling.BILINEAR).crop((pad,pad,pad+width,pad+height))
        pixels=GLib.Bytes.new(im.tobytes()); self.pixbuf=GdkPixbuf_from_bytes(pixels,width,height); self.refresh_count+=1; self.canvas.queue_draw(); return True
    def paint(self,w,cr):
        width=w.get_allocated_width(); height=w.get_allocated_height(); rounded(cr,1,2,width-2,height-3,min(32,height/2))
        cr.set_source_rgba(0,0,0,.08); cr.fill(); rounded(cr,1,0,width-2,height-4,min(32,height/2)); cr.save(); cr.clip()
        if self.pixbuf: Gdk.cairo_set_source_pixbuf(cr,self.pixbuf,0,0); cr.paint()
        cr.set_source_rgba(*((.14,.12,.16,.62) if self.dark else (1,.985,1,.66))); cr.paint(); cr.restore()
        rounded(cr,1,0,width-2,height-4,min(32,height/2)); cr.set_source_rgba(1,1,1,.13 if self.dark else .75); cr.set_line_width(1); cr.stroke(); return False

def GdkPixbuf_from_bytes(data,width,height):
    from gi.repository import GdkPixbuf
    return GdkPixbuf.Pixbuf.new_from_bytes(data,GdkPixbuf.Colorspace.RGB,True,8,width,height,width*4)

class Sparkline(Gtk.DrawingArea):
    def __init__(self):
        super().__init__(); self.points=[]; self.dark=False; self.set_size_request(-1,140); self.connect('draw',self.paint)
    def append(self,value):
        if math.isfinite(value) and value>=0: self.points=(self.points+[value])[-120:]; self.queue_draw()
    def clear(self): self.points=[]; self.queue_draw()
    def paint(self,w,cr):
        width=w.get_allocated_width(); height=w.get_allocated_height(); cr.set_line_width(1); cr.set_source_rgba(.5,.45,.55,.16)
        for p in (.2,.5,.8): cr.move_to(0,height*p); cr.line_to(width,height*p)
        cr.stroke()
        if not self.points: return False
        top=max(1,max(self.points)*1.1); cr.set_line_width(2.5); cr.set_source_rgb(*((.68,.81,.67) if self.dark else (.27,.40,.29)))
        for i,value in enumerate(self.points):
            x=3+i/max(1,len(self.points)-1)*(width-6); y=height-8-value/top*(height-16)
            cr.move_to(x,y) if i==0 else cr.line_to(x,y)
        cr.stroke(); return False
