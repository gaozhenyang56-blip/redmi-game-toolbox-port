.class Lcom/miui/gamebooster/service/VideoToolBoxService$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/VideoToolBoxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/VideoToolBoxService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/VideoToolBoxService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$b;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$b;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->s(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "gb.action.update_video_list"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$b;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->s(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_1
    const-string p2, "vtb_action_monitor_activity"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$b;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->s(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x8

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
