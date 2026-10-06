.class public abstract Lcom/miui/powercenter/autotask/BaseSettingActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field protected a:Landroid/widget/ImageView;

.field protected b:Landroid/widget/ImageView;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method private g0()V
    .locals 5

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/BaseSettingActivity;->e0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    const v2, 0x7f120f48

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    const v3, 0x7f080a48

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result v4

    invoke-static {p0, v3, v4}, Lme/a;->b(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/BaseSettingActivity;->d0()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->b:Landroid/widget/ImageView;

    const v3, 0x7f120499

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->b:Landroid/widget/ImageView;

    const v2, 0x7f080a42

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result v3

    invoke-static {p0, v2, v3}, Lme/a;->b(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/BaseSettingActivity;->d0()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract d0()Landroid/view/View$OnClickListener;
.end method

.method protected abstract e0()Ljava/lang/String;
.end method

.method protected abstract f0()V
.end method

.method protected h0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lx4/t;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setCustomExtraHorizontalPaddingLevel(I)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/powercenter/autotask/BaseSettingActivity;->g0()V

    const p1, 0x1020002

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->c:Landroid/view/View;

    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onExtraPaddingChanged(I)V

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/BaseSettingActivity;->h0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->c:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/BaseSettingActivity;->f0()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
