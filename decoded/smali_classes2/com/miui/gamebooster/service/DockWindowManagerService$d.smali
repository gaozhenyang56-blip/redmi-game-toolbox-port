.class Lcom/miui/gamebooster/service/DockWindowManagerService$d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/DockWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/DockWindowManagerService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$d;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "communicat action:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DockWindowManagerService"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.miui.COMMUNICATION_DEVICE_CHANGE"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$d;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$d;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->X(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ls8/h;

    move-result-object p2

    invoke-static {}, Lj8/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$d;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->r(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Ls8/h;->y0(Z)V

    :cond_2
    return-void
.end method
