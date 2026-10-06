.class public La2/e;
.super La2/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/miui/ai/service/OperationListCollectService;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, La2/a;-><init>(Lcom/miui/ai/service/OperationListCollectService;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    const-string v0, "screen_paper_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected b()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, La2/a;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_paper_mode_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0

    :catch_0
    const-string v1, "sc_auto_task"

    const-string v2, "SettingNotFoundException"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onChange(Z)V
    .locals 0

    invoke-virtual {p0}, La2/e;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ly3/a;->k()Ly3/a;

    move-result-object p1

    invoke-virtual {p1}, Ly3/a;->u()V

    :cond_0
    return-void
.end method
