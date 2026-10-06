.class Lcom/miui/gamebooster/service/VideoToolBoxService$d;
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

    iput-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$d;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$d;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/u;->i()Z

    move-result v0

    const-string v1, "VideoToolBoxService"

    if-nez v0, :cond_4

    invoke-static {p1}, La8/z;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$d;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {p2}, Lcom/miui/gamebooster/service/VideoToolBoxService;->q(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$d;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->s(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p2, v0}, La7/o;->e(Landroid/content/Context;Landroid/os/Handler;)La7/o;

    move-result-object p2

    invoke-virtual {p2}, La7/o;->g()V

    invoke-static {p1}, La8/t1;->c(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lx4/a0;->A(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$d;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->q(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$d;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {p2}, Lcom/miui/gamebooster/service/VideoToolBoxService;->s(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p1, p2}, La7/o;->e(Landroid/content/Context;Landroid/os/Handler;)La7/o;

    move-result-object p1

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "android.intent.action.USER_PRESENT"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$d;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->s(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$d;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->q(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$d;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {p2}, Lcom/miui/gamebooster/service/VideoToolBoxService;->s(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p1, p2}, La7/o;->e(Landroid/content/Context;Landroid/os/Handler;)La7/o;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, La7/o;->f(Z)V

    goto :goto_1

    :cond_3
    const-string p1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    :goto_1
    return-void

    :cond_4
    :goto_2
    const-string p1, "receive when folded"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
