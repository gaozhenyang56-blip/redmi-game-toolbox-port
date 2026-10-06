.class public Lrd/a;
.super Ll4/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrd/a$c;,
        Lrd/a$b;
    }
.end annotation


# instance fields
.field private d:Z

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lrd/a$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ll4/b;-><init>()V

    return-void
.end method

.method static synthetic d(Lrd/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lrd/a;->d:Z

    return p1
.end method

.method static synthetic e(Lrd/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lrd/a;->h:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/content/Context;Ll4/f;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Ll4/b;->a(ILandroid/view/View;Landroid/content/Context;Ll4/f;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lrd/a$c;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Lrd/a$c;-><init>(Lrd/a$a;)V

    const p3, 0x1020006

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p1, Lrd/a$c;->a:Landroid/widget/ImageView;

    const p3, 0x1020016

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p1, Lrd/a$c;->b:Landroid/widget/TextView;

    const p3, 0x1020014

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p1, Lrd/a$c;->c:Landroid/widget/TextView;

    const p3, 0x1020019

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p1, Lrd/a$c;->d:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrd/a$c;

    :goto_0
    invoke-virtual {p0, p2, p1}, Lrd/a;->l(Landroid/view/View;Lrd/a$c;)V

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0e03f7

    return v0
.end method

.method public f()Lrd/a$b;
    .locals 1

    iget-object v0, p0, Lrd/a;->i:Lrd/a$b;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lrd/a;->g:Ljava/lang/String;

    return-void
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lrd/a;->e:I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lrd/a;->f:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lrd/a;->h:Ljava/lang/String;

    return-void
.end method

.method public k(Lrd/a$b;)V
    .locals 0

    iput-object p1, p0, Lrd/a;->i:Lrd/a$b;

    return-void
.end method

.method protected l(Landroid/view/View;Lrd/a$c;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p2, Lrd/a$c;->a:Landroid/widget/ImageView;

    const v2, 0x7f080939

    invoke-static {v1, v2}, Lme/a;->g(Landroid/widget/ImageView;I)V

    iget-boolean v1, p0, Lrd/a;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lrd/a;->i:Lrd/a$b;

    sget-object v3, Lrd/a$b;->b:Lrd/a$b;

    if-ne v1, v3, :cond_0

    iput v2, p0, Lrd/a;->e:I

    :cond_0
    iget-object v1, p0, Lrd/a;->i:Lrd/a$b;

    sget-object v3, Lrd/a$b;->a:Lrd/a$b;

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10013e

    iget v3, p0, Lrd/a;->e:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lrd/a;->e:I

    if-nez v1, :cond_2

    const v1, 0x7f1204c5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100021

    iget v3, p0, Lrd/a;->e:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p2, Lrd/a$c;->b:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lrd/a$c;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lrd/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lrd/a$c;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lrd/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lx4/h0;->b(Landroid/view/View;)Z

    new-instance v0, Lrd/a$a;

    invoke-direct {v0, p0}, Lrd/a$a;-><init>(Lrd/a;)V

    iget-object p2, p2, Lrd/a$c;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
