.class public Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;
.super Lcom/miui/autotask/taskitem/TaskItem;
.source "SourceFile"


# instance fields
.field private defineVoice:[I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field

.field private originVoice:[I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "d"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/TaskItem;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0803c4

    return v0
.end method

.method public c()I
    .locals 1

    const v0, 0x7f0803c3

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_adjust_volume_result_item"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const v0, 0x7f121a48

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const v0, 0x7f121a48

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    const v0, 0x7f0803c5

    return v0
.end method

.method public l()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->v()[I

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->v()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()V
    .locals 8

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->v()[I

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->v()[I

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->w()[I

    move-result-object v1

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-nez v1, :cond_2

    new-array v1, v2, [I

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    aput v7, v1, v6

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    aput v7, v1, v4

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    aput v7, v1, v5

    invoke-virtual {p0, v1}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->y([I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->w()[I

    move-result-object v1

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    aput v7, v1, v6

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->w()[I

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    aput v7, v1, v4

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->w()[I

    move-result-object v1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    aput v7, v1, v5

    :goto_0
    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->v()[I

    move-result-object v1

    aget v1, v1, v6

    invoke-virtual {v0, v5, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->v()[I

    move-result-object v1

    aget v1, v1, v4

    invoke-virtual {v0, v3, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->v()[I

    move-result-object v1

    aget v1, v1, v5

    invoke-virtual {v0, v2, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_3
    :goto_1
    return-void
.end method

.method public o()V
    .locals 7

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->w()[I

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->w()[I

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->w()[I

    move-result-object v1

    const/4 v3, 0x0

    aget v1, v1, v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->w()[I

    move-result-object v5

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v0, v1, v5, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->w()[I

    move-result-object v1

    aget v1, v1, v4

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_2
    :goto_0
    return-void
.end method

.method public v()[I
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->defineVoice:[I

    return-object v0
.end method

.method public w()[I
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->originVoice:[I

    return-object v0
.end method

.method public x([I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->defineVoice:[I

    return-void
.end method

.method public y([I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;->originVoice:[I

    return-void
.end method
