.class public Lj1/h;
.super Lj1/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj1/n<",
        "Lk1/l;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lq1/a<",
            "Lk1/l;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lj1/n;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Lg1/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg1/a<",
            "Lk1/l;",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    new-instance v0, Lg1/l;

    iget-object v1, p0, Lj1/n;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lg1/l;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic b()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lj1/n;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Z
    .locals 1

    invoke-super {p0}, Lj1/n;->c()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lj1/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
