.class public Lcom/miui/electricrisk/ElectricSmallTitleAndStatusPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lmiuix/preference/b;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/electricrisk/ElectricSmallTitleAndStatusPreference;->c:Z

    iput-boolean p2, p0, Lcom/miui/electricrisk/ElectricSmallTitleAndStatusPreference;->d:Z

    invoke-direct {p0, p1}, Lcom/miui/electricrisk/ElectricSmallTitleAndStatusPreference;->d(Landroid/content/Context;)V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/electricrisk/ElectricSmallTitleAndStatusPreference;->a:Landroid/content/Context;

    return-void
.end method

.method private f(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricSmallTitleAndStatusPreference;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/miui/electricrisk/ElectricSmallTitleAndStatusPreference;->d:Z

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricSmallTitleAndStatusPreference;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/electricrisk/ElectricSmallTitleAndStatusPreference;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_0

    const v2, 0x7f12071b

    goto :goto_0

    :cond_0
    const v2, 0x7f1206f9

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricSmallTitleAndStatusPreference;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/electricrisk/ElectricSmallTitleAndStatusPreference;->a:Landroid/content/Context;

    if-eqz p1, :cond_1

    const v2, 0x7f060cc3

    goto :goto_1

    :cond_1
    const v2, 0x7f060cc6

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricSmallTitleAndStatusPreference;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const p1, 0x7f080e9a

    goto :goto_2

    :cond_2
    const p1, 0x7f080e9b

    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/miui/electricrisk/ElectricSmallTitleAndStatusPreference$a;

    invoke-direct {v1, p0}, Lcom/miui/electricrisk/ElectricSmallTitleAndStatusPreference$a;-><init>(Lcom/miui/electricrisk/ElectricSmallTitleAndStatusPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0b0bc9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0afa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/electricrisk/ElectricSmallTitleAndStatusPreference;->b:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/miui/electricrisk/ElectricSmallTitleAndStatusPreference;->c:Z

    invoke-direct {p0, v1}, Lcom/miui/electricrisk/ElectricSmallTitleAndStatusPreference;->f(Z)V

    iget-boolean v1, p0, Lcom/miui/electricrisk/ElectricSmallTitleAndStatusPreference;->d:Z

    invoke-virtual {p0, v1}, Lcom/miui/electricrisk/ElectricSmallTitleAndStatusPreference;->e(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/common/base/BaseActivity;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/miui/common/base/BaseActivity;

    invoke-static {v1}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/common/base/BaseActivity;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/miui/common/base/BaseActivity;->setViewHorizontalPadding(Landroid/view/View;)V

    :cond_0
    return-void
.end method
