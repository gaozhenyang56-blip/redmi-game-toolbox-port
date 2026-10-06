.class public Lrd/e;
.super Ll4/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrd/e$b;
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

    new-instance p1, Lrd/e$b;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, Lrd/e$b;-><init>(Lrd/e$a;)V

    const p4, 0x1020006

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p1, Lrd/e$b;->a:Landroid/widget/ImageView;

    const p4, 0x1020016

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lrd/e$b;->b:Landroid/widget/TextView;

    const p4, 0x1020014

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lrd/e$b;->c:Landroid/widget/TextView;

    const p4, 0x1020019

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lrd/e$b;->d:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrd/e$b;

    :goto_0
    invoke-virtual {p0, p2, p1, p3}, Lrd/e;->d(Landroid/view/View;Lrd/e$b;Landroid/content/Context;)V

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0e03f7

    return v0
.end method

.method protected d(Landroid/view/View;Lrd/e$b;Landroid/content/Context;)V
    .locals 1

    iget-object p3, p2, Lrd/e$b;->a:Landroid/widget/ImageView;

    const v0, 0x7f080e2b

    invoke-static {p3, v0}, Lme/a;->g(Landroid/widget/ImageView;I)V

    iget-object p3, p2, Lrd/e$b;->b:Landroid/widget/TextView;

    const v0, 0x7f121212

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p3, p2, Lrd/e$b;->c:Landroid/widget/TextView;

    const v0, 0x7f12063c

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p3, p2, Lrd/e$b;->d:Landroid/widget/TextView;

    const v0, 0x7f120450

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p1}, Lx4/h0;->b(Landroid/view/View;)Z

    new-instance p3, Lrd/e$a;

    invoke-direct {p3, p0}, Lrd/e$a;-><init>(Lrd/e;)V

    iget-object p2, p2, Lrd/e$b;->d:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
