.class public Ljb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljb/j;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljb/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljb/j;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljb/b;->c:I

    iput-boolean v0, p0, Ljb/b;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljb/b;->f:Ljava/util/List;

    iput-object p1, p0, Ljb/b;->a:Ljb/j;

    iput p2, p0, Ljb/b;->b:I

    sget-object p2, Ljb/b$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lkb/a;->o()Z

    move-result p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lkb/a;->n()Z

    move-result p1

    :goto_0
    iput-boolean p1, p0, Ljb/b;->d:Z

    :goto_1
    return-void
.end method


# virtual methods
.method public a()Lcom/miui/optimizemanage/view/StateCheckBox$c;
    .locals 2

    iget-object v0, p0, Ljb/b;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljb/b;->e()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljb/b;->e()I

    move-result v0

    invoke-virtual {p0}, Ljb/b;->b()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/miui/optimizemanage/view/StateCheckBox$c;->b:Lcom/miui/optimizemanage/view/StateCheckBox$c;

    return-object v0

    :cond_1
    sget-object v0, Lcom/miui/optimizemanage/view/StateCheckBox$c;->c:Lcom/miui/optimizemanage/view/StateCheckBox$c;

    return-object v0

    :cond_2
    :goto_0
    sget-object v0, Lcom/miui/optimizemanage/view/StateCheckBox$c;->a:Lcom/miui/optimizemanage/view/StateCheckBox$c;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Ljb/b;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Ljb/f;)I
    .locals 1

    iget-object v0, p0, Ljb/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljb/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljb/b;->f:Ljava/util/List;

    return-object v0
.end method

.method public e()I
    .locals 3

    iget-object v0, p0, Ljb/b;->f:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljb/f;

    iget-boolean v2, v2, Ljb/f;->m:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public f()I
    .locals 1

    iget v0, p0, Ljb/b;->c:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Ljb/b;->b:I

    return v0
.end method

.method public h()Ljb/j;
    .locals 1

    iget-object v0, p0, Ljb/b;->a:Ljb/j;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Ljb/b;->e:Z

    return v0
.end method

.method public j(Z)V
    .locals 2

    iget-object v0, p0, Ljb/b;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljb/f;

    iput-boolean p1, v1, Ljb/f;->m:Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljb/f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljb/b;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljb/f;

    iget-boolean v1, p0, Ljb/b;->d:Z

    iput-boolean v1, v0, Ljb/f;->m:Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l(Z)V
    .locals 0

    iput-boolean p1, p0, Ljb/b;->e:Z

    return-void
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Ljb/b;->c:I

    return-void
.end method
