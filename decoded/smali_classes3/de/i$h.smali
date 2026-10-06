.class Lde/i$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/i;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lde/i;


# direct methods
.method constructor <init>(Lde/i;)V
    .locals 0

    iput-object p1, p0, Lde/i$h;->a:Lde/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lde/i$h;->a:Lde/i;

    invoke-static {p1}, Lde/i;->f(Lde/i;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lde/i$n;

    iget-object p2, p0, Lde/i$h;->a:Lde/i;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lde/i$n;-><init>(Lde/i;Lde/i$c;)V

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object p1, p0, Lde/i$h;->a:Lde/i;

    invoke-static {p1, v0}, Lde/i;->g(Lde/i;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lde/i$h;->a:Lde/i;

    invoke-static {p1}, Lde/i;->w(Lde/i;)Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, "5percent_dialog"

    invoke-static {p1, v0, p2}, Lde/j;->L(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
