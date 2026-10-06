.class public Lcom/miui/powercenter/batteryhistory/d0$q;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/batteryhistory/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "q"
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field final synthetic c:Lcom/miui/powercenter/batteryhistory/d0;


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/batteryhistory/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/miui/powercenter/batteryhistory/d0$q;)I
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/batteryhistory/d0$q;->a:I

    return p0
.end method

.method static synthetic b(Lcom/miui/powercenter/batteryhistory/d0$q;I)I
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/d0$q;->a:I

    return p1
.end method

.method static synthetic c(Lcom/miui/powercenter/batteryhistory/d0$q;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/powercenter/batteryhistory/d0$q;->b:Z

    return p0
.end method

.method static synthetic d(Lcom/miui/powercenter/batteryhistory/d0$q;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/d0$q;->b:Z

    return p1
.end method


# virtual methods
.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/d0$q;->b:Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/powercenter/batteryhistory/d0$q$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/powercenter/batteryhistory/d0$q$a;-><init>(Lcom/miui/powercenter/batteryhistory/d0$q;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "miui.intent.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/miui/powercenter/batteryhistory/d0$q$b;

    invoke-direct {p2, p0}, Lcom/miui/powercenter/batteryhistory/d0$q$b;-><init>(Lcom/miui/powercenter/batteryhistory/d0$q;)V

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "miui.intent.action.HIDE_MODE_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/miui/powercenter/batteryhistory/d0$q$c;

    invoke-direct {p2, p0}, Lcom/miui/powercenter/batteryhistory/d0$q$c;-><init>(Lcom/miui/powercenter/batteryhistory/d0$q;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "miui.intent.action.ACTION_QUICK_CHARGE_TYPE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "miui.intent.action.ACTION_WIRELESS_TX_TYPE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    new-instance p1, Lcom/miui/powercenter/batteryhistory/d0$p;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/d0;->g(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerSaveMainFragment;

    move-result-object v1

    invoke-static {p2}, Lme/w;->M(Landroid/content/Intent;)Z

    move-result v2

    iget v3, p0, Lcom/miui/powercenter/batteryhistory/d0$q;->a:I

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/powercenter/batteryhistory/d0$p;-><init>(Lcom/miui/powercenter/PowerSaveMainFragment;ZILcom/miui/powercenter/batteryhistory/d0;Lcom/miui/powercenter/batteryhistory/d0$g;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    :goto_1
    return-void
.end method
