.class public Lw8/f;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lw8/f;->a:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lw8/f;->b:Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    iget-object p1, p0, Lw8/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ls7/a;->b()Ls7/a;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean v2, p0, Lw8/f;->b:Z

    invoke-virtual {v0, v1, p1, v2}, Ls7/a;->g(Ljava/util/Map;Landroid/content/Context;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lw8/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    if-eqz p1, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->w:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->w:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-boolean v1, p0, Lw8/f;->b:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->o:Z

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Ls7/a;->b()Ls7/a;

    move-result-object p1

    const-wide/16 v1, -0x1

    const-string v3, "key_gamebooster_red_point_press_day"

    invoke-static {v3, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v3

    invoke-virtual {p1}, Ls7/a;->a()Z

    move-result v5

    const-string v6, ""

    const v7, 0x7f080728

    if-eqz v5, :cond_4

    iget-boolean v1, p0, Lw8/f;->b:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/miui/networkassistant/utils/DateUtil;->getDateFormat(I)Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_gamebooster_signed_day"

    invoke-static {v2, v1}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Ls7/a;->c()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10003e

    invoke-virtual {p1}, Ls7/a;->c()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ls7/a;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_4
    cmp-long p1, v3, v1

    if-nez p1, :cond_6

    :cond_5
    :goto_0
    invoke-virtual {v0, v7, v6}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->Q(ILjava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->G()V

    :goto_1
    iget-boolean p1, p0, Lw8/f;->b:Z

    if-eqz p1, :cond_8

    iget-object p1, v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->d:Lw8/j;

    invoke-virtual {p1}, Lw8/j;->f()V

    goto :goto_2

    :cond_7
    iget-boolean p1, p0, Lw8/f;->b:Z

    if-eqz p1, :cond_8

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->t0()V

    :cond_8
    :goto_2
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lw8/f;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lw8/f;->b(Ljava/lang/Boolean;)V

    return-void
.end method
