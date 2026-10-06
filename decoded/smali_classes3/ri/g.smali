.class Lri/g;
.super Lzi/h$a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lri/b;


# direct methods
.method constructor <init>(Lri/b;)V
    .locals 0

    iput-object p1, p0, Lri/g;->a:Lri/b;

    invoke-direct {p0}, Lzi/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "100889"

    return-object v0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lri/g;->a:Lri/b;

    invoke-static {v0}, Lri/b;->r(Lri/b;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lri/g;->a:Lri/b;

    invoke-static {v0}, Lri/b;->c(Lri/b;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lri/h;

    invoke-direct {v1, p0}, Lri/h;-><init>(Lri/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
