.class public Lrd/i;
.super Ll4/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrd/i$b;
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

    new-instance p1, Lrd/i$b;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, Lrd/i$b;-><init>(Lrd/i$a;)V

    const p4, 0x1020006

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p1, Lrd/i$b;->a:Landroid/widget/ImageView;

    const p4, 0x1020016

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lrd/i$b;->b:Landroid/widget/TextView;

    const p4, 0x1020014

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lrd/i$b;->c:Landroid/widget/TextView;

    const p4, 0x1020019

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lrd/i$b;->d:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrd/i$b;

    :goto_0
    invoke-virtual {p0, p3, p2, p1}, Lrd/i;->d(Landroid/content/Context;Landroid/view/View;Lrd/i$b;)V

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0e03f7

    return v0
.end method

.method protected d(Landroid/content/Context;Landroid/view/View;Lrd/i$b;)V
    .locals 7

    iget-object v0, p3, Lrd/i$b;->a:Landroid/widget/ImageView;

    const v1, 0x7f080992

    invoke-static {v0, v1}, Lme/a;->g(Landroid/widget/ImageView;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/w;->Q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lme/w;->g(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1}, Lme/w;->j(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lme/b0;->o(Landroid/content/Context;III)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p1, v0, v1, v4}, Lme/b0;->o(Landroid/content/Context;III)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    int-to-long v0, v0

    mul-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v5, v0

    invoke-static {p1, v5, v6}, Lme/b0;->q(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p3, Lrd/i$b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f1212d8

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p3, Lrd/i$b;->c:Landroid/widget/TextView;

    const v0, 0x7f1212da

    goto :goto_0

    :cond_0
    iget-object p1, p3, Lrd/i$b;->b:Landroid/widget/TextView;

    const v0, 0x7f12130e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p3, Lrd/i$b;->c:Landroid/widget/TextView;

    const v0, 0x7f12130c

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p3, Lrd/i$b;->d:Landroid/widget/TextView;

    const v0, 0x7f120450

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p2}, Lx4/h0;->b(Landroid/view/View;)Z

    new-instance p1, Lrd/i$a;

    invoke-direct {p1, p0}, Lrd/i$a;-><init>(Lrd/i;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p3, Lrd/i$b;->d:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
