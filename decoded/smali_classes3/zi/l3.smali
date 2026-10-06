.class Lzi/l3;
.super Lzi/k$b;
.source "SourceFile"


# instance fields
.field a:Lzi/k$b;

.field final synthetic b:Lzi/j3;


# direct methods
.method constructor <init>(Lzi/j3;)V
    .locals 0

    iput-object p1, p0, Lzi/l3;->b:Lzi/j3;

    invoke-direct {p0}, Lzi/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, Lzi/l3;->b:Lzi/j3;

    invoke-static {v0}, Lzi/j3;->b(Lzi/j3;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzi/j3$b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lzi/j3$b;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lzi/l3;->b:Lzi/j3;

    invoke-static {v1}, Lzi/j3;->b(Lzi/j3;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lzi/l3;->a:Lzi/k$b;

    :cond_0
    iget-object v0, p0, Lzi/l3;->a:Lzi/k$b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lzi/k$b;->b()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lzi/l3;->a:Lzi/k$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzi/k$b;->c()V

    :cond_0
    return-void
.end method
