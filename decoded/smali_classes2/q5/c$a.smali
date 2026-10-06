.class public Lq5/c$a;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lq5/c$a;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lq5/c$a;->initView(Landroid/view/View;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f0b06d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lq5/c$a;->b:Landroid/widget/TextView;

    const v0, 0x7f0b06da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lq5/c$a;->c:Landroid/widget/TextView;

    const v0, 0x7f0b06db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lq5/c$a;->d:Landroid/widget/TextView;

    const v0, 0x7f0b06dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lq5/c$a;->e:Landroid/widget/TextView;

    const v0, 0x7f0b06dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lq5/c$a;->f:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    check-cast p2, Lq5/c;

    invoke-static {p2}, Lq5/c;->a(Lq5/c;)Z

    move-result p1

    const/4 p3, 0x0

    const/16 v0, 0x8

    if-nez p1, :cond_0

    iget-object p1, p0, Lq5/c$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lq5/c$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-static {p2}, Lq5/c;->b(Lq5/c;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lq5/c$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lq5/c$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-static {p2}, Lq5/c;->c(Lq5/c;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lq5/c$a;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lq5/c$a;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-static {p2}, Lq5/c;->d(Lq5/c;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lq5/c$a;->e:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lq5/c$a;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-static {p2}, Lq5/c;->e(Lq5/c;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lq5/c$a;->f:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lq5/c$a;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method
