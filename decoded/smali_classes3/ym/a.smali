.class public final Lym/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lym/r;

.field final b:Lym/n;

.field final c:Ljavax/net/SocketFactory;

.field final d:Lym/b;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lym/v;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lym/j;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/net/ProxySelector;

.field final h:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final i:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final j:Ljavax/net/ssl/HostnameVerifier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final k:Lym/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILym/n;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lym/f;Lym/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 2
    .param p5    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljavax/net/ssl/HostnameVerifier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lym/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lym/n;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lym/f;",
            "Lym/b;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Lym/v;",
            ">;",
            "Ljava/util/List<",
            "Lym/j;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lym/r$a;

    invoke-direct {v0}, Lym/r$a;-><init>()V

    if-eqz p5, :cond_0

    const-string v1, "https"

    goto :goto_0

    :cond_0
    const-string v1, "http"

    :goto_0
    invoke-virtual {v0, v1}, Lym/r$a;->q(Ljava/lang/String;)Lym/r$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lym/r$a;->e(Ljava/lang/String;)Lym/r$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lym/r$a;->l(I)Lym/r$a;

    move-result-object p1

    invoke-virtual {p1}, Lym/r$a;->a()Lym/r;

    move-result-object p1

    iput-object p1, p0, Lym/a;->a:Lym/r;

    if-eqz p3, :cond_6

    iput-object p3, p0, Lym/a;->b:Lym/n;

    if-eqz p4, :cond_5

    iput-object p4, p0, Lym/a;->c:Ljavax/net/SocketFactory;

    if-eqz p8, :cond_4

    iput-object p8, p0, Lym/a;->d:Lym/b;

    if-eqz p10, :cond_3

    invoke-static {p10}, Lzm/c;->s(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lym/a;->e:Ljava/util/List;

    if-eqz p11, :cond_2

    invoke-static {p11}, Lzm/c;->s(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lym/a;->f:Ljava/util/List;

    if-eqz p12, :cond_1

    iput-object p12, p0, Lym/a;->g:Ljava/net/ProxySelector;

    iput-object p9, p0, Lym/a;->h:Ljava/net/Proxy;

    iput-object p5, p0, Lym/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p6, p0, Lym/a;->j:Ljavax/net/ssl/HostnameVerifier;

    iput-object p7, p0, Lym/a;->k:Lym/f;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxySelector == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connectionSpecs == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "protocols == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxyAuthenticator == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "socketFactory == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "dns == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lym/f;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lym/a;->k:Lym/f;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lym/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lym/a;->f:Ljava/util/List;

    return-object v0
.end method

.method public c()Lym/n;
    .locals 1

    iget-object v0, p0, Lym/a;->b:Lym/n;

    return-object v0
.end method

.method d(Lym/a;)Z
    .locals 2

    iget-object v0, p0, Lym/a;->b:Lym/n;

    iget-object v1, p1, Lym/a;->b:Lym/n;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lym/a;->d:Lym/b;

    iget-object v1, p1, Lym/a;->d:Lym/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lym/a;->e:Ljava/util/List;

    iget-object v1, p1, Lym/a;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lym/a;->f:Ljava/util/List;

    iget-object v1, p1, Lym/a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lym/a;->g:Ljava/net/ProxySelector;

    iget-object v1, p1, Lym/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lym/a;->h:Ljava/net/Proxy;

    iget-object v1, p1, Lym/a;->h:Ljava/net/Proxy;

    invoke-static {v0, v1}, Lzm/c;->p(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lym/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Lym/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v1}, Lzm/c;->p(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lym/a;->j:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Lym/a;->j:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v1}, Lzm/c;->p(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lym/a;->k:Lym/f;

    iget-object v1, p1, Lym/a;->k:Lym/f;

    invoke-static {v0, v1}, Lzm/c;->p(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lym/a;->l()Lym/r;

    move-result-object v0

    invoke-virtual {v0}, Lym/r;->w()I

    move-result v0

    invoke-virtual {p1}, Lym/a;->l()Lym/r;

    move-result-object p1

    invoke-virtual {p1}, Lym/r;->w()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()Ljavax/net/ssl/HostnameVerifier;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lym/a;->j:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lym/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lym/a;->a:Lym/r;

    check-cast p1, Lym/a;

    iget-object v1, p1, Lym/a;->a:Lym/r;

    invoke-virtual {v0, v1}, Lym/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lym/a;->d(Lym/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lym/v;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lym/a;->e:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/net/Proxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lym/a;->h:Ljava/net/Proxy;

    return-object v0
.end method

.method public h()Lym/b;
    .locals 1

    iget-object v0, p0, Lym/a;->d:Lym/b;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lym/a;->a:Lym/r;

    invoke-virtual {v0}, Lym/r;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lym/a;->b:Lym/n;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lym/a;->d:Lym/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lym/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lym/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lym/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lym/a;->h:Ljava/net/Proxy;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lym/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lym/a;->j:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lym/a;->k:Lym/f;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lym/f;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v1, v2

    return v1
.end method

.method public i()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Lym/a;->g:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public j()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lym/a;->c:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public k()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lym/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public l()Lym/r;
    .locals 1

    iget-object v0, p0, Lym/a;->a:Lym/r;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lym/a;->a:Lym/r;

    invoke-virtual {v1}, Lym/r;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lym/a;->a:Lym/r;

    invoke-virtual {v1}, Lym/r;->w()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lym/a;->h:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lym/a;->h:Ljava/net/Proxy;

    goto :goto_0

    :cond_0
    const-string v1, ", proxySelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lym/a;->g:Ljava/net/ProxySelector;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
