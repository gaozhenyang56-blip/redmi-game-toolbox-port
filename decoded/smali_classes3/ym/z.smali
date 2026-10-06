.class public final Lym/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lym/z$a;
    }
.end annotation


# instance fields
.field final a:Lym/x;

.field final b:Lym/v;

.field final c:I

.field final d:Ljava/lang/String;

.field final e:Lym/p;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final f:Lym/q;

.field final g:Lym/a0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final h:Lym/z;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final i:Lym/z;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final j:Lym/z;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final k:J

.field final l:J

.field private volatile m:Lym/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lym/z$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lym/z$a;->a:Lym/x;

    iput-object v0, p0, Lym/z;->a:Lym/x;

    iget-object v0, p1, Lym/z$a;->b:Lym/v;

    iput-object v0, p0, Lym/z;->b:Lym/v;

    iget v0, p1, Lym/z$a;->c:I

    iput v0, p0, Lym/z;->c:I

    iget-object v0, p1, Lym/z$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lym/z;->d:Ljava/lang/String;

    iget-object v0, p1, Lym/z$a;->e:Lym/p;

    iput-object v0, p0, Lym/z;->e:Lym/p;

    iget-object v0, p1, Lym/z$a;->f:Lym/q$a;

    invoke-virtual {v0}, Lym/q$a;->d()Lym/q;

    move-result-object v0

    iput-object v0, p0, Lym/z;->f:Lym/q;

    iget-object v0, p1, Lym/z$a;->g:Lym/a0;

    iput-object v0, p0, Lym/z;->g:Lym/a0;

    iget-object v0, p1, Lym/z$a;->h:Lym/z;

    iput-object v0, p0, Lym/z;->h:Lym/z;

    iget-object v0, p1, Lym/z$a;->i:Lym/z;

    iput-object v0, p0, Lym/z;->i:Lym/z;

    iget-object v0, p1, Lym/z$a;->j:Lym/z;

    iput-object v0, p0, Lym/z;->j:Lym/z;

    iget-wide v0, p1, Lym/z$a;->k:J

    iput-wide v0, p0, Lym/z;->k:J

    iget-wide v0, p1, Lym/z$a;->l:J

    iput-wide v0, p0, Lym/z;->l:J

    return-void
.end method


# virtual methods
.method public c()Lym/a0;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lym/z;->g:Lym/a0;

    return-object v0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lym/z;->g:Lym/a0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lym/a0;->close()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Lym/c;
    .locals 1

    iget-object v0, p0, Lym/z;->m:Lym/c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lym/z;->f:Lym/q;

    invoke-static {v0}, Lym/c;->k(Lym/q;)Lym/c;

    move-result-object v0

    iput-object v0, p0, Lym/z;->m:Lym/c;

    :goto_0
    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lym/z;->c:I

    return v0
.end method

.method public f()Lym/p;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lym/z;->e:Lym/p;

    return-object v0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lym/z;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lym/z;->f:Lym/q;

    invoke-virtual {v0, p1}, Lym/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public l()Lym/q;
    .locals 1

    iget-object v0, p0, Lym/z;->f:Lym/q;

    return-object v0
.end method

.method public n()Lym/z$a;
    .locals 1

    new-instance v0, Lym/z$a;

    invoke-direct {v0, p0}, Lym/z$a;-><init>(Lym/z;)V

    return-object v0
.end method

.method public o()Lym/z;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lym/z;->j:Lym/z;

    return-object v0
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Lym/z;->l:J

    return-wide v0
.end method

.method public s()Lym/x;
    .locals 1

    iget-object v0, p0, Lym/z;->a:Lym/x;

    return-object v0
.end method

.method public t()J
    .locals 2

    iget-wide v0, p0, Lym/z;->k:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lym/z;->b:Lym/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lym/z;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lym/z;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lym/z;->a:Lym/x;

    invoke-virtual {v1}, Lym/x;->h()Lym/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
