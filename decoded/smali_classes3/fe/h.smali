.class public Lfe/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfe/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfe/h;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfe/h;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lfe/g;)V
    .locals 1

    iget-object v0, p0, Lfe/h;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lfe/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfe/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lfe/h;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lfe/h;->b:Z

    return v0
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lfe/h;->b:Z

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lfe/h;->a:I

    return-void
.end method
