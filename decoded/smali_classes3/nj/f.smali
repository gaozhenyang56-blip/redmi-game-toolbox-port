.class public abstract Lnj/f;
.super Lnj/d;
.source "SourceFile"


# instance fields
.field protected a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnj/d;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnj/f;->a:Z

    return-void
.end method


# virtual methods
.method public abstract b(Lkj/b;[II)Z
.end method

.method public c(Lkj/b;[II)Z
    .locals 1

    if-eqz p2, :cond_1

    array-length v0, p2

    if-lt p3, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lnj/f;->b(Lkj/b;[II)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract d(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public e(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lnj/f;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method protected f()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnj/f;->a:Z

    return-void
.end method
