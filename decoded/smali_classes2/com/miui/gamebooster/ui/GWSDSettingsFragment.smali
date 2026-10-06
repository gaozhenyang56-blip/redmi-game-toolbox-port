.class public Lcom/miui/gamebooster/ui/GWSDSettingsFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Ll8/e;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;


# instance fields
.field private a:Ll8/f;

.field private b:Landroid/view/View;

.field private c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public S(Ll8/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GWSDSettingsFragment;->a:Ll8/f;

    return-void
.end method

.method protected initView()V
    .locals 3

    const v0, 0x7f0b0139

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GWSDSettingsFragment;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0b04b1

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GWSDSettingsFragment;->c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GWSDSettingsFragment;->c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, La8/b1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setTitleText(Ljava/lang/String;)V

    const v0, 0x7f0b0303

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, La8/b1;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GWSDSettingsFragment;->c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const/4 v1, 0x0

    invoke-static {v1}, Lm6/a;->v(Z)Z

    move-result v2

    invoke-virtual {v0, v2, v1, v1}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    return-void
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GWSDSettingsFragment;->c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lm6/a;->f0(Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GWSDSettingsFragment;->b:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GWSDSettingsFragment;->a:Ll8/f;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ll8/f;->pop()V

    :cond_0
    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e01dc

    return v0
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
