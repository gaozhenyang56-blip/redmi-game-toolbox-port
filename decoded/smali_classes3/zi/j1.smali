.class Lzi/j1;
.super Lzi/h$a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lzi/h1;


# direct methods
.method constructor <init>(Lzi/h1;)V
    .locals 0

    iput-object p1, p0, Lzi/j1;->a:Lzi/h1;

    invoke-direct {p0}, Lzi/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "10054"

    return-object v0
.end method

.method public run()V
    .locals 4

    const-string v0, "exec== DbSizeControlJob"

    invoke-static {v0}, Lpi/c;->B(Ljava/lang/String;)V

    new-instance v0, Lzi/m1;

    iget-object v1, p0, Lzi/j1;->a:Lzi/h1;

    invoke-static {v1}, Lzi/h1;->c(Lzi/h1;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lzi/j1;->a:Lzi/h1;

    invoke-static {v3}, Lzi/h1;->a(Lzi/h1;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lzi/m1;-><init>(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    iget-object v1, p0, Lzi/j1;->a:Lzi/h1;

    invoke-static {v1}, Lzi/h1;->a(Lzi/h1;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lzi/s1;->c(Landroid/content/Context;)Lzi/s1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzi/s1;->d(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lzi/j1;->a:Lzi/h1;

    const-string v1, "check_time"

    invoke-static {v0, v1}, Lzi/h1;->h(Lzi/h1;Ljava/lang/String;)V

    return-void
.end method
