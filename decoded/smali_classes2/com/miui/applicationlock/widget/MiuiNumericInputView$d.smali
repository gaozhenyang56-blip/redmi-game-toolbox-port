.class Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/widget/MiuiNumericInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/widget/MiuiNumericInputView;


# direct methods
.method public constructor <init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;->a:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method static synthetic a(Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;->b(III)V

    return-void
.end method

.method private b(III)V
    .locals 5

    new-instance v0, Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;->a:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;-><init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView;Landroid/content/Context;I)V

    new-instance v1, Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;

    iget-object v2, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;->a:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3, p2}, Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;-><init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView;Landroid/content/Context;I)V

    new-instance v2, Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;

    iget-object v3, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;->a:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4, p3}, Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;-><init>(Lcom/miui/applicationlock/widget/MiuiNumericInputView;Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;->a:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    iget-object v3, v3, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->a:[Lcom/miui/applicationlock/widget/MiuiNumericInputView$b;

    aput-object v0, v3, p1

    aput-object v1, v3, p2

    aput-object v2, v3, p3

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object p2, p0, Lcom/miui/applicationlock/widget/MiuiNumericInputView$d;->a:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-static {p2}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->c(Lcom/miui/applicationlock/widget/MiuiNumericInputView;)I

    move-result p2

    const/4 p3, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, p3, p2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
