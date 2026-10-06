.class Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;
.implements Lmiuix/animation/ViewHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton$OnOverflowMenuButtonClickListener;
    }
.end annotation


# instance fields
.field private final mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

.field private mIsHover:Z

.field private mOnOverflowMenuButtonClickListener:Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton$OnOverflowMenuButtonClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lmiuix/appcompat/R$styleable;->OverflowMenuButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lmiuix/appcompat/R$styleable;->OverflowMenuButton_android_drawableTop:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    sget v0, Lmiuix/appcompat/R$styleable;->OverflowMenuButton_android_text:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    sget v2, Lmiuix/appcompat/R$styleable;->OverflowMenuButton_android_contentDescription:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$styleable;->OverflowMenuButton_largeFontAdaptationEnabled:I

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lbl/i;->f(Landroid/content/Context;)I

    move-result p1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    invoke-direct {p2, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;-><init>(Landroid/widget/LinearLayout;)V

    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setLargeFontEnabled(Z)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->setEnabled(Z)V

    return-void
.end method

.method private isVisible()Z
    .locals 3

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method


# virtual methods
.method public isHover()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mIsHover:Z

    return v0
.end method

.method public needsDividerAfter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onEnterHover()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mIsHover:Z

    return-void
.end method

.method public onExitHover()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mIsHover:Z

    return-void
.end method

.method public onMoveHover()V
    .locals 0

    return-void
.end method

.method public performClick()Z
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mOnOverflowMenuButtonClickListener:Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton$OnOverflowMenuButtonClickListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton$OnOverflowMenuButtonClickListener;->onOverflowMenuButtonClick()V

    :cond_2
    return v1
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mChildren:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->setEnabled(Z)V

    return-void
.end method

.method public setOnOverflowMenuButtonClickListener(Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton$OnOverflowMenuButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton;->mOnOverflowMenuButtonClickListener:Lmiuix/appcompat/internal/view/menu/action/OverflowMenuButton$OnOverflowMenuButtonClickListener;

    return-void
.end method
