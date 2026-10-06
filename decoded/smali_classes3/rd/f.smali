.class public Lrd/f;
.super Ll4/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrd/f$b;
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

    new-instance p1, Lrd/f$b;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, Lrd/f$b;-><init>(Lrd/f$a;)V

    const p4, 0x1020006

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p1, Lrd/f$b;->a:Landroid/widget/ImageView;

    const p4, 0x1020016

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lrd/f$b;->b:Landroid/widget/TextView;

    const p4, 0x1020014

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lrd/f$b;->c:Landroid/widget/TextView;

    const p4, 0x1020019

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lrd/f$b;->d:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrd/f$b;

    :goto_0
    invoke-virtual {p0, p3, p2, p1}, Lrd/f;->d(Landroid/content/Context;Landroid/view/View;Lrd/f$b;)V

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0e03f7

    return v0
.end method

.method protected d(Landroid/content/Context;Landroid/view/View;Lrd/f$b;)V
    .locals 5

    iget-object v0, p3, Lrd/f$b;->a:Landroid/widget/ImageView;

    const v1, 0x7f080820

    invoke-static {v0, v1}, Lme/a;->g(Landroid/widget/ImageView;I)V

    new-instance v0, Lfe/g;

    invoke-direct {v0}, Lfe/g;-><init>()V

    const/16 v1, 0xd

    iput v1, v0, Lfe/g;->a:I

    invoke-static {p1, v0}, Lfe/i;->b(Landroid/content/Context;Lfe/g;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lme/b0;->q(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p3, Lrd/f$b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const v0, 0x7f1212d8

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lrd/f$b;->c:Landroid/widget/TextView;

    const v1, 0x7f1212c8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p3, Lrd/f$b;->d:Landroid/widget/TextView;

    const v1, 0x7f1212d4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p2}, Lx4/h0;->b(Landroid/view/View;)Z

    new-instance v0, Lrd/f$a;

    invoke-direct {v0, p0, p1}, Lrd/f$a;-><init>(Lrd/f;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p3, Lrd/f$b;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
