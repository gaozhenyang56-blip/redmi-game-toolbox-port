.class public Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/widget/MiuiNumericInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Lcom/miui/applicationlock/widget/MiuiNumericInputView;


# direct methods
.method public constructor <init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView;Landroid/content/Context;I)V
    .locals 2

    iput-object p1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;->b:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput p3, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;->a:I

    const/16 p1, 0xb

    if-eq p3, p1, :cond_0

    const/16 p1, 0xa

    if-eq p3, p1, :cond_0

    new-instance p1, Lcom/miui/applicationlock/widget/k;

    invoke-direct {p1, p0}, Lcom/miui/applicationlock/widget/k;-><init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-direct {p0, p3}, Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;->b(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x11

    if-eqz p1, :cond_1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-direct {p0, p3}, Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;->c(I)Landroid/view/View;

    move-result-object p1

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, v0, v0, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;->d(Landroid/view/View;)V

    return-void
.end method

.method private b(I)Landroid/view/View;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;->b:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->d(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b0173

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    const v0, 0x7f080a19

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(I)Landroid/view/View;
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/widget/Space;

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;->b:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->d(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    new-instance p1, Landroid/widget/Space;

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;->b:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->d(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    new-instance p1, Landroid/widget/Space;

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;->b:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->d(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_2
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;->b:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-static {v1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->d(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0829

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lx4/y;->t()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lx4/g;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const v1, 0x7f070222

    goto :goto_1

    :cond_4
    :goto_0
    const v1, 0x7f071c65

    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;->b:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-static {p1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->d(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f060e05

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string p1, "miui-light"

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    return-object v0
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;->b:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-static {p1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->e(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)Lcom/miui/applicationlock/widget/MiuiNumericInputView$c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;->a:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;->b:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-static {p1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->e(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)Lcom/miui/applicationlock/widget/MiuiNumericInputView$c;

    move-result-object p1

    iget v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;->a:I

    invoke-interface {p1, v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView$c;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public e(ZZ)V
    .locals 2

    const v0, 0x7f0b0173

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const v1, 0x7f080a19

    goto :goto_0

    :cond_0
    const v1, 0x7f080a22

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    if-eqz p2, :cond_2

    return-void

    :cond_2
    const p2, 0x7f0b0829

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;->b:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->d(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_3

    const p1, 0x7f060e05

    goto :goto_1

    :cond_3
    const p1, 0x7f0600d1

    :goto_1
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    return-void
.end method
