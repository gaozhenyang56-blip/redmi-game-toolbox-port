.class public Lym/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lym/u$b;
    }
.end annotation


# static fields
.field static final B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lym/v;",
            ">;"
        }
    .end annotation
.end field

.field static final C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lym/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final A:I

.field final a:Lym/m;

.field final b:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lym/v;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lym/j;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lym/s;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lym/s;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lym/o$c;

.field final h:Ljava/net/ProxySelector;

.field final i:Lym/l;

.field final j:Lan/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final k:Ljavax/net/SocketFactory;

.field final l:Ljavax/net/ssl/SSLSocketFactory;

.field final m:Lhn/c;

.field final n:Ljavax/net/ssl/HostnameVerifier;

.field final o:Lym/f;

.field final p:Lym/b;

.field final q:Lym/b;

.field final r:Lym/i;

.field final s:Lym/n;

.field final t:Z

.field final u:Z

.field final v:Z

.field final w:I

.field final x:I

.field final y:I

.field final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Lym/v;

    sget-object v2, Lym/v;->e:Lym/v;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lym/v;->c:Lym/v;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lzm/c;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lym/u;->B:Ljava/util/List;

    new-array v0, v0, [Lym/j;

    sget-object v1, Lym/j;->h:Lym/j;

    aput-object v1, v0, v3

    sget-object v1, Lym/j;->j:Lym/j;

    aput-object v1, v0, v4

    invoke-static {v0}, Lzm/c;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lym/u;->C:Ljava/util/List;

    new-instance v0, Lym/u$a;

    invoke-direct {v0}, Lym/u$a;-><init>()V

    sput-object v0, Lzm/a;->a:Lzm/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lym/u$b;

    invoke-direct {v0}, Lym/u$b;-><init>()V

    invoke-direct {p0, v0}, Lym/u;-><init>(Lym/u$b;)V

    return-void
.end method

.method constructor <init>(Lym/u$b;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lym/u$b;->a:Lym/m;

    iput-object v0, p0, Lym/u;->a:Lym/m;

    iget-object v0, p1, Lym/u$b;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lym/u;->b:Ljava/net/Proxy;

    iget-object v0, p1, Lym/u$b;->c:Ljava/util/List;

    iput-object v0, p0, Lym/u;->c:Ljava/util/List;

    iget-object v0, p1, Lym/u$b;->d:Ljava/util/List;

    iput-object v0, p0, Lym/u;->d:Ljava/util/List;

    iget-object v1, p1, Lym/u$b;->e:Ljava/util/List;

    invoke-static {v1}, Lzm/c;->s(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lym/u;->e:Ljava/util/List;

    iget-object v1, p1, Lym/u$b;->f:Ljava/util/List;

    invoke-static {v1}, Lzm/c;->s(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lym/u;->f:Ljava/util/List;

    iget-object v1, p1, Lym/u$b;->g:Lym/o$c;

    iput-object v1, p0, Lym/u;->g:Lym/o$c;

    iget-object v1, p1, Lym/u$b;->h:Ljava/net/ProxySelector;

    iput-object v1, p0, Lym/u;->h:Ljava/net/ProxySelector;

    iget-object v1, p1, Lym/u$b;->i:Lym/l;

    iput-object v1, p0, Lym/u;->i:Lym/l;

    iget-object v1, p1, Lym/u$b;->j:Lan/d;

    iput-object v1, p0, Lym/u;->j:Lan/d;

    iget-object v1, p1, Lym/u$b;->k:Ljavax/net/SocketFactory;

    iput-object v1, p0, Lym/u;->k:Ljavax/net/SocketFactory;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lym/j;

    if-nez v2, :cond_1

    invoke-virtual {v3}, Lym/j;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lym/u$b;->l:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lzm/c;->B()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-static {v0}, Lym/u;->r(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lym/u;->l:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Lhn/c;->b(Ljavax/net/ssl/X509TrustManager;)Lhn/c;

    move-result-object v0

    goto :goto_2

    :cond_4
    :goto_1
    iput-object v0, p0, Lym/u;->l:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Lym/u$b;->m:Lhn/c;

    :goto_2
    iput-object v0, p0, Lym/u;->m:Lhn/c;

    iget-object v0, p0, Lym/u;->l:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_5

    invoke-static {}, Lfn/f;->j()Lfn/f;

    move-result-object v0

    iget-object v1, p0, Lym/u;->l:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Lfn/f;->f(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_5
    iget-object v0, p1, Lym/u$b;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lym/u;->n:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Lym/u$b;->o:Lym/f;

    iget-object v1, p0, Lym/u;->m:Lhn/c;

    invoke-virtual {v0, v1}, Lym/f;->f(Lhn/c;)Lym/f;

    move-result-object v0

    iput-object v0, p0, Lym/u;->o:Lym/f;

    iget-object v0, p1, Lym/u$b;->p:Lym/b;

    iput-object v0, p0, Lym/u;->p:Lym/b;

    iget-object v0, p1, Lym/u$b;->q:Lym/b;

    iput-object v0, p0, Lym/u;->q:Lym/b;

    iget-object v0, p1, Lym/u$b;->r:Lym/i;

    iput-object v0, p0, Lym/u;->r:Lym/i;

    iget-object v0, p1, Lym/u$b;->s:Lym/n;

    iput-object v0, p0, Lym/u;->s:Lym/n;

    iget-boolean v0, p1, Lym/u$b;->t:Z

    iput-boolean v0, p0, Lym/u;->t:Z

    iget-boolean v0, p1, Lym/u$b;->u:Z

    iput-boolean v0, p0, Lym/u;->u:Z

    iget-boolean v0, p1, Lym/u$b;->v:Z

    iput-boolean v0, p0, Lym/u;->v:Z

    iget v0, p1, Lym/u$b;->w:I

    iput v0, p0, Lym/u;->w:I

    iget v0, p1, Lym/u$b;->x:I

    iput v0, p0, Lym/u;->x:I

    iget v0, p1, Lym/u$b;->y:I

    iput v0, p0, Lym/u;->y:I

    iget v0, p1, Lym/u$b;->z:I

    iput v0, p0, Lym/u;->z:I

    iget p1, p1, Lym/u$b;->A:I

    iput p1, p0, Lym/u;->A:I

    iget-object p1, p0, Lym/u;->e:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lym/u;->f:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null network interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lym/u;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lym/u;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static r(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    :try_start_0
    invoke-static {}, Lfn/f;->j()Lfn/f;

    move-result-object v0

    invoke-virtual {v0}, Lfn/f;->k()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1, p0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "No System TLS"

    invoke-static {v0, p0}, Lzm/c;->b(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public A()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lym/u;->l:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public B()I
    .locals 1

    iget v0, p0, Lym/u;->z:I

    return v0
.end method

.method public a()Lym/b;
    .locals 1

    iget-object v0, p0, Lym/u;->q:Lym/b;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lym/u;->w:I

    return v0
.end method

.method public c()Lym/f;
    .locals 1

    iget-object v0, p0, Lym/u;->o:Lym/f;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lym/u;->x:I

    return v0
.end method

.method public e()Lym/i;
    .locals 1

    iget-object v0, p0, Lym/u;->r:Lym/i;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lym/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lym/u;->d:Ljava/util/List;

    return-object v0
.end method

.method public g()Lym/l;
    .locals 1

    iget-object v0, p0, Lym/u;->i:Lym/l;

    return-object v0
.end method

.method public h()Lym/m;
    .locals 1

    iget-object v0, p0, Lym/u;->a:Lym/m;

    return-object v0
.end method

.method public i()Lym/n;
    .locals 1

    iget-object v0, p0, Lym/u;->s:Lym/n;

    return-object v0
.end method

.method public j()Lym/o$c;
    .locals 1

    iget-object v0, p0, Lym/u;->g:Lym/o$c;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lym/u;->u:Z

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lym/u;->t:Z

    return v0
.end method

.method public m()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lym/u;->n:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lym/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lym/u;->e:Ljava/util/List;

    return-object v0
.end method

.method o()Lan/d;
    .locals 1

    iget-object v0, p0, Lym/u;->j:Lan/d;

    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lym/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lym/u;->f:Ljava/util/List;

    return-object v0
.end method

.method public q(Lym/x;)Lym/d;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lym/w;->g(Lym/u;Lym/x;Z)Lym/w;

    move-result-object p1

    return-object p1
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lym/u;->A:I

    return v0
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lym/v;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lym/u;->c:Ljava/util/List;

    return-object v0
.end method

.method public u()Ljava/net/Proxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lym/u;->b:Ljava/net/Proxy;

    return-object v0
.end method

.method public v()Lym/b;
    .locals 1

    iget-object v0, p0, Lym/u;->p:Lym/b;

    return-object v0
.end method

.method public w()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Lym/u;->h:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lym/u;->y:I

    return v0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lym/u;->v:Z

    return v0
.end method

.method public z()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lym/u;->k:Ljavax/net/SocketFactory;

    return-object v0
.end method
