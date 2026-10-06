.class Lcom/miui/gamebooster/service/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/w;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/w;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/w$a;->a:Lcom/miui/gamebooster/service/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "GameBoosterService"

    :try_start_0
    invoke-static {p2}, Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "support gpu "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;->checkSupportGpuTuner()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;->checkSupportUgd()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;->checkSupportGpuTuner()Z

    move-result v0

    invoke-static {v0}, La8/a1;->g(Z)V

    invoke-interface {p2}, Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;->checkSupportUgd()Z

    move-result v0

    invoke-static {v0}, La8/a1;->h(Z)V

    invoke-interface {p2}, Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;->getProfiles()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, La8/a1;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v2}, Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;->deleteProfile(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v1}, La8/a1;->f(Z)V

    goto :goto_3

    :cond_2
    :goto_2
    invoke-static {}, La8/a1;->b()V

    goto :goto_1

    :cond_3
    :goto_3
    iget-object p2, p0, Lcom/miui/gamebooster/service/w$a;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {p2}, Lcom/miui/gamebooster/service/w;->b(Lcom/miui/gamebooster/service/w;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/gamebooster/service/w$a;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {v0}, Lcom/miui/gamebooster/service/w;->a(Lcom/miui/gamebooster/service/w;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string p2, "gpu conncect successed"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gpu conncect exception \uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "GameBoosterService"

    const-string v0, "gpu conncect failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
