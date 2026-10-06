.class abstract Lbl/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbl/k$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbl/k$f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lbl/k$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbl/k$e<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:Lbl/k$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbl/k$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lbl/k$e;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbl/k$e<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbl/k$b$a;

    invoke-direct {v0, p0}, Lbl/k$b$a;-><init>(Lbl/k$b;)V

    iput-object v0, p0, Lbl/k$b;->d:Ljava/lang/Object;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-lt p2, v1, :cond_1

    iput-object p1, p0, Lbl/k$b;->a:Lbl/k$e;

    iput p2, p0, Lbl/k$b;->b:I

    invoke-virtual {p1}, Lbl/k$e;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lbl/k$b;->c(Ljava/lang/Class;I)Lbl/k$c;

    move-result-object p2

    iput-object p2, p0, Lbl/k$b;->c:Lbl/k$c;

    invoke-virtual {p0, p1}, Lbl/k$b;->f(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "manager create instance cannot return null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lbl/k$b;->b:I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "manager cannot be null and size cannot less then 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lbl/k$b;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public acquire()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lbl/k$b;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lbl/k$b;->c:Lbl/k$c;

    if-eqz v0, :cond_0

    iget v1, p0, Lbl/k$b;->b:I

    invoke-virtual {p0, v0, v1}, Lbl/k$b;->d(Lbl/k$c;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lbl/k$b;->c:Lbl/k$c;

    :cond_0
    return-void
.end method

.method abstract c(Ljava/lang/Class;I)Lbl/k$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lbl/k$c<",
            "TT;>;"
        }
    .end annotation
.end method

.method abstract d(Lbl/k$c;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbl/k$c<",
            "TT;>;I)V"
        }
    .end annotation
.end method

.method protected final e()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lbl/k$b;->c:Lbl/k$c;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lbl/k$c;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbl/k$b;->a:Lbl/k$e;

    invoke-virtual {v0}, Lbl/k$e;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "manager create instance cannot return null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lbl/k$b;->a:Lbl/k$e;

    invoke-virtual {v1, v0}, Lbl/k$e;->b(Ljava/lang/Object;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot acquire object after close()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final f(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lbl/k$b;->c:Lbl/k$c;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbl/k$b;->a:Lbl/k$e;

    invoke-virtual {v0, p1}, Lbl/k$e;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lbl/k$b;->c:Lbl/k$c;

    invoke-interface {v0, p1}, Lbl/k$c;->put(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbl/k$b;->a:Lbl/k$e;

    invoke-virtual {v0, p1}, Lbl/k$e;->c(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot release object after close()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
