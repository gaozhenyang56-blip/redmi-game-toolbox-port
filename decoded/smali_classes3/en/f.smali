.class public final Len/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Len/f$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lym/s$a;

.field final b:Lbn/g;

.field private final c:Len/g;

.field private d:Len/i;

.field private final e:Lym/v;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    const-string v10, ":scheme"

    const-string v11, ":authority"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzm/c;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Len/f;->f:Ljava/util/List;

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    const-string v7, "encoding"

    const-string v8, "upgrade"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzm/c;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Len/f;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lym/u;Lym/s$a;Lbn/g;Len/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Len/f;->a:Lym/s$a;

    iput-object p3, p0, Len/f;->b:Lbn/g;

    iput-object p4, p0, Len/f;->c:Len/g;

    invoke-virtual {p1}, Lym/u;->t()Ljava/util/List;

    move-result-object p1

    sget-object p2, Lym/v;->f:Lym/v;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lym/v;->e:Lym/v;

    :goto_0
    iput-object p2, p0, Len/f;->e:Lym/v;

    return-void
.end method

.method public static g(Lym/x;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lym/x;",
            ")",
            "Ljava/util/List<",
            "Len/c;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lym/x;->d()Lym/q;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lym/q;->g()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Len/c;

    sget-object v3, Len/c;->f:Lin/f;

    invoke-virtual {p0}, Lym/x;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Len/c;-><init>(Lin/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Len/c;

    sget-object v3, Len/c;->g:Lin/f;

    invoke-virtual {p0}, Lym/x;->h()Lym/r;

    move-result-object v4

    invoke-static {v4}, Lcn/i;->c(Lym/r;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Len/c;-><init>(Lin/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    invoke-virtual {p0, v2}, Lym/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Len/c;

    sget-object v4, Len/c;->i:Lin/f;

    invoke-direct {v3, v4, v2}, Len/c;-><init>(Lin/f;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v2, Len/c;

    sget-object v3, Len/c;->h:Lin/f;

    invoke-virtual {p0}, Lym/x;->h()Lym/r;

    move-result-object p0

    invoke-virtual {p0}, Lym/r;->B()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Len/c;-><init>(Lin/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    invoke-virtual {v0}, Lym/q;->g()I

    move-result v2

    :goto_0
    if-ge p0, v2, :cond_2

    invoke-virtual {v0, p0}, Lym/q;->e(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lin/f;->g(Ljava/lang/String;)Lin/f;

    move-result-object v3

    sget-object v4, Len/f;->f:Ljava/util/List;

    invoke-virtual {v3}, Lin/f;->w()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Len/c;

    invoke-virtual {v0, p0}, Lym/q;->h(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Len/c;-><init>(Lin/f;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static h(Lym/q;Lym/v;)Lym/z$a;
    .locals 7

    new-instance v0, Lym/q$a;

    invoke-direct {v0}, Lym/q$a;-><init>()V

    invoke-virtual {p0}, Lym/q;->g()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Lym/q;->e(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lym/q;->h(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":status"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP/1.1 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/k;->a(Ljava/lang/String;)Lcn/k;

    move-result-object v2

    goto :goto_1

    :cond_0
    sget-object v6, Len/f;->g:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lzm/a;->a:Lzm/a;

    invoke-virtual {v6, v0, v4, v5}, Lzm/a;->b(Lym/q$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    new-instance p0, Lym/z$a;

    invoke-direct {p0}, Lym/z$a;-><init>()V

    invoke-virtual {p0, p1}, Lym/z$a;->n(Lym/v;)Lym/z$a;

    move-result-object p0

    iget p1, v2, Lcn/k;->b:I

    invoke-virtual {p0, p1}, Lym/z$a;->g(I)Lym/z$a;

    move-result-object p0

    iget-object p1, v2, Lcn/k;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lym/z$a;->k(Ljava/lang/String;)Lym/z$a;

    move-result-object p0

    invoke-virtual {v0}, Lym/q$a;->d()Lym/q;

    move-result-object p1

    invoke-virtual {p0, p1}, Lym/z$a;->j(Lym/q;)Lym/z$a;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Expected \':status\' header not present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Lym/x;J)Lin/s;
    .locals 0

    iget-object p1, p0, Len/f;->d:Len/i;

    invoke-virtual {p1}, Len/i;->j()Lin/s;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Len/f;->d:Len/i;

    invoke-virtual {v0}, Len/i;->j()Lin/s;

    move-result-object v0

    invoke-interface {v0}, Lin/s;->close()V

    return-void
.end method

.method public c(Lym/z;)Lym/a0;
    .locals 4

    iget-object v0, p0, Len/f;->b:Lbn/g;

    iget-object v1, v0, Lbn/g;->f:Lym/o;

    iget-object v0, v0, Lbn/g;->e:Lym/d;

    invoke-virtual {v1, v0}, Lym/o;->q(Lym/d;)V

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lym/z;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcn/e;->b(Lym/z;)J

    move-result-wide v1

    new-instance p1, Len/f$a;

    iget-object v3, p0, Len/f;->d:Len/i;

    invoke-virtual {v3}, Len/i;->k()Lin/t;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Len/f$a;-><init>(Len/f;Lin/t;)V

    new-instance v3, Lcn/h;

    invoke-static {p1}, Lin/l;->b(Lin/t;)Lin/e;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lcn/h;-><init>(Ljava/lang/String;JLin/e;)V

    return-object v3
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Len/f;->d:Len/i;

    if-eqz v0, :cond_0

    sget-object v1, Len/b;->g:Len/b;

    invoke-virtual {v0, v1}, Len/i;->h(Len/b;)V

    :cond_0
    return-void
.end method

.method public d(Lym/x;)V
    .locals 3

    iget-object v0, p0, Len/f;->d:Len/i;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lym/x;->a()Lym/y;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Len/f;->g(Lym/x;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Len/f;->c:Len/g;

    invoke-virtual {v1, p1, v0}, Len/g;->s(Ljava/util/List;Z)Len/i;

    move-result-object p1

    iput-object p1, p0, Len/f;->d:Len/i;

    invoke-virtual {p1}, Len/i;->n()Lin/u;

    move-result-object p1

    iget-object v0, p0, Len/f;->a:Lym/s$a;

    invoke-interface {v0}, Lym/s$a;->a()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lin/u;->g(JLjava/util/concurrent/TimeUnit;)Lin/u;

    iget-object p1, p0, Len/f;->d:Len/i;

    invoke-virtual {p1}, Len/i;->u()Lin/u;

    move-result-object p1

    iget-object v0, p0, Len/f;->a:Lym/s$a;

    invoke-interface {v0}, Lym/s$a;->c()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1, v2}, Lin/u;->g(JLjava/util/concurrent/TimeUnit;)Lin/u;

    return-void
.end method

.method public e(Z)Lym/z$a;
    .locals 2

    iget-object v0, p0, Len/f;->d:Len/i;

    invoke-virtual {v0}, Len/i;->s()Lym/q;

    move-result-object v0

    iget-object v1, p0, Len/f;->e:Lym/v;

    invoke-static {v0, v1}, Len/f;->h(Lym/q;Lym/v;)Lym/z$a;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object p1, Lzm/a;->a:Lzm/a;

    invoke-virtual {p1, v0}, Lzm/a;->d(Lym/z$a;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Len/f;->c:Len/g;

    invoke-virtual {v0}, Len/g;->flush()V

    return-void
.end method
