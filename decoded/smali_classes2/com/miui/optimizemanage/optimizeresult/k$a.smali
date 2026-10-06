.class public Lcom/miui/optimizemanage/optimizeresult/k$a;
.super Lcom/miui/optimizemanage/optimizeresult/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizemanage/optimizeresult/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/Button;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/ImageView;

.field g:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/d;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0bc9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->a:Landroid/widget/TextView;

    const v0, 0x7f0b0b21

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->b:Landroid/widget/TextView;

    const v0, 0x7f0b01d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->c:Landroid/widget/Button;

    const v0, 0x7f0b0525

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->d:Landroid/widget/ImageView;

    const v0, 0x7f0b0526

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->e:Landroid/widget/ImageView;

    const v0, 0x7f0b0527

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->f:Landroid/widget/ImageView;

    const v0, 0x7f0b0528

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->g:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060cdc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-static {p1}, Lx4/h0;->b(Landroid/view/View;)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/c;I)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/miui/optimizemanage/optimizeresult/d;->a(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/c;I)V

    check-cast p2, Lcom/miui/optimizemanage/optimizeresult/k;

    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/k;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/k;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->c:Landroid/widget/Button;

    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/k;->c()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    const v1, 0x7f0804c9

    const/16 v2, 0x8

    if-eqz p3, :cond_0

    iget-object v3, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->d:Landroid/widget/ImageView;

    sget-object v4, Lx4/o0;->i:Lrh/c;

    invoke-static {p3, v3, v4, v1}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->d:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->d:Landroid/widget/ImageView;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/k;->d()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object v3, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->e:Landroid/widget/ImageView;

    sget-object v4, Lx4/o0;->i:Lrh/c;

    invoke-static {p3, v3, v4, v1}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->e:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->e:Landroid/widget/ImageView;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/k;->e()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object v3, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->f:Landroid/widget/ImageView;

    sget-object v4, Lx4/o0;->i:Lrh/c;

    invoke-static {p3, v3, v4, v1}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->f:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->f:Landroid/widget/ImageView;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/k;->f()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->g:Landroid/widget/ImageView;

    sget-object v3, Lx4/o0;->i:Lrh/c;

    invoke-static {p3, v2, v3, v1}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->g:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_3
    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->g:Landroid/widget/ImageView;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/k$a;->c:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
