.class public Lcom/miui/optimizemanage/view/OptimizeManageAnimView;
.super Lcom/miui/common/ui/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/common/ui/a<",
        "Lcom/miui/optimizemanage/view/b;",
        "Lcom/miui/optimizemanage/view/OptimizeMainView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/miui/common/ui/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getAnimView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/miui/optimizemanage/view/OptimizeManageAnimView;->getAnimView()Lcom/miui/optimizemanage/view/b;

    move-result-object v0

    return-object v0
.end method

.method protected getAnimView()Lcom/miui/optimizemanage/view/b;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/miui/optimizemanage/view/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/optimizemanage/view/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic getVideoView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/miui/optimizemanage/view/OptimizeManageAnimView;->getVideoView()Lcom/miui/optimizemanage/view/OptimizeMainView;

    move-result-object v0

    return-object v0
.end method

.method protected getVideoView()Lcom/miui/optimizemanage/view/OptimizeMainView;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e029d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/view/OptimizeMainView;

    return-object v0
.end method

.method public setAnimProgress(F)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/ui/a;->a:Lcom/miui/common/ui/a$a;

    sget-object v1, Lcom/miui/common/ui/a$a;->a:Lcom/miui/common/ui/a$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/common/ui/a;->c:Landroid/view/View;

    check-cast v0, Lcom/miui/optimizemanage/view/OptimizeMainView;

    invoke-virtual {v0, p1}, Lcom/miui/optimizemanage/view/OptimizeMainView;->setAnimProgress(F)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/miui/common/ui/a$a;->b:Lcom/miui/common/ui/a$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/common/ui/a;->b:Landroid/view/View;

    check-cast v0, Lcom/miui/optimizemanage/view/b;

    invoke-virtual {v0, p1}, Lcom/miui/optimizemanage/view/b;->setAnimProgress(F)V

    :cond_1
    :goto_0
    return-void
.end method
