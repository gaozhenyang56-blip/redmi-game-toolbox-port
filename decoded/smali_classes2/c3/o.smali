.class public Lc3/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc3/b;",
            ">;"
        }
    .end annotation
.end field

.field c:Lc3/p;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc3/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc3/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc3/o;->b:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc3/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lc3/p;
    .locals 1

    iget-object v0, p0, Lc3/o;->c:Lc3/p;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc3/v;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc3/o;->d:Ljava/util/List;

    return-object v0
.end method

.method public e(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc3/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lc3/o;->b:Ljava/util/List;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc3/o;->a:Ljava/lang/String;

    return-void
.end method

.method public g(Lc3/p;)V
    .locals 0

    iput-object p1, p0, Lc3/o;->c:Lc3/p;

    return-void
.end method

.method public h(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc3/v;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lc3/o;->d:Ljava/util/List;

    return-void
.end method
