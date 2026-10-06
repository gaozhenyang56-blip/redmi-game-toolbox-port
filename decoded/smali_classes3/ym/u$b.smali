.class public final Lym/u$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lym/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field A:I

.field a:Lym/m;

.field b:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lym/v;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
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

.field g:Lym/o$c;

.field h:Ljava/net/ProxySelector;

.field i:Lym/l;

.field j:Lan/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field k:Ljavax/net/SocketFactory;

.field l:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field m:Lhn/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field n:Ljavax/net/ssl/HostnameVerifier;

.field o:Lym/f;

.field p:Lym/b;

.field q:Lym/b;

.field r:Lym/i;

.field s:Lym/n;

.field t:Z

.field u:Z

.field v:Z

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lym/u$b;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lym/u$b;->f:Ljava/util/List;

    new-instance v0, Lym/m;

    invoke-direct {v0}, Lym/m;-><init>()V

    iput-object v0, p0, Lym/u$b;->a:Lym/m;

    sget-object v0, Lym/u;->B:Ljava/util/List;

    iput-object v0, p0, Lym/u$b;->c:Ljava/util/List;

    sget-object v0, Lym/u;->C:Ljava/util/List;

    iput-object v0, p0, Lym/u$b;->d:Ljava/util/List;

    sget-object v0, Lym/o;->a:Lym/o;

    invoke-static {v0}, Lym/o;->k(Lym/o;)Lym/o$c;

    move-result-object v0

    iput-object v0, p0, Lym/u$b;->g:Lym/o$c;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lym/u$b;->h:Ljava/net/ProxySelector;

    if-nez v0, :cond_0

    new-instance v0, Lgn/a;

    invoke-direct {v0}, Lgn/a;-><init>()V

    iput-object v0, p0, Lym/u$b;->h:Ljava/net/ProxySelector;

    :cond_0
    sget-object v0, Lym/l;->a:Lym/l;

    iput-object v0, p0, Lym/u$b;->i:Lym/l;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lym/u$b;->k:Ljavax/net/SocketFactory;

    sget-object v0, Lhn/d;->a:Lhn/d;

    iput-object v0, p0, Lym/u$b;->n:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, Lym/f;->c:Lym/f;

    iput-object v0, p0, Lym/u$b;->o:Lym/f;

    sget-object v0, Lym/b;->a:Lym/b;

    iput-object v0, p0, Lym/u$b;->p:Lym/b;

    iput-object v0, p0, Lym/u$b;->q:Lym/b;

    new-instance v0, Lym/i;

    invoke-direct {v0}, Lym/i;-><init>()V

    iput-object v0, p0, Lym/u$b;->r:Lym/i;

    sget-object v0, Lym/n;->a:Lym/n;

    iput-object v0, p0, Lym/u$b;->s:Lym/n;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lym/u$b;->t:Z

    iput-boolean v0, p0, Lym/u$b;->u:Z

    iput-boolean v0, p0, Lym/u$b;->v:Z

    const/4 v0, 0x0

    iput v0, p0, Lym/u$b;->w:I

    const/16 v1, 0x2710

    iput v1, p0, Lym/u$b;->x:I

    iput v1, p0, Lym/u$b;->y:I

    iput v1, p0, Lym/u$b;->z:I

    iput v0, p0, Lym/u$b;->A:I

    return-void
.end method
