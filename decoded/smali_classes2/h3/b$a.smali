.class public Lh3/b$a;
.super Lh3/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private b:Lcom/miui/securitycenter/ad/view/AdImageView;

.field private c:Landroid/widget/TextView;

.field protected d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lh3/g;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b00b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/securitycenter/ad/view/AdImageView;

    iput-object v0, p0, Lh3/b$a;->b:Lcom/miui/securitycenter/ad/view/AdImageView;

    const v0, 0x7f0b0be6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lh3/b$a;->c:Landroid/widget/TextView;

    const v0, 0x7f0b00fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lh3/b$a;->d:Landroid/widget/TextView;

    const v0, 0x7f0b00f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lh3/b$a;->e:Landroid/widget/TextView;

    const v0, 0x7f0b00f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lh3/b$a;->f:Landroid/widget/TextView;

    const v0, 0x7f0b0c89

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lh3/b$a;->g:Landroid/widget/TextView;

    const v0, 0x7f0b00e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lh3/b$a;->h:Landroid/widget/TextView;

    const v0, 0x7f0b01a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lh3/b$a;->i:Landroid/widget/TextView;

    const v0, 0x7f0b0c4f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lh3/b$a;->j:Landroid/view/View;

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lh3/b$a;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh3/b$a;->i:Landroid/widget/TextView;

    const v1, 0x7f1200a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lh3/b$a;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lh3/f;I)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lh3/g;->a(Landroid/view/View;Lh3/f;I)V

    check-cast p2, Lh3/b;

    new-instance p3, Lh3/b$a$a;

    invoke-direct {p3, p0, p2}, Lh3/b$a$a;-><init>(Lh3/b$a;Lh3/b;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Lh3/b;->isDownloadPause()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lh3/b$a;->d()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lh3/b$a;->e()V

    :goto_0
    iget-object v0, p0, Lh3/b$a;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {p2, p1, v0, p2}, Lh3/b;->j(Lh3/b;Landroid/content/Context;Landroid/widget/TextView;Lh3/b;)V

    iget-object v0, p0, Lh3/b$a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lh3/b$a;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lh3/b$a;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lh3/b$a;->j:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lh3/b$a;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object p3, p0, Lh3/b$a;->c:Landroid/widget/TextView;

    if-eqz p3, :cond_6

    invoke-static {p2}, Lh3/b;->k(Lh3/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object p3, p0, Lh3/b$a;->d:Landroid/widget/TextView;

    if-eqz p3, :cond_7

    invoke-static {p2}, Lh3/b;->l(Lh3/b;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-static {p2, v1}, Lh3/b;->m(Lh3/b;Z)Z

    iget-object p3, p0, Lh3/b$a;->d:Landroid/widget/TextView;

    const v0, 0x7f1200cc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Lh3/b;->n(Lh3/b;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object p3, p0, Lh3/b$a;->h:Landroid/widget/TextView;

    if-eqz p3, :cond_8

    invoke-static {p2}, Lh3/b;->o(Lh3/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object p3, p0, Lh3/b$a;->b:Lcom/miui/securitycenter/ad/view/AdImageView;

    if-eqz p3, :cond_a

    invoke-static {p2}, Lh3/b;->p(Lh3/b;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const v0, 0x7f0804c9

    if-nez p3, :cond_9

    invoke-static {p2}, Lh3/b;->p(Lh3/b;)Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lh3/b$a;->b:Lcom/miui/securitycenter/ad/view/AdImageView;

    sget-object v2, Lx4/o0;->h:Lrh/c;

    invoke-static {p3, v1, v2, v0}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    goto :goto_1

    :cond_9
    iget-object p3, p0, Lh3/b$a;->b:Lcom/miui/securitycenter/ad/view/AdImageView;

    invoke-virtual {p3, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :goto_1
    iget-object p3, p0, Lh3/b$a;->b:Lcom/miui/securitycenter/ad/view/AdImageView;

    instance-of p3, p3, Lcom/miui/securitycenter/ad/view/AdImageView;

    if-eqz p3, :cond_a

    const-string p3, "VIEW"

    invoke-virtual {p2, p1, p3}, Lh3/b;->s(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p2}, Lh3/b;->q(Lh3/b;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "ad_show"

    invoke-static {p3, p1}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-static {}, Lgb/b;->d()Lgb/b;

    move-result-object p1

    invoke-static {p2}, Lh3/b;->k(Lh3/b;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Lh3/b;->r(Lh3/b;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lgb/b;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/view/View;Lh3/f;)V
    .locals 1

    iget-object p1, p0, Lh3/g;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lh3/b$a;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    check-cast p2, Lh3/b;

    invoke-virtual {p2}, Lh3/b;->isDownloadPause()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lh3/b$a;->d()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lh3/b$a;->e()V

    :goto_0
    iget-object v0, p0, Lh3/b$a;->i:Landroid/widget/TextView;

    invoke-static {p2, p1, v0, p2}, Lh3/b;->j(Lh3/b;Landroid/content/Context;Landroid/widget/TextView;Lh3/b;)V

    :cond_1
    return-void
.end method
