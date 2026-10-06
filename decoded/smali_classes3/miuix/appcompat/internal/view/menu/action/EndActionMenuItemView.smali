.class public Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;
.implements Lmiuix/animation/ViewHoverListener;


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mIsCheckable:Z

.field private mIsHover:Z

.field private mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p3, 0x11

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget p3, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_end_menu_item_child_layout:I

    invoke-static {p1, p3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lmiuix/appcompat/R$id;->action_menu_item_child_icon:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mImageView:Landroid/widget/ImageView;

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x1d

    if-lt p3, v1, :cond_0

    invoke-static {p1, v0}, Lv8/b;->a(Landroid/widget/ImageView;Z)V

    :cond_0
    new-array p1, p2, [Landroid/view/View;

    aput-object p0, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p3, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v1, p3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    const p3, 0x3f19999a    # 0.6f

    new-array v2, p2, [Lmiuix/animation/ITouchStyle$TouchType;

    sget-object v3, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v3, v2, v0

    invoke-interface {p1, p3, v2}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p3, p2, [Lmiuix/animation/ITouchStyle$TouchType;

    sget-object v2, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v2, p3, v0

    invoke-interface {p1, v1, p3}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p3, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array p1, p2, [Landroid/view/View;

    aput-object p0, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    const/high16 p3, 0x42700000    # 60.0f

    invoke-interface {p1, p3}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    new-array p1, p2, [Landroid/view/View;

    aput-object p0, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object p2, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, p2}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    new-array p2, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method


# virtual methods
.method public getItemData()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->setCheckable(Z)V

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->setChecked(Z)V

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->setEnabled(Z)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public isHover()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mIsHover:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onEnterHover()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mIsHover:Z

    return-void
.end method

.method public onExitHover()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mIsHover:Z

    return-void
.end method

.method public onMoveHover()V
    .locals 0

    return-void
.end method

.method public performClick()Z
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    sget v2, Lmiuix/appcompat/R$id;->more:I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mItemInvoker:Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mItemData:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-interface {v2, v4, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Landroid/view/View;->playSoundEffect(I)V

    return v1

    :cond_2
    return v3
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mIsCheckable:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mIsCheckable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setItemInvoker(Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuItemView;->mItemInvoker:Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;

    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public showsIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
