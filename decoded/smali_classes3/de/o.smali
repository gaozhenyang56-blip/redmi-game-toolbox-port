.class public Lde/o;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/miui/common/ui/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lde/o;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lde/o;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lde/o;->a:Landroid/content/Context;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lde/o;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0e03e3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0c46

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/miui/common/ui/d$b;

    iget-object v1, p0, Lde/o;->a:Landroid/content/Context;

    const v3, 0x7f130455

    invoke-direct {p1, v1, v3}, Lcom/miui/common/ui/d$b;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/miui/common/ui/d$b;->b(Z)Lcom/miui/common/ui/d$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/common/ui/d$b;->l(Landroid/view/View;)Lcom/miui/common/ui/d$b;

    move-result-object p1

    const v0, 0x7f121004

    invoke-virtual {p1, v0, v2}, Lcom/miui/common/ui/d$b;->g(ILandroid/content/DialogInterface$OnClickListener;)Lcom/miui/common/ui/d$b;

    move-result-object p1

    new-instance v0, Lde/o$a;

    invoke-direct {v0, p0}, Lde/o$a;-><init>(Lde/o;)V

    const v1, 0x7f121005

    invoke-virtual {p1, v1, v0}, Lcom/miui/common/ui/d$b;->i(ILandroid/content/DialogInterface$OnClickListener;)Lcom/miui/common/ui/d$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/common/ui/d$b;->a()Lcom/miui/common/ui/d;

    move-result-object p1

    iput-object p1, p0, Lde/o;->b:Lcom/miui/common/ui/d;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    iget-object p1, p0, Lde/o;->b:Lcom/miui/common/ui/d;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    const p2, 0x7f121002

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const p2, 0x7f121003

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const p2, 0x7f121006

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "PowerUsbReceiver"

    const-string v0, "getPrinterKitBatterLevel: "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lde/o;->a:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, p0, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lde/o;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lme/w;->N0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "device"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: ACTION_USB_DEVICE_ATTACHED pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",vid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PowerUsbReceiver"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x4012

    if-ne v0, v2, :cond_7

    const/16 v0, 0x302c

    if-ne v1, v0, :cond_7

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-virtual {p2, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v2

    const/16 v4, 0xff

    if-ne v2, v4, :cond_4

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "batteryLevelInterfaceName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lde/o;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, p2}, Lde/o;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, La8/t1;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lde/j;->f0(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lgd/c;->J0()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1, p2}, Lde/j;->g0(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p2}, Lde/o;->d(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lgd/c;->J2()V

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const-string p2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lde/o;->b:Lcom/miui/common/ui/d;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lde/o;->b:Lcom/miui/common/ui/d;

    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 p2, 0x0

    iput-object p2, p0, Lde/o;->b:Lcom/miui/common/ui/d;

    :cond_6
    invoke-static {p1}, Lde/j;->o(Landroid/content/Context;)V

    :cond_7
    :goto_2
    return-void
.end method
