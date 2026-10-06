.class Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->o(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$c;->b:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    iput-object p2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$c;->b:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    iget-object v1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->g(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$c;->b:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    invoke-static {v2}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->c(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;)Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$c;->b:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    iget-object v3, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$c;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->h(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$c;->b:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    invoke-static {v2}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->e(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$c;->b:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    invoke-static {v3}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->e(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;)Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "GameBoxVisionEnhanceUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "executeVisionEnhanceInit wait fail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_2
    const-string v2, "GameBoxVisionEnhanceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after wait : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", now service = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$c;->b:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    invoke-static {v0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->c(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;)Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$c;->b:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    invoke-static {v0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->c(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;)Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$c;->b:Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    invoke-static {v0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->i(Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;)V

    :cond_1
    return-void
.end method
