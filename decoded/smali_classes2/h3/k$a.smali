.class public Lh3/k$a;
.super Lh3/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh3/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lh3/g;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b00c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lh3/k$a;->b:Landroid/widget/TextView;

    const v0, 0x7f0b00c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lh3/k$a;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lh3/f;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lh3/g;->a(Landroid/view/View;Lh3/f;I)V

    check-cast p2, Lh3/k;

    iget-object p1, p0, Lh3/k$a;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lh3/k;->k()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lh3/k$a;->c:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-static {p2}, Lh3/k;->j(Lh3/k;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lh3/k$a;->c:Landroid/view/View;

    invoke-static {p2}, Lh3/k;->j(Lh3/k;)Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
