.class public Lrd/b;
.super Ll4/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrd/b$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ll4/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/content/Context;Ll4/f;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Ll4/b;->a(ILandroid/view/View;Landroid/content/Context;Ll4/f;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lrd/b$b;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Lrd/b$b;-><init>(Lrd/b$a;)V

    const p3, 0x1020006

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p1, Lrd/b$b;->a:Landroid/widget/ImageView;

    const p3, 0x1020016

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p1, Lrd/b$b;->b:Landroid/widget/TextView;

    const p3, 0x1020014

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p1, Lrd/b$b;->c:Landroid/widget/TextView;

    const p3, 0x1020019

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p1, Lrd/b$b;->d:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrd/b$b;

    :goto_0
    invoke-virtual {p0, p2, p1}, Lrd/b;->d(Landroid/view/View;Lrd/b$b;)V

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0e03f7

    return v0
.end method

.method protected d(Landroid/view/View;Lrd/b$b;)V
    .locals 2

    iget-object v0, p2, Lrd/b$b;->a:Landroid/widget/ImageView;

    const v1, 0x7f0808fb

    invoke-static {v0, v1}, Lme/a;->g(Landroid/widget/ImageView;I)V

    iget-object v0, p2, Lrd/b$b;->b:Landroid/widget/TextView;

    const v1, 0x7f120318

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p2, Lrd/b$b;->c:Landroid/widget/TextView;

    const v1, 0x7f12034b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p2, Lrd/b$b;->d:Landroid/widget/TextView;

    const v1, 0x7f120450

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p1}, Lx4/h0;->b(Landroid/view/View;)Z

    new-instance v0, Lrd/b$a;

    invoke-direct {v0, p0}, Lrd/b$a;-><init>(Lrd/b;)V

    iget-object p2, p2, Lrd/b$b;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
