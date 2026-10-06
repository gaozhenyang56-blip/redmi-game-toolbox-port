.class public abstract Lym/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lym/o$c;
    }
.end annotation


# static fields
.field public static final a:Lym/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lym/o$a;

    invoke-direct {v0}, Lym/o$a;-><init>()V

    sput-object v0, Lym/o;->a:Lym/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static k(Lym/o;)Lym/o$c;
    .locals 1

    new-instance v0, Lym/o$b;

    invoke-direct {v0, p0}, Lym/o$b;-><init>(Lym/o;)V

    return-object v0
.end method


# virtual methods
.method public a(Lym/d;)V
    .locals 0

    return-void
.end method

.method public b(Lym/d;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public c(Lym/d;)V
    .locals 0

    return-void
.end method

.method public d(Lym/d;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lym/v;)V
    .locals 0
    .param p4    # Lym/v;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public e(Lym/d;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lym/v;Ljava/io/IOException;)V
    .locals 0
    .param p4    # Lym/v;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public f(Lym/d;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 0

    return-void
.end method

.method public g(Lym/d;Lym/h;)V
    .locals 0

    return-void
.end method

.method public h(Lym/d;Lym/h;)V
    .locals 0

    return-void
.end method

.method public i(Lym/d;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lym/d;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public j(Lym/d;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public l(Lym/d;J)V
    .locals 0

    return-void
.end method

.method public m(Lym/d;)V
    .locals 0

    return-void
.end method

.method public n(Lym/d;Lym/x;)V
    .locals 0

    return-void
.end method

.method public o(Lym/d;)V
    .locals 0

    return-void
.end method

.method public p(Lym/d;J)V
    .locals 0

    return-void
.end method

.method public q(Lym/d;)V
    .locals 0

    return-void
.end method

.method public r(Lym/d;Lym/z;)V
    .locals 0

    return-void
.end method

.method public s(Lym/d;)V
    .locals 0

    return-void
.end method

.method public t(Lym/d;Lym/p;)V
    .locals 0
    .param p2    # Lym/p;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public u(Lym/d;)V
    .locals 0

    return-void
.end method
