.class Len/g$f;
.super Lzm/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Len/g;->F(ILen/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Len/b;

.field final synthetic d:Len/g;


# direct methods
.method varargs constructor <init>(Len/g;Ljava/lang/String;[Ljava/lang/Object;ILen/b;)V
    .locals 0

    iput-object p1, p0, Len/g$f;->d:Len/g;

    iput p4, p0, Len/g$f;->b:I

    iput-object p5, p0, Len/g$f;->c:Len/b;

    invoke-direct {p0, p2, p3}, Lzm/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public k()V
    .locals 3

    iget-object v0, p0, Len/g$f;->d:Len/g;

    iget-object v0, v0, Len/g;->j:Len/l;

    iget v1, p0, Len/g$f;->b:I

    iget-object v2, p0, Len/g$f;->c:Len/b;

    invoke-interface {v0, v1, v2}, Len/l;->a(ILen/b;)V

    iget-object v0, p0, Len/g$f;->d:Len/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Len/g$f;->d:Len/g;

    iget-object v1, v1, Len/g;->t:Ljava/util/Set;

    iget v2, p0, Len/g$f;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
