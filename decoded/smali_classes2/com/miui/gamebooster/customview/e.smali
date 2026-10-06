.class public Lcom/miui/gamebooster/customview/e;
.super Lcom/miui/gamebooster/customview/c;
.source "SourceFile"


# instance fields
.field private u:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/c;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private setDescTextSize(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/e;->u:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/customview/c;->d(I)I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method protected g()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->d:Landroid/view/View;

    const v1, 0x7f0b0c38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/e;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/c;->k:Lcom/miui/gamebooster/customview/BarrageColorPickView;

    iget v2, p0, Lcom/miui/gamebooster/customview/c;->r:I

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/customview/BarrageColorPickView;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Lcom/miui/gamebooster/customview/c;->q:I

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/customview/e;->setDescTextSize(I)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/customview/c;->t:Z

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/e;->i(Z)V

    return-void
.end method

.method protected getLayoutResource()I
    .locals 1

    const v0, 0x7f0e01c0

    return v0
.end method

.method protected h(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method protected i(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/customview/e;->u:Landroid/widget/TextView;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/customview/e;->u:Landroid/widget/TextView;

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected j(II)V
    .locals 0

    iget-object p1, p0, Lcom/miui/gamebooster/customview/e;->u:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected k(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/e;->setDescTextSize(I)V

    return-void
.end method
