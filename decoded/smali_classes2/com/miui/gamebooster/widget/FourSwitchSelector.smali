.class public Lcom/miui/gamebooster/widget/FourSwitchSelector;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/widget/FourSwitchSelector$a;,
        Lcom/miui/gamebooster/widget/FourSwitchSelector$Option;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/miui/gamebooster/widget/FourSwitchSelector$a;


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

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/widget/FourSwitchSelector;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7f0e0206

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0b083c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/widget/FourSwitchSelector;->a:Landroid/widget/TextView;

    const v0, 0x7f0b083d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/widget/FourSwitchSelector;->b:Landroid/widget/TextView;

    const v0, 0x7f0b083e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/widget/FourSwitchSelector;->c:Landroid/widget/TextView;

    const v0, 0x7f0b083f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/widget/FourSwitchSelector;->d:Landroid/widget/TextView;

    sget-object v0, Lef/y;->n1:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_0
    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/widget/FourSwitchSelector;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/widget/FourSwitchSelector;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/miui/gamebooster/widget/FourSwitchSelector;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz v3, :cond_4

    iget-object p1, p0, Lcom/miui/gamebooster/widget/FourSwitchSelector;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-direct {p0}, Lcom/miui/gamebooster/widget/FourSwitchSelector;->getAllOptions()[Landroid/view/View;

    move-result-object p1

    array-length v0, p1

    :goto_1
    if-ge p2, v0, :cond_6

    aget-object v1, p1, p2

    if-eqz v1, :cond_5

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private getAllOptions()[Landroid/view/View;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gamebooster/widget/FourSwitchSelector;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/gamebooster/widget/FourSwitchSelector;->b:Landroid/widget/TextView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/gamebooster/widget/FourSwitchSelector;->c:Landroid/widget/TextView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/gamebooster/widget/FourSwitchSelector;->d:Landroid/widget/TextView;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/gamebooster/widget/FourSwitchSelector;->b:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/widget/FourSwitchSelector;->c:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/widget/FourSwitchSelector;->d:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-direct {p0}, Lcom/miui/gamebooster/widget/FourSwitchSelector;->getAllOptions()[Landroid/view/View;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    if-eqz v6, :cond_3

    invoke-virtual {v6, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/widget/FourSwitchSelector;->e:Lcom/miui/gamebooster/widget/FourSwitchSelector$a;

    if-eqz p1, :cond_5

    invoke-interface {p1, p0, v0}, Lcom/miui/gamebooster/widget/FourSwitchSelector$a;->G(Lcom/miui/gamebooster/widget/FourSwitchSelector;I)V

    :cond_5
    return-void
.end method

.method public setListener(Lcom/miui/gamebooster/widget/FourSwitchSelector$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/widget/FourSwitchSelector;->e:Lcom/miui/gamebooster/widget/FourSwitchSelector$a;

    return-void
.end method

.method public setOption(I)V
    .locals 5

    invoke-direct {p0}, Lcom/miui/gamebooster/widget/FourSwitchSelector;->getAllOptions()[Landroid/view/View;

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

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/widget/FourSwitchSelector;->d:Landroid/widget/TextView;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/widget/FourSwitchSelector;->c:Landroid/widget/TextView;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/widget/FourSwitchSelector;->b:Landroid/widget/TextView;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/gamebooster/widget/FourSwitchSelector;->a:Landroid/widget/TextView;

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_6
    return-void
.end method
