.class public Lcom/miui/gamebooster/model/z;
.super Lcom/miui/gamebooster/model/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/model/z$a;
    }
.end annotation


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/y;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0e021d

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/model/f;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/model/z;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lt5/b;
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/model/z$a;

    invoke-direct {v0, p1}, Lcom/miui/gamebooster/model/z$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public g(Lcom/miui/gamebooster/model/y;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/z;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h()Lcom/miui/gamebooster/model/y;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/z;->i()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/model/z;->d:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/z;->i()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/y;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/z;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/y;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/model/z;->d:Ljava/util/List;

    return-object v0
.end method
