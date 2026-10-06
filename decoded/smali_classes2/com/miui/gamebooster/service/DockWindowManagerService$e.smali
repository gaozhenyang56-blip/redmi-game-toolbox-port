.class Lcom/miui/gamebooster/service/DockWindowManagerService$e;
.super Lcom/xiaomi/migameservice/IGameServiceCallback$Stub;
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

    iput-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$e;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-direct {p0}, Lcom/xiaomi/migameservice/IGameServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public o3(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$e;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, La8/q;->m(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_toast_wonderful_moment"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "match_md5"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "match_video_count"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$e;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$e;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->s(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/miui/gamebooster/utils/a;->Q(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$e;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->t(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$e;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    iget-object p1, p1, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    const-string p2, "key_gb_record_ai"

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, La8/i2;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$e;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    iget-object p1, p1, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    const-string p2, "key_gb_record_manual"

    invoke-static {p2, p1, v0}, La8/i2;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Ll8/b;->p()V

    :cond_2
    :goto_0
    return-void
.end method
