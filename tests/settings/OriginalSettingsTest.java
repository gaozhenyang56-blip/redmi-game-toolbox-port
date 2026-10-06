import androidx.preference.Preference;
import android.content.Context;
import com.gzy.redmiport.*;
import com.gzy.redmidiag.CrashReporter;

/** Executes production settings traversal/listeners against a host-only preference tree. */
public class OriginalSettingsTest {
 public static class Group extends Preference {
  final Preference[] children;
  public Group(Preference... children){super("group");this.children=children;}
  public int getPreferenceCount(){return children.length;}
  public Preference getPreference(int i){return children[i];}
 }
 public static class Toggle extends Preference {
  public boolean checked;
  public Toggle(String key){super(key);}
  public void setChecked(boolean value){checked=value;}
 }
 public static class Broken extends Preference {
  public Broken(){super("broken");}
  public void setVisible(boolean value){throw new IllegalStateException("unsupported preference");}
 }
 public static class ListItem extends Preference {
  public String value;
  public ListItem(String key){super(key);}
  public void setValue(String value){this.value=value;}
  public CharSequence getEntry(){return "entry:"+value;}
 }
 public static class Fragment {
  final Group root;
  public Fragment(Group root){this.root=root;}
  public Group getPreferenceScreen(){return root;}
  public Context getContext(){return new Context();}
 }
 private static void check(boolean valid,String reason){if(!valid)throw new AssertionError(reason);}
 public static void main(String[] args){
  Toggle master=new Toggle("pref_game_shortcut"),box=new Toggle("pref_game_box"),slip=new Toggle("pref_slip"),content=new Toggle("pref_content_setting"),unsupported=new Toggle("pref_smart_five_g"),shortcut=new Toggle("pref_shortcut");
  Preference shizuku=new Preference("pref_shizuku");ListItem inset=new ListItem("port_sidebar_inset");
  Group category=new Group(new Broken(),master,box,slip,content,unsupported,shortcut,shizuku,inset);
  Fragment fragment=new Fragment(new Group(category));
  PortPreferences.put("pref_gamebox_turbo",false);PortPreferences.put("port_sidebar_inset",40);
  OriginalSettings.apply(fragment);
  check(master.enabled&&box.enabled&&slip.enabled&&shizuku.enabled,"core controls accessible");
  check(master.checked&&!box.checked&&slip.checked,"saved off state respected");
  check(!master.persistent&&!box.persistent&&!slip.persistent,"single provider-backed storage");
  check(content.enabled&&content.listener.onPreferenceChange(content,false)&&Boolean.FALSE.equals(PortPreferences.values.get("gb_game_content")),"content original backend key");
  check(inset.enabled&&"40".equals(inset.value)&&"entry:40".contentEquals(inset.summary),"saved geometry shown");
  check(inset.listener.onPreferenceChange(inset,"16")&&PortPreferences.number("port_sidebar_inset",0)==16,"geometry edit saved");
  check(box.listener.onPreferenceChange(box,true)&&PortPreferences.bool("pref_gamebox_turbo",false),"core switch save");
  check(!unsupported.enabled&&unsupported.summary.toString().contains("当前设备暂不支持"),"no fake hardware functionality");
  check(shortcut.enabled&&shortcut.listener.onPreferenceChange(shortcut,true)&&GameShortcut.pinned,"shortcut backend routing");
  OriginalSettings.apply(fragment);
  check(box.checked&&"16".equals(inset.value)&&shortcut.checked,"reopen readback");
  check(CrashReporter.failures==2,"failed leaf isolated on each traversal");
  GameShortcut.supported=false;OriginalSettings.apply(fragment);
  check(!shortcut.enabled,"launcher capability respected");
  System.out.println("12 settings behavior checks passed (host preference simulation; no Android device)");
 }
}
