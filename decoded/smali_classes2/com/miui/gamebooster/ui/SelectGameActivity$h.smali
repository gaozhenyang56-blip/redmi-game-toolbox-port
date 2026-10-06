.class Lcom/miui/gamebooster/ui/SelectGameActivity$h;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/SelectGameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation

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
            "Lcom/miui/gamebooster/ui/SelectGameActivity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Lcom/miui/gamebooster/model/d;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/ui/SelectGameActivity;ZLcom/miui/gamebooster/model/d;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$h;->a:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$h;->b:Z

    iput-object p3, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$h;->c:Lcom/miui/gamebooster/model/d;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/ui/SelectGameActivity;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$h;->c:Lcom/miui/gamebooster/model/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$h;->c:Lcom/miui/gamebooster/model/d;

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Lcom/miui/gamebooster/ui/SelectGameActivity;->q0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-boolean v4, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$h;->b:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/miui/gamebooster/ui/SelectGameActivity;->r0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v0, v2, v5}, La8/j0;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/miui/gamebooster/ui/SelectGameActivity;->r0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2, v5, v5}, La8/j0;->b(Landroid/content/Context;Ljava/lang/String;IZI)V

    const-string v1, "already_added_game"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v0, v2}, La8/p1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_0
    iget-boolean v1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$h;->b:Z

    if-nez v1, :cond_2

    const/4 v5, 0x1

    :cond_2
    invoke-static {v0, v5}, La8/j0;->u(Ljava/lang/String;Z)V

    invoke-static {}, Lw7/a;->a()Lw7/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$h;->c:Lcom/miui/gamebooster/model/d;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$h;->b:Z

    invoke-virtual {v0, v1, v2}, Lw7/a;->c(Landroid/content/pm/ApplicationInfo;Z)V

    invoke-static {p1}, Lw6/i;->o(Landroid/content/Context;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/ui/SelectGameActivity;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/miui/gamebooster/ui/SelectGameActivity;->s0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/miui/gamebooster/ui/SelectGameActivity;->s0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {p1}, Lcom/miui/gamebooster/ui/SelectGameActivity;->q0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lcom/miui/gamebooster/ui/SelectGameActivity;->f0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :try_start_1
    invoke-static {p1}, Lcom/miui/gamebooster/ui/SelectGameActivity;->f0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v1

    invoke-static {p1}, Lcom/miui/gamebooster/ui/SelectGameActivity;->r0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/miui/gamebooster/service/IGameBooster;->Z1(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {}, Lcom/miui/gamebooster/ui/SelectGameActivity;->h0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/SelectGameActivity$h;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/SelectGameActivity$h;->b(Ljava/lang/Boolean;)V

    return-void
.end method
