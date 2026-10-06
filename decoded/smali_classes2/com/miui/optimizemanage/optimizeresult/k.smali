.class public Lcom/miui/optimizemanage/optimizeresult/k;
.super Lcom/miui/optimizemanage/optimizeresult/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizemanage/optimizeresult/k$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/optimizemanage/optimizeresult/c;-><init>()V

    const v0, 0x7f0e03b4

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/optimizeresult/c;->setLayoutId(I)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method public createViewHolder(Landroid/view/View;)Lcom/miui/optimizemanage/optimizeresult/d;
    .locals 1

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/k$a;

    invoke-direct {v0, p1}, Lcom/miui/optimizemanage/optimizeresult/k$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/k;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/k;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCardName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/k;->c:Ljava/lang/String;

    return-void
.end method

.method public isNeedTrack()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/k;->b:Ljava/lang/String;

    return-void
.end method

.method public k(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljb/a;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f10008b

    invoke-virtual {p1, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/k;->a:Ljava/lang/String;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljb/a;

    iget v2, p1, Ljb/a;->b:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-string v3, "pkg_icon_xspace://"

    const-string v4, "pkg_icon://"

    const/16 v5, 0x3e7

    iget-object p1, p1, Ljb/a;->a:Ljava/lang/String;

    if-ne v2, v5, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/k;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/k;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/k;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/k;->g:Ljava/lang/String;

    if-le v0, v1, :cond_4

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljb/a;

    iget v1, p1, Ljb/a;->b:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object p1, p1, Ljb/a;->a:Ljava/lang/String;

    if-ne v1, v5, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/k;->e:Ljava/lang/String;

    const/4 p1, 0x2

    if-le v0, p1, :cond_4

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljb/a;

    iget v1, p1, Ljb/a;->b:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object p1, p1, Ljb/a;->a:Ljava/lang/String;

    if-ne v1, v5, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/k;->f:Ljava/lang/String;

    const/4 p1, 0x3

    if-le v0, p1, :cond_4

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljb/a;

    iget p2, p1, Ljb/a;->b:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    iget-object p1, p1, Ljb/a;->a:Ljava/lang/String;

    if-ne p2, v5, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/k;->g:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/c;->onClick(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/k;->a(Landroid/content/Context;)V

    return-void
.end method
