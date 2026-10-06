.class La8/h$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La8/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private a:La8/h$d;

.field private b:Z


# direct methods
.method public constructor <init>(La8/h$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La8/h$e;->a:La8/h$d;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, La8/h$e;->a:La8/h$d;

    iget-object v0, v0, La8/h$d;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, La8/h$e;->a:La8/h$d;

    iget-object v0, v0, La8/h$d;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, La8/h$e;->b:Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, La8/h$e;->a:La8/h$d;

    iget-object v2, v1, La8/h$d;->a:La8/h;

    invoke-static {v2}, La8/h;->a(La8/h;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, La8/h$e;->a:La8/h$d;

    iget v4, v3, La8/h$d;->c:I

    iget-object v3, v3, La8/h$d;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, La8/h$d;->d:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AsyncLayoutInflaterPlus"

    const-string v3, "Failed to inflate resource in the background! Retrying on the UI thread"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v1, p0, La8/h$e;->a:La8/h$d;

    iget-object v1, v1, La8/h$d;->a:La8/h;

    invoke-static {v1}, La8/h;->b(La8/h;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, La8/h$e;->a:La8/h$d;

    invoke-static {v1, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
