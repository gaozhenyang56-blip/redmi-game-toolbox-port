.class public Lcom/miui/powercenter/batteryhistory/y$l;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/batteryhistory/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/y;


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/batteryhistory/y;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/y$l;->a:Lcom/miui/powercenter/batteryhistory/y;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "miui.intent.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/miui/powercenter/batteryhistory/y$l$a;

    invoke-direct {p2, p0}, Lcom/miui/powercenter/batteryhistory/y$l$a;-><init>(Lcom/miui/powercenter/batteryhistory/y$l;)V

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "miui.intent.action.HIDE_MODE_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/miui/powercenter/batteryhistory/y$l$b;

    invoke-direct {p2, p0}, Lcom/miui/powercenter/batteryhistory/y$l$b;-><init>(Lcom/miui/powercenter/batteryhistory/y$l;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
