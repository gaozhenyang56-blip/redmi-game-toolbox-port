.class public Lym/z$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lym/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lym/x;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field b:Lym/v;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field c:I

.field d:Ljava/lang/String;

.field e:Lym/p;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field f:Lym/q$a;

.field g:Lym/a0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field h:Lym/z;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field i:Lym/z;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field j:Lym/z;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field k:J

.field l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lym/z$a;->c:I

    new-instance v0, Lym/q$a;

    invoke-direct {v0}, Lym/q$a;-><init>()V

    iput-object v0, p0, Lym/z$a;->f:Lym/q$a;

    return-void
.end method

.method constructor <init>(Lym/z;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lym/z$a;->c:I

    iget-object v0, p1, Lym/z;->a:Lym/x;

    iput-object v0, p0, Lym/z$a;->a:Lym/x;

    iget-object v0, p1, Lym/z;->b:Lym/v;

    iput-object v0, p0, Lym/z$a;->b:Lym/v;

    iget v0, p1, Lym/z;->c:I

    iput v0, p0, Lym/z$a;->c:I

    iget-object v0, p1, Lym/z;->d:Ljava/lang/String;

    iput-object v0, p0, Lym/z$a;->d:Ljava/lang/String;

    iget-object v0, p1, Lym/z;->e:Lym/p;

    iput-object v0, p0, Lym/z$a;->e:Lym/p;

    iget-object v0, p1, Lym/z;->f:Lym/q;

    invoke-virtual {v0}, Lym/q;->f()Lym/q$a;

    move-result-object v0

    iput-object v0, p0, Lym/z$a;->f:Lym/q$a;

    iget-object v0, p1, Lym/z;->g:Lym/a0;

    iput-object v0, p0, Lym/z$a;->g:Lym/a0;

    iget-object v0, p1, Lym/z;->h:Lym/z;

    iput-object v0, p0, Lym/z$a;->h:Lym/z;

    iget-object v0, p1, Lym/z;->i:Lym/z;

    iput-object v0, p0, Lym/z$a;->i:Lym/z;

    iget-object v0, p1, Lym/z;->j:Lym/z;

    iput-object v0, p0, Lym/z$a;->j:Lym/z;

    iget-wide v0, p1, Lym/z;->k:J

    iput-wide v0, p0, Lym/z$a;->k:J

    iget-wide v0, p1, Lym/z;->l:J

    iput-wide v0, p0, Lym/z$a;->l:J

    return-void
.end method

.method private e(Lym/z;)V
    .locals 1

    iget-object p1, p1, Lym/z;->g:Lym/a0;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f(Ljava/lang/String;Lym/z;)V
    .locals 1

    iget-object v0, p2, Lym/z;->g:Lym/a0;

    if-nez v0, :cond_3

    iget-object v0, p2, Lym/z;->h:Lym/z;

    if-nez v0, :cond_2

    iget-object v0, p2, Lym/z;->i:Lym/z;

    if-nez v0, :cond_1

    iget-object p2, p2, Lym/z;->j:Lym/z;

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lym/z$a;
    .locals 1

    iget-object v0, p0, Lym/z$a;->f:Lym/q$a;

    invoke-virtual {v0, p1, p2}, Lym/q$a;->a(Ljava/lang/String;Ljava/lang/String;)Lym/q$a;

    return-object p0
.end method

.method public b(Lym/a0;)Lym/z$a;
    .locals 0
    .param p1    # Lym/a0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lym/z$a;->g:Lym/a0;

    return-object p0
.end method

.method public c()Lym/z;
    .locals 3

    iget-object v0, p0, Lym/z$a;->a:Lym/x;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lym/z$a;->b:Lym/v;

    if-eqz v0, :cond_2

    iget v0, p0, Lym/z$a;->c:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lym/z$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lym/z;

    invoke-direct {v0, p0}, Lym/z;-><init>(Lym/z$a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lym/z$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Lym/z;)Lym/z$a;
    .locals 1
    .param p1    # Lym/z;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lym/z$a;->f(Ljava/lang/String;Lym/z;)V

    :cond_0
    iput-object p1, p0, Lym/z$a;->i:Lym/z;

    return-object p0
.end method

.method public g(I)Lym/z$a;
    .locals 0

    iput p1, p0, Lym/z$a;->c:I

    return-object p0
.end method

.method public h(Lym/p;)Lym/z$a;
    .locals 0
    .param p1    # Lym/p;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lym/z$a;->e:Lym/p;

    return-object p0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)Lym/z$a;
    .locals 1

    iget-object v0, p0, Lym/z$a;->f:Lym/q$a;

    invoke-virtual {v0, p1, p2}, Lym/q$a;->f(Ljava/lang/String;Ljava/lang/String;)Lym/q$a;

    return-object p0
.end method

.method public j(Lym/q;)Lym/z$a;
    .locals 0

    invoke-virtual {p1}, Lym/q;->f()Lym/q$a;

    move-result-object p1

    iput-object p1, p0, Lym/z$a;->f:Lym/q$a;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lym/z$a;
    .locals 0

    iput-object p1, p0, Lym/z$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public l(Lym/z;)Lym/z$a;
    .locals 1
    .param p1    # Lym/z;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lym/z$a;->f(Ljava/lang/String;Lym/z;)V

    :cond_0
    iput-object p1, p0, Lym/z$a;->h:Lym/z;

    return-object p0
.end method

.method public m(Lym/z;)Lym/z$a;
    .locals 0
    .param p1    # Lym/z;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lym/z$a;->e(Lym/z;)V

    :cond_0
    iput-object p1, p0, Lym/z$a;->j:Lym/z;

    return-object p0
.end method

.method public n(Lym/v;)Lym/z$a;
    .locals 0

    iput-object p1, p0, Lym/z$a;->b:Lym/v;

    return-object p0
.end method

.method public o(J)Lym/z$a;
    .locals 0

    iput-wide p1, p0, Lym/z$a;->l:J

    return-object p0
.end method

.method public p(Lym/x;)Lym/z$a;
    .locals 0

    iput-object p1, p0, Lym/z$a;->a:Lym/x;

    return-object p0
.end method

.method public q(J)Lym/z$a;
    .locals 0

    iput-wide p1, p0, Lym/z$a;->k:J

    return-object p0
.end method
