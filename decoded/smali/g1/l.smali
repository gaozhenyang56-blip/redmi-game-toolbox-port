.class public Lg1/l;
.super Lg1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg1/a<",
        "Lk1/l;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Lk1/l;

.field private final j:Landroid/graphics/Path;


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

    invoke-direct {p0, p1}, Lg1/a;-><init>(Ljava/util/List;)V

    new-instance p1, Lk1/l;

    invoke-direct {p1}, Lk1/l;-><init>()V

    iput-object p1, p0, Lg1/l;->i:Lk1/l;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lg1/l;->j:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Lq1/a;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lg1/l;->o(Lq1/a;F)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public o(Lq1/a;F)Landroid/graphics/Path;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq1/a<",
            "Lk1/l;",
            ">;F)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    iget-object v0, p1, Lq1/a;->b:Ljava/lang/Object;

    check-cast v0, Lk1/l;

    iget-object p1, p1, Lq1/a;->c:Ljava/lang/Object;

    check-cast p1, Lk1/l;

    iget-object v1, p0, Lg1/l;->i:Lk1/l;

    invoke-virtual {v1, v0, p1, p2}, Lk1/l;->c(Lk1/l;Lk1/l;F)V

    iget-object p1, p0, Lg1/l;->i:Lk1/l;

    iget-object p2, p0, Lg1/l;->j:Landroid/graphics/Path;

    invoke-static {p1, p2}, Lp1/i;->h(Lk1/l;Landroid/graphics/Path;)V

    iget-object p1, p0, Lg1/l;->j:Landroid/graphics/Path;

    return-object p1
.end method
