.class Lde/i$d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/i;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lde/i;


# direct methods
.method constructor <init>(Lde/i;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lde/i$d;->a:Lde/i;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "PowerNoticeUI"

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    const/4 v3, 0x4

    if-eq v0, v1, :cond_3

    if-eq v0, v3, :cond_2

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_7

    :try_start_0
    invoke-static {}, Lme/d;->h()Lme/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lme/d;->e(Landroid/content/Intent;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "getBatteryChargeTimeNew error\uff1a"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lde/i$d;->a:Lde/i;

    invoke-static {v0}, Lde/i;->d(Lde/i;)V

    goto :goto_1

    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Ringtone;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lde/i$d;->a:Lde/i;

    invoke-static {v0}, Lde/i;->a(Lde/i;)I

    move-result v1

    if-ne v1, v3, :cond_4

    invoke-static {}, Lde/i;->b()Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-static {}, Lde/i;->c()Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lde/i$d;->a:Lde/i;

    invoke-static {}, Lde/i;->z()Ljava/io/File;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lde/i;->A(Lde/i;Landroid/net/Uri;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lde/i$d;->a:Lde/i;

    invoke-static {v0}, Lde/i;->y(Lde/i;)V

    :cond_7
    :goto_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d1

    if-lt v0, v1, :cond_8

    :try_start_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lde/i$d;->a:Lde/i;

    invoke-static {v0}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpd/c;->t(Landroid/content/Context;)Lpd/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpd/c;->r(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    const-string v0, "CONTINUITY_CHANNEL error:"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_2
    return-void
.end method
