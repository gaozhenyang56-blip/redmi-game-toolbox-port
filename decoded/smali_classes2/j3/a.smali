.class public Lj3/a;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lj3/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Lx4/g;->c()Z

    move-result p2

    iput-boolean p2, p0, Lj3/a;->c:Z

    sget-boolean p3, Lmiui/os/Build;->IS_TABLET:Z

    iput-boolean p3, p0, Lj3/a;->d:Z

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lj3/a;->a:I

    :goto_0
    invoke-direct {p0, p1}, Lj3/a;->setLayoutPadding(Landroid/content/Context;)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p2, p2, 0xf

    iput p2, p0, Lj3/a;->b:I

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setLayoutPadding(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result p1

    iget-boolean v1, p0, Lj3/a;->c:Z

    const/4 v2, 0x1

    const v3, 0x7f0700df

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, v0, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    :cond_1
    iget p1, p0, Lj3/a;->b:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    const p1, 0x7f0700e3

    :goto_2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lj3/a;->d:Z

    if-eqz v1, :cond_7

    if-eqz p1, :cond_5

    iget p1, p0, Lj3/a;->a:I

    if-ne p1, v2, :cond_4

    const p1, 0x7f0700e5

    goto :goto_2

    :cond_4
    const p1, 0x7f0700e6

    goto :goto_2

    :cond_5
    iget p1, p0, Lj3/a;->a:I

    if-ne p1, v2, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700e2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lj3/a;->c:Z

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    iget v0, p0, Lj3/a;->b:I

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lj3/a;->d:Z

    if-eqz v0, :cond_1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lj3/a;->a:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    :goto_0
    invoke-direct {p0, p1}, Lj3/a;->setLayoutPadding(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
