.class public Lcom/miui/optimizecenter/storage/view/PreferenceItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Lbb/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lbb/a;->a:Lbb/a;

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->d:Lbb/a;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Lbb/a;)Lcom/miui/optimizecenter/storage/view/PreferenceItemView;
    .locals 2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0e04dc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;

    invoke-virtual {p0, p2}, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->setmItemType(Lbb/a;)V

    return-object p0
.end method


# virtual methods
.method public getmItemType()Lbb/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->d:Lbb/a;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b0cf3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->a:Landroid/widget/TextView;

    const v0, 0x7f0b0cde

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->b:Landroid/widget/TextView;

    const v0, 0x7f0b05df

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->c:Landroid/widget/ImageView;

    invoke-static {}, Ldb/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0809dc

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {p0}, Ldb/a;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0809db

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public setArrowVisible(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->c:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Ldb/i;->l(Landroid/view/View;I)V

    return-void
.end method

.method public setSummary(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->b:Landroid/widget/TextView;

    invoke-static {v0, p1}, Ldb/i;->e(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->b:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Ldb/i;->l(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->b:Landroid/widget/TextView;

    invoke-static {v0, p1}, Ldb/i;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Ldb/i;->e(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Ldb/i;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setmItemType(Lbb/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/view/PreferenceItemView;->d:Lbb/a;

    return-void
.end method
