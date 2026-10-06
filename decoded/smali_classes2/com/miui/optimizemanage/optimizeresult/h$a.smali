.class public Lcom/miui/optimizemanage/optimizeresult/h$a;
.super Lcom/miui/optimizemanage/optimizeresult/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizemanage/optimizeresult/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/d;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0bc9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/h$a;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0506

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/h$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060cdc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/h$a;->c:Landroid/content/Context;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lx4/h0;->e(Landroid/view/View;F)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/c;I)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/miui/optimizemanage/optimizeresult/d;->a(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/c;I)V

    check-cast p2, Lcom/miui/optimizemanage/optimizeresult/h;

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/h;->a(Lcom/miui/optimizemanage/optimizeresult/h;)[Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aget-object p3, p3, v0

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/h$a;->a:Landroid/widget/ImageView;

    sget-object v2, Lx4/o0;->h:Lrh/c;

    const v3, 0x7f0804c9

    invoke-static {p3, v1, v2, v3}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/h$a;->b:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/h;->b(Lcom/miui/optimizemanage/optimizeresult/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/h;->c(Lcom/miui/optimizemanage/optimizeresult/h;)Z

    move-result p3

    const v1, 0x7f0804c0

    const v2, 0x7f0804c1

    const v3, 0x7f0719f8

    const v4, 0x7f0719d9

    if-eqz p3, :cond_2

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/h;->d(Lcom/miui/optimizemanage/optimizeresult/h;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/h;->e(Lcom/miui/optimizemanage/optimizeresult/h;)Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f0804c3

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/h$a;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/h$a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/h$a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v0, p3, v1, p3}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto/16 :goto_1

    :cond_0
    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/h;->e(Lcom/miui/optimizemanage/optimizeresult/h;)Z

    move-result p3

    if-eqz p3, :cond_1

    const p3, 0x7f0804c4

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/h$a;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/h$a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/h$a;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1, v1, p3, v2, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/h;->d(Lcom/miui/optimizemanage/optimizeresult/h;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/h;->d(Lcom/miui/optimizemanage/optimizeresult/h;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/h;->e(Lcom/miui/optimizemanage/optimizeresult/h;)Z

    move-result p3

    if-eqz p3, :cond_3

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/h$a;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/h$a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/h$a;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, p3}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/h;->e(Lcom/miui/optimizemanage/optimizeresult/h;)Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_5
    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/h;->d(Lcom/miui/optimizemanage/optimizeresult/h;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/h;->f(Lcom/miui/optimizemanage/optimizeresult/h;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/h;->h(Lcom/miui/optimizemanage/optimizeresult/h;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgb/a;->m(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p2, p1}, Lcom/miui/optimizemanage/optimizeresult/h;->g(Lcom/miui/optimizemanage/optimizeresult/h;Z)Z

    :cond_6
    return-void
.end method
