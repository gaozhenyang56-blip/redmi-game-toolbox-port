.class public Lmiuix/appcompat/internal/util/ActionBarViewFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/widget/AppCompatImageView;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->lambda$generateTitleUpView$1(Landroidx/appcompat/widget/AppCompatImageView;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Landroid/widget/FrameLayout;I)V
    .locals 0

    invoke-static {p0, p1}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->lambda$generateTitleUpView$0(Landroid/widget/FrameLayout;I)V

    return-void
.end method

.method public static generateCollapseTitle(Landroid/content/Context;II)Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
    .locals 1

    new-instance v0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-direct {v0, p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->init()V

    return-object v0
.end method

.method public static generateExpandTitle(Landroid/content/Context;)Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
    .locals 1

    new-instance v0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->init()V

    return-object v0
.end method

.method public static generateTitleUpView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_view_padding_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Lmiuix/appcompat/internal/util/a;

    invoke-direct {v2, v1, v0}, Lmiuix/appcompat/internal/util/a;-><init>(Landroid/widget/FrameLayout;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget v0, Lmiuix/appcompat/R$id;->up:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lmiuix/appcompat/R$string;->actionbar_button_up_description:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    new-instance v2, Lmiuix/appcompat/internal/util/b;

    invoke-direct {v2, v0, p0}, Lmiuix/appcompat/internal/util/b;-><init>(Landroidx/appcompat/widget/AppCompatImageView;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-object v1
.end method

.method private static synthetic lambda$generateTitleUpView$0(Landroid/widget/FrameLayout;I)V
    .locals 2

    invoke-static {p0}, Lpl/j;->f(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$generateTitleUpView$1(Landroidx/appcompat/widget/AppCompatImageView;Landroid/content/Context;)V
    .locals 3

    const v0, 0x101030b

    invoke-static {p1, v0}, Lpl/d;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    new-array v0, p1, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v0

    const/high16 v2, 0x42700000    # 60.0f

    invoke-interface {v0, v2}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    new-array p1, p1, [Landroid/view/View;

    aput-object p0, p1, v1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, v0}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    new-array v0, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, v0}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method
