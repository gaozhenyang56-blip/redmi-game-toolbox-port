.class public Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_IMAGE_VIEW_SIZE_DP:I = 0x1c

.field private static final ITEM_TEXT_SIZE_DP:I = 0xb

.field private static final ITEM_TEXT_SIZE_DP_IN_LARGE_FONT:I = 0x10


# instance fields
.field private mDensityDpi:I

.field private mImageView:Landroid/widget/ImageView;

.field private mLargerFontEnabled:Z

.field private mParent:Landroid/widget/LinearLayout;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mLargerFontEnabled:Z

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mParent:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget v3, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_menu_item_child_layout:I

    invoke-static {v1, v3, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v3, Lmiuix/appcompat/R$id;->action_menu_item_child_icon:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mImageView:Landroid/widget/ImageView;

    sget v3, Lmiuix/appcompat/R$id;->action_menu_item_child_text:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mTextView:Landroid/widget/TextView;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mImageView:Landroid/widget/ImageView;

    invoke-static {v3, v0}, Lv8/b;->a(Landroid/widget/ImageView;Z)V

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mDensityDpi:I

    new-array v1, v2, [Landroid/view/View;

    aput-object p1, v1, v0

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    new-array v3, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v1, v4, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v1

    const v3, 0x3f19999a    # 0.6f

    new-array v5, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    sget-object v6, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v6, v5, v0

    invoke-interface {v1, v3, v5}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v1

    new-array v3, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    sget-object v5, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v5, v3, v0

    invoke-interface {v1, v4, v3}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v1

    new-array v3, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, p1, v3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array v1, v2, [Landroid/view/View;

    aput-object p1, v1, v0

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v1

    new-array v2, v0, [Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {v1, v4, v2}, Lmiuix/animation/IHoverStyle;->setAlpha(F[Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle;

    move-result-object v1

    sget-object v2, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {v1, v2}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object v1

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, p1, v0}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method


# virtual methods
.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mDensityDpi:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mDensityDpi:I

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41e00000    # 28.0f

    invoke-static {p1, v0}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result p1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mLargerFontEnabled:Z

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setLargeFontEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mParent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mParent:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setLargeFontEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mLargerFontEnabled:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41300000    # 11.0f

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
