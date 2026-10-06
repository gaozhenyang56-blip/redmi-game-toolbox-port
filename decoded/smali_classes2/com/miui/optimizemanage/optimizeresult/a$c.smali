.class public Lcom/miui/optimizemanage/optimizeresult/a$c;
.super Lcom/miui/optimizemanage/optimizeresult/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizemanage/optimizeresult/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/Button;

.field e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/d;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b053a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a$c;->a:Landroid/widget/ImageView;

    const v0, 0x7f0b0bc9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a$c;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0b21

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a$c;->c:Landroid/widget/TextView;

    const v0, 0x7f0b01d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a$c;->d:Landroid/widget/Button;

    const v0, 0x7f0b025b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a$c;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a$c;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060cdc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-static {p1}, Lx4/h0;->b(Landroid/view/View;)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/c;I)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/miui/optimizemanage/optimizeresult/d;->a(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/c;I)V

    check-cast p2, Lcom/miui/optimizemanage/optimizeresult/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/a;->b(Lcom/miui/optimizemanage/optimizeresult/a;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/a;->b(Lcom/miui/optimizemanage/optimizeresult/a;)I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/a;->h(Lcom/miui/optimizemanage/optimizeresult/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/a$c;->a:Landroid/widget/ImageView;

    sget-object v3, Lx4/o0;->c:Lrh/c;

    invoke-virtual {p2, p3}, Lcom/miui/optimizemanage/optimizeresult/a;->s(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lx4/o0;->f(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/a;->h(Lcom/miui/optimizemanage/optimizeresult/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/a$c;->a:Landroid/widget/ImageView;

    sget-object v3, Lx4/o0;->h:Lrh/c;

    const v4, 0x7f080954

    invoke-static {v0, v2, v3, v4}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    :goto_1
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a$c;->b:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/a;->i(Lcom/miui/optimizemanage/optimizeresult/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a$c;->e:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/a;->j(Lcom/miui/optimizemanage/optimizeresult/a;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a$c;->e:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a$c;->c:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/a;->k(Lcom/miui/optimizemanage/optimizeresult/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a$c;->c:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/a;->b(Lcom/miui/optimizemanage/optimizeresult/a;)I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_4

    const/16 v2, 0x8

    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a$c;->d:Landroid/widget/Button;

    if-eqz v0, :cond_7

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/a;->l(Lcom/miui/optimizemanage/optimizeresult/a;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/a;->m(Lcom/miui/optimizemanage/optimizeresult/a;)I

    move-result v0

    goto :goto_2

    :cond_5
    const v0, 0x7f060ceb

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_2
    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/a$c;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a$c;->d:Landroid/widget/Button;

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/a;->n(Lcom/miui/optimizemanage/optimizeresult/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a$c;->d:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/a;->b(Lcom/miui/optimizemanage/optimizeresult/a;)I

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/a;->o(Lcom/miui/optimizemanage/optimizeresult/a;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f07182d

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/a;->c(Lcom/miui/optimizemanage/optimizeresult/a;)I

    move-result v0

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/a;->d(Lcom/miui/optimizemanage/optimizeresult/a;)I

    move-result v1

    invoke-static {p3, v0, v1}, Lof/f;->a(FII)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0809da

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Landroidx/core/content/res/g;->f(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :goto_3
    if-eqz p3, :cond_7

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a$c;->d:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/a;->e(Lcom/miui/optimizemanage/optimizeresult/a;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/a;->g(Lcom/miui/optimizemanage/optimizeresult/a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgb/a;->m(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p2, p1}, Lcom/miui/optimizemanage/optimizeresult/a;->f(Lcom/miui/optimizemanage/optimizeresult/a;Z)Z

    :cond_8
    return-void
.end method
