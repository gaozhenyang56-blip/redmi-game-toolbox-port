.class Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$a;->a:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$a;->a:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    invoke-static {p2}, Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->d(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;)Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$a;->a:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    invoke-static {p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->e(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    iget-object p2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$a;->a:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    invoke-static {p2}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->e(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "GameBoxVisionEnhanceUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected fail : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$a;->a:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    invoke-static {p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->e(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_3
    iget-object p2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$a;->a:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    invoke-static {p2}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->e(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    :goto_0
    return-void

    :catchall_2
    move-exception p2

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p2

    :goto_1
    iget-object p2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$a;->a:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    invoke-static {p2}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->e(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_4
    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$a;->a:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    invoke-static {v0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->e(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p1

    :catchall_3
    move-exception p1

    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "GameBoxVisionEnhanceUtils"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
