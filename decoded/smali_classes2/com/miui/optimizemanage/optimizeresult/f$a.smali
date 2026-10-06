.class public Lcom/miui/optimizemanage/optimizeresult/f$a;
.super Lcom/miui/optimizemanage/optimizeresult/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizemanage/optimizeresult/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/d;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0506

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/f$a;->a:Landroid/widget/ImageView;

    const v0, 0x7f0b0bc9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/f$a;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0b21

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/f$a;->c:Landroid/widget/TextView;

    const v0, 0x7f0b01d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/f$a;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/f$a;->a:Landroid/widget/ImageView;

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
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/miui/optimizemanage/optimizeresult/d;->a(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/c;I)V

    check-cast p2, Lcom/miui/optimizemanage/optimizeresult/f;

    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/f;->l()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/f$a;->a:Landroid/widget/ImageView;

    sget-object v1, Lx4/o0;->h:Lrh/c;

    const v2, 0x7f0804c9

    invoke-static {p3, v0, v1, v2}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/f$a;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/f;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/f$a;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/f;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/f$a;->d:Landroid/widget/Button;

    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/f;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07182d

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/f;->a(Lcom/miui/optimizemanage/optimizeresult/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/miui/optimizemanage/optimizeresult/f;->i:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060159

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/f$a;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/f;->b(Lcom/miui/optimizemanage/optimizeresult/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/f;->c(Lcom/miui/optimizemanage/optimizeresult/f;)I

    move-result v0

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/f;->d(Lcom/miui/optimizemanage/optimizeresult/f;)I

    move-result v1

    invoke-static {p3, v0, v1}, Lof/f;->a(FII)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0809da

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Landroidx/core/content/res/g;->f(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :goto_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/f$a;->d:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/f$a;->d:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/f;->e(Lcom/miui/optimizemanage/optimizeresult/f;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/f;->g(Lcom/miui/optimizemanage/optimizeresult/f;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/f;->i(Lcom/miui/optimizemanage/optimizeresult/f;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/optimizemanage/optimizeresult/f;->h(Lcom/miui/optimizemanage/optimizeresult/f;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/f;->g(Lcom/miui/optimizemanage/optimizeresult/f;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgb/a;->m(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p2, p1}, Lcom/miui/optimizemanage/optimizeresult/f;->f(Lcom/miui/optimizemanage/optimizeresult/f;Z)Z

    :cond_4
    return-void
.end method
