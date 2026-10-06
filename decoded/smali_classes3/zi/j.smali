.class Lzi/j;
.super Lzi/h$b;
.source "SourceFile"


# instance fields
.field final synthetic b:Lzi/h;


# direct methods
.method constructor <init>(Lzi/h;Lzi/h$a;)V
    .locals 0

    iput-object p1, p0, Lzi/j;->b:Lzi/h;

    invoke-direct {p0, p2}, Lzi/h$b;-><init>(Lzi/h$a;)V

    return-void
.end method


# virtual methods
.method b()V
    .locals 3

    iget-object v0, p0, Lzi/j;->b:Lzi/h;

    invoke-static {v0}, Lzi/h;->b(Lzi/h;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lzi/j;->b:Lzi/h;

    invoke-static {v1}, Lzi/h;->d(Lzi/h;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lzi/h$b;->a:Lzi/h$a;

    invoke-virtual {v2}, Lzi/h$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
