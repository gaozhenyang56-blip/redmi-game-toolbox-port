.class public Lcom/miui/gamebooster/beauty/BeautySoftLightView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/view/ViewGroup;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/beauty/BeautySoftLightView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method private b(Landroid/view/ViewGroup;II)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    if-ne p2, p3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySoftLightView;->a:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/miui/gamebooster/beauty/BeautySoftLightView;->d:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gamebooster/beauty/BeautySoftLightView;->b(Landroid/view/ViewGroup;II)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySoftLightView;->b:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/miui/gamebooster/beauty/BeautySoftLightView;->d:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gamebooster/beauty/BeautySoftLightView;->b(Landroid/view/ViewGroup;II)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySoftLightView;->c:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/miui/gamebooster/beauty/BeautySoftLightView;->d:I

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gamebooster/beauty/BeautySoftLightView;->b(Landroid/view/ViewGroup;II)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b066b

    if-eq p1, v0, :cond_2

    const v0, 0x7f0b068e

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b06a7

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lcom/miui/gamebooster/beauty/BeautySoftLightView;->d:I

    :goto_1
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p1

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->K()Z

    move-result v0

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v1

    invoke-virtual {v1}, Lw5/f;->h()I

    move-result v1

    iget v2, p0, Lcom/miui/gamebooster/beauty/BeautySoftLightView;->d:I

    invoke-virtual {p1, v0, v1, v2}, Lw5/f;->O0(ZII)V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautySoftLightView;->c()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-static {}, Lw5/f;->q()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/beauty/BeautySoftLightView;->d:I

    const v0, 0x7f0b06a7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySoftLightView;->a:Landroid/view/ViewGroup;

    const v0, 0x7f0b068e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySoftLightView;->b:Landroid/view/ViewGroup;

    const v0, 0x7f0b066b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySoftLightView;->c:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySoftLightView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySoftLightView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySoftLightView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautySoftLightView;->c()V

    return-void
.end method
