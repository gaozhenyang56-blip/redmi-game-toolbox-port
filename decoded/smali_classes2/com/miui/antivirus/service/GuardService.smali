.class public Lcom/miui/antivirus/service/GuardService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antivirus/service/GuardService$h;,
        Lcom/miui/antivirus/service/GuardService$f;,
        Lcom/miui/antivirus/service/GuardService$e;,
        Lcom/miui/antivirus/service/GuardService$g;
    }
.end annotation


# instance fields
.field private A:Lcom/miui/antivirus/service/GuardService$g;

.field private B:Landroid/os/HandlerThread;

.field private C:Lcom/miui/antivirus/service/GuardService$f;

.field private D:Landroid/app/AppOpsManager;

.field private E:Landroid/os/IBinder;

.field private F:Ljava/lang/String;

.field private G:Landroid/content/ServiceConnection;

.field private a:J

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lw2/w;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field private h:Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;

.field public i:Lo2/g$h;

.field private j:Lo2/g;

.field private k:Lp9/a;

.field private l:Landroid/view/inputmethod/InputMethodManager;

.field private m:Lcom/miui/antivirus/service/GuardService$h;

.field private n:Landroid/net/wifi/WifiManager;

.field private o:Lo2/i;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private u:I

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/antivirus/service/GuardService;->a:J

    new-instance v0, Lcom/miui/antivirus/service/GuardService$a;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/service/GuardService$a;-><init>(Lcom/miui/antivirus/service/GuardService;)V

    iput-object v0, p0, Lcom/miui/antivirus/service/GuardService;->h:Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;

    new-instance v0, Lcom/miui/antivirus/service/GuardService$b;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/service/GuardService$b;-><init>(Lcom/miui/antivirus/service/GuardService;)V

    iput-object v0, p0, Lcom/miui/antivirus/service/GuardService;->i:Lo2/g$h;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antivirus/service/GuardService;->p:Z

    iput-boolean v0, p0, Lcom/miui/antivirus/service/GuardService;->q:Z

    iput-boolean v0, p0, Lcom/miui/antivirus/service/GuardService;->r:Z

    iput v0, p0, Lcom/miui/antivirus/service/GuardService;->s:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/antivirus/service/GuardService;->t:Ljava/util/ArrayList;

    iput v0, p0, Lcom/miui/antivirus/service/GuardService;->u:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/antivirus/service/GuardService;->z:Ljava/lang/String;

    new-instance v1, Lcom/miui/antivirus/service/GuardService$g;

    invoke-direct {v1, p0, v0}, Lcom/miui/antivirus/service/GuardService$g;-><init>(Lcom/miui/antivirus/service/GuardService;Lcom/miui/antivirus/service/GuardService$a;)V

    iput-object v1, p0, Lcom/miui/antivirus/service/GuardService;->A:Lcom/miui/antivirus/service/GuardService$g;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/antivirus/service/GuardService;->F:Ljava/lang/String;

    new-instance v0, Lcom/miui/antivirus/service/GuardService$c;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/service/GuardService$c;-><init>(Lcom/miui/antivirus/service/GuardService;)V

    iput-object v0, p0, Lcom/miui/antivirus/service/GuardService;->G:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic A(Lcom/miui/antivirus/service/GuardService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/service/GuardService;->x:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic B(Lcom/miui/antivirus/service/GuardService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/GuardService;->x:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic C(Lcom/miui/antivirus/service/GuardService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/service/GuardService;->y:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic D(Lcom/miui/antivirus/service/GuardService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/GuardService;->y:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic E(Lcom/miui/antivirus/service/GuardService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/antivirus/service/GuardService;->H(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic F(Lcom/miui/antivirus/service/GuardService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/service/GuardService;->G()V

    return-void
.end method

.method private G()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xiaomi.gamecenter.for3thd.migame.IMiGameSwitchCashier"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lx4/f1;->H(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GuardService"

    const-string v2, "bind game cashier service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/antivirus/service/GuardService;->G:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method private H(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0, p1, p4}, Lcom/miui/antivirus/service/GuardService;->K(ZLjava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/antivirus/service/GuardService;->w:Ljava/util/ArrayList;

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/antivirus/service/GuardService;->f:Ljava/lang/String;

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    invoke-static {p0, p5}, Lw2/t;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "call pay pkgName is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " pay pkgName is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "GuardService"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/antivirus/service/GuardService;->Q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {p2, p1}, Lq2/b$b;->k(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lq2/b$b;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private I(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lw2/t;->i(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private J(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/GuardService;->F:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/antivirus/service/GuardService;->P(Z)V

    return-void
.end method

.method private K(ZLjava/lang/String;)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/antivirus/service/GuardService;->q:Z

    const-string v0, "GuardService"

    if-eqz p1, :cond_1

    const-string p1, "\u8fdb\u5165\u652f\u4ed8\u73af\u5883!"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/antivirus/service/GuardService;->R()V

    invoke-static {}, Lo2/h;->u()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/antivirus/service/GuardService;->S()V

    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/antivirus/service/GuardService;->J(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "\u9000\u51fa\u652f\u4ed8\u73af\u5883\uff01"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 p2, 0x0

    const-string v0, "com.miui.app.ExtraStatusBarManager.action_status_safepay"

    invoke-static {p0, p2, v0, p2, p1}, Lw2/t;->P(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Bundle;)V

    invoke-static {}, Lo2/h;->u()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/miui/antivirus/service/GuardService;->O()V

    :cond_2
    invoke-direct {p0}, Lcom/miui/antivirus/service/GuardService;->N()V

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/miui/antivirus/service/DialogService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "com.miui.safepay.HIDE_WARNING_DIALOG"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method private L()V
    .locals 9

    const-string v0, "GuardService"

    const-string v1, "onScanFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/antivirus/service/GuardService;->p:Z

    iput v1, p0, Lcom/miui/antivirus/service/GuardService;->u:I

    iget v1, p0, Lcom/miui/antivirus/service/GuardService;->s:I

    invoke-static {v1}, Lq2/b$b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lq2/b$b;->y(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/miui/antivirus/service/GuardService;->q:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/miui/antivirus/service/GuardService;->s:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "zh_CN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget v3, p0, Lcom/miui/antivirus/service/GuardService;->s:I

    if-lez v3, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lcom/miui/antivirus/service/GuardService;->r:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "com.miui.app.ExtraStatusBarManager.action_status_safepay"

    invoke-static {p0, v3, v5, v1, v4}, Lw2/t;->P(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Bundle;)V

    iget-object v1, p0, Lcom/miui/antivirus/service/GuardService;->A:Lcom/miui/antivirus/service/GuardService$g;

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    iget v1, p0, Lcom/miui/antivirus/service/GuardService;->s:I

    if-lez v1, :cond_5

    iget-wide v1, p0, Lcom/miui/antivirus/service/GuardService;->a:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/miui/antivirus/service/GuardService;->a:J

    sub-long v5, v1, v3

    const-wide/32 v7, 0x5265c00

    cmp-long v5, v5, v7

    if-ltz v5, :cond_3

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    :cond_3
    return-void

    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/antivirus/service/DialogService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.miui.safepay.SHOW_WARNING_DIALOG"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget v2, p0, Lcom/miui/antivirus/service/GuardService;->s:I

    const-string v3, "extra_risk_priority"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/antivirus/service/GuardService;->t:Ljava/util/ArrayList;

    const-string v3, "extra_risk_priority_all"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background security scan: RiskPriority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/antivirus/service/GuardService;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private M()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/miui/antivirus/service/GuardService$h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/antivirus/service/GuardService$h;-><init>(Lcom/miui/antivirus/service/GuardService;Lcom/miui/antivirus/service/GuardService$a;)V

    iput-object v1, p0, Lcom/miui/antivirus/service/GuardService;->m:Lcom/miui/antivirus/service/GuardService$h;

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private N()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/antivirus/service/GuardService;->P(Z)V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/antivirus/service/GuardService;->F:Ljava/lang/String;

    return-void
.end method

.method private O()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService;->z:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/service/GuardService;->z:Ljava/lang/String;

    const-string v2, "default_input_method"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/antivirus/service/GuardService;->z:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private P(Z)V
    .locals 13

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x1f

    const-string v3, "com.miui.handwriting"

    const-string v4, "com.android.pcmode"

    const-string v5, "setUserRestriction"

    const-string v6, "GuardService"

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-lt v0, v1, :cond_1

    :try_start_0
    new-instance v0, Landroid/os/PackageTagsList$Builder;

    invoke-direct {v0}, Landroid/os/PackageTagsList$Builder;-><init>()V

    iget-object v1, p0, Lcom/miui/antivirus/service/GuardService;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    invoke-virtual {v0, v4}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    invoke-virtual {v0, v3}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    invoke-virtual {v0}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/service/GuardService;->D:Landroid/app/AppOpsManager;

    new-array v3, v7, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v11

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v10

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v3, v9

    const-class v4, Landroid/os/PackageTagsList;

    aput-object v4, v3, v8

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v11

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v10

    iget-object p1, p0, Lcom/miui/antivirus/service/GuardService;->E:Landroid/os/IBinder;

    aput-object p1, v4, v9

    aput-object v0, v4, v8

    invoke-static {v6, v1, v5, v3, v4}, Lbh/e;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService;->D:Landroid/app/AppOpsManager;

    new-array v1, v7, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v1, v11

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v1, v10

    const-class v12, Landroid/os/IBinder;

    aput-object v12, v1, v9

    const-class v12, [Ljava/lang/String;

    aput-object v12, v1, v8

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v11

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v7, v10

    iget-object p1, p0, Lcom/miui/antivirus/service/GuardService;->E:Landroid/os/IBinder;

    aput-object p1, v7, v9

    new-array p1, v8, [Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/antivirus/service/GuardService;->F:Ljava/lang/String;

    aput-object v2, p1, v11

    aput-object v4, p1, v10

    aput-object v3, p1, v9

    aput-object p1, v7, v8

    invoke-static {v6, v0, v5, v1, v7}, Lbh/e;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string v0, "restrictOpsWindow error"

    invoke-static {v6, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private Q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p2, p0, Lcom/miui/antivirus/service/GuardService;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/antivirus/service/GuardService;->d:Ljava/lang/String;

    iput-wide p4, p0, Lcom/miui/antivirus/service/GuardService;->b:J

    const-string p3, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bindGameSwitchCashier when mi start pay "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GuardService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/antivirus/service/GuardService;->G()V

    return-void

    :cond_0
    new-instance p3, Lcom/miui/antivirus/service/GuardService$e;

    invoke-direct {p3, p1, p0, p2}, Lcom/miui/antivirus/service/GuardService$e;-><init>(Landroid/content/Context;Lcom/miui/antivirus/service/GuardService;Ljava/lang/String;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p3, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private R()V
    .locals 1

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/antivirus/service/GuardService;->p:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/antivirus/service/GuardService$d;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/service/GuardService$d;-><init>(Lcom/miui/antivirus/service/GuardService;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private S()V
    .locals 11

    const-string v0, "GuardService"

    const-string v1, "default_input_method"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/miui/antivirus/service/GuardService;->l:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v8

    if-nez v7, :cond_1

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-boolean v7, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v7, :cond_2

    const-string v7, "mIsAuxIme"

    invoke-static {v0, v6, v7}, Lbh/e;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    :cond_2
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_5
    move v7, v8

    :goto_1
    if-eqz v2, :cond_6

    if-eqz v7, :cond_6

    invoke-direct {p0, p0, v2}, Lcom/miui/antivirus/service/GuardService;->I(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    iput-object v2, p0, Lcom/miui/antivirus/service/GuardService;->z:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "NameNotFoundException when switchToSystemInputMethod : "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/miui/antivirus/service/GuardService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/service/GuardService;->L()V

    return-void
.end method

.method static synthetic b(Lcom/miui/antivirus/service/GuardService;)Lp9/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/service/GuardService;->k:Lp9/a;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/antivirus/service/GuardService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/antivirus/service/GuardService;->p:Z

    return p0
.end method

.method static synthetic d(Lcom/miui/antivirus/service/GuardService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/service/GuardService;->p:Z

    return p1
.end method

.method static synthetic e(Lcom/miui/antivirus/service/GuardService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/service/GuardService;->r:Z

    return p1
.end method

.method static synthetic f(Lcom/miui/antivirus/service/GuardService;)I
    .locals 0

    iget p0, p0, Lcom/miui/antivirus/service/GuardService;->s:I

    return p0
.end method

.method static synthetic g(Lcom/miui/antivirus/service/GuardService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/service/GuardService;->s:I

    return p1
.end method

.method static synthetic h(Lcom/miui/antivirus/service/GuardService;)I
    .locals 0

    iget p0, p0, Lcom/miui/antivirus/service/GuardService;->u:I

    return p0
.end method

.method static synthetic i(Lcom/miui/antivirus/service/GuardService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/service/GuardService;->u:I

    return p1
.end method

.method static synthetic j(Lcom/miui/antivirus/service/GuardService;)I
    .locals 2

    iget v0, p0, Lcom/miui/antivirus/service/GuardService;->u:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/antivirus/service/GuardService;->u:I

    return v0
.end method

.method static synthetic k(Lcom/miui/antivirus/service/GuardService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/service/GuardService;->t:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic l(Lcom/miui/antivirus/service/GuardService;)Lcom/miui/antivirus/service/GuardService$g;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/service/GuardService;->A:Lcom/miui/antivirus/service/GuardService$g;

    return-object p0
.end method

.method static synthetic m(Lcom/miui/antivirus/service/GuardService;)Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/service/GuardService;->h:Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;

    return-object p0
.end method

.method static synthetic n(Lcom/miui/antivirus/service/GuardService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/service/GuardService;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lcom/miui/antivirus/service/GuardService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/service/GuardService;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p(Lcom/miui/antivirus/service/GuardService;)Lw2/w;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/service/GuardService;->e:Lw2/w;

    return-object p0
.end method

.method static synthetic q(Lcom/miui/antivirus/service/GuardService;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/antivirus/service/GuardService;->b:J

    return-wide v0
.end method

.method static synthetic r(Lcom/miui/antivirus/service/GuardService;Lw2/w;)Lw2/w;
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/GuardService;->e:Lw2/w;

    return-object p1
.end method

.method static synthetic s(Lcom/miui/antivirus/service/GuardService;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/service/GuardService;->G:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic t(Lcom/miui/antivirus/service/GuardService;)Lo2/g;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/service/GuardService;->j:Lo2/g;

    return-object p0
.end method

.method static synthetic u(Lcom/miui/antivirus/service/GuardService;)Landroid/net/wifi/WifiManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/service/GuardService;->n:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic v(Lcom/miui/antivirus/service/GuardService;)Lo2/i;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/service/GuardService;->o:Lo2/i;

    return-object p0
.end method

.method static synthetic w(Lcom/miui/antivirus/service/GuardService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/service/GuardService;->v:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic x(Lcom/miui/antivirus/service/GuardService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/GuardService;->v:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic y(Lcom/miui/antivirus/service/GuardService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/service/GuardService;->w:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic z(Lcom/miui/antivirus/service/GuardService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/GuardService;->w:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lo2/g;->J(Landroid/content/Context;)Lo2/g;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/service/GuardService;->j:Lo2/g;

    invoke-static {p0}, Lo2/i;->c(Landroid/content/Context;)Lo2/i;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/service/GuardService;->o:Lo2/i;

    invoke-static {p0}, Lp9/a;->j(Landroid/content/Context;)Lp9/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/service/GuardService;->k:Lp9/a;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/miui/antivirus/service/GuardService;->l:Landroid/view/inputmethod/InputMethodManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GuardService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/antivirus/service/GuardService;->B:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/miui/antivirus/service/GuardService$f;

    iget-object v1, p0, Lcom/miui/antivirus/service/GuardService;->B:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/miui/antivirus/service/GuardService$f;-><init>(Landroid/os/Looper;Lcom/miui/antivirus/service/GuardService;)V

    iput-object v0, p0, Lcom/miui/antivirus/service/GuardService;->C:Lcom/miui/antivirus/service/GuardService$f;

    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/miui/antivirus/service/GuardService;->D:Landroid/app/AppOpsManager;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/service/GuardService;->E:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/miui/antivirus/service/GuardService;->n:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Lcom/miui/antivirus/service/GuardService;->M()V

    invoke-static {}, Lw2/b;->b()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService;->B:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService;->m:Lcom/miui/antivirus/service/GuardService$h;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lw2/b;->i()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_register_foreground_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService;->C:Lcom/miui/antivirus/service/GuardService$f;

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_unregister_foreground_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService;->C:Lcom/miui/antivirus/service/GuardService$f;

    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_pay_safe_dialog_click_ignore"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/antivirus/service/GuardService;->a:J

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_unshelf_warning_dialog_click_ignore"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "curPackageName"

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const-string v2, "isCurTarget"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v0, "prePackageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "preClassName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "curClassName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/miui/antivirus/service/GuardService;->H(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "action_anti_fraud_auto_scan_apps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o;->E()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lw2/b;->d(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "action_anti_fraud_auto_scan_single_app"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lw2/b;->e(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
