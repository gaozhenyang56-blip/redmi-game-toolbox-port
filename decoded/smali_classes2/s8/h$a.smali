.class Ls8/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls8/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ls8/h;


# direct methods
.method constructor <init>(Ls8/h;)V
    .locals 0

    iput-object p1, p0, Ls8/h$a;->a:Ls8/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ls8/h$a;->a:Ls8/h;

    invoke-static {v0}, Ls8/h;->h(Ls8/h;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ls8/h$a;->a:Ls8/h;

    invoke-static {v0}, Ls8/h;->m(Ls8/h;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ls8/h$a;->a:Ls8/h;

    invoke-static {v1}, Ls8/h;->i(Ls8/h;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ls8/h$a;->a:Ls8/h;

    invoke-static {v0}, Ls8/h;->m(Ls8/h;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ls8/h$a;->a:Ls8/h;

    invoke-static {v1}, Ls8/h;->i(Ls8/h;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "DockWindowManager"

    const-string v1, "Permission denied!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
