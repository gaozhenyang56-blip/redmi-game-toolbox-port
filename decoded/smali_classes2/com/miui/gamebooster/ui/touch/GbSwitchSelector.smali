.class public Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/ui/touch/GbSwitchSelector$a;,
        Lcom/miui/gamebooster/ui/touch/GbSwitchSelector$Option;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/miui/gamebooster/ui/touch/GbSwitchSelector$a;


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

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7f0e0207

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0b083c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->a:Landroid/widget/TextView;

    const v0, 0x7f0b083d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->b:Landroid/widget/TextView;

    const v0, 0x7f0b083e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->c:Landroid/widget/TextView;

    sget-object v0, Lef/y;->n1:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_0
    move-object v1, p2

    move-object v2, v1

    :goto_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->a:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x8

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-static {p1, v3}, Ldb/i;->l(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->b:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-static {p1, v3}, Ldb/i;->l(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->c:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move v4, v0

    :cond_3
    invoke-static {p1, v4}, Ldb/i;->l(Landroid/view/View;I)V

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    if-eqz v2, :cond_6

    iget-object p1, p0, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->getAllOptions()[Landroid/view/View;

    move-result-object p1

    array-length p2, p1

    :goto_3
    if-ge v0, p2, :cond_8

    aget-object v1, p1, v0

    if-eqz v1, :cond_7

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method private getAllOptions()[Landroid/view/View;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->b:Landroid/widget/TextView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->c:Landroid/widget/TextView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->b:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->c:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->getAllOptions()[Landroid/view/View;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    if-eqz v6, :cond_2

    invoke-virtual {v6, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->d:Lcom/miui/gamebooster/ui/touch/GbSwitchSelector$a;

    if-eqz p1, :cond_4

    invoke-interface {p1, p0, v0}, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector$a;->b(Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;I)V

    :cond_4
    return-void
.end method

.method public setListener(Lcom/miui/gamebooster/ui/touch/GbSwitchSelector$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->d:Lcom/miui/gamebooster/ui/touch/GbSwitchSelector$a;

    return-void
.end method

.method public setOption(I)V
    .locals 5

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->getAllOptions()[Landroid/view/View;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->c:Landroid/widget/TextView;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->b:Landroid/widget/TextView;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->a:Landroid/widget/TextView;

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_5
    return-void
.end method
