.class public Lh3/a$a;
.super Lh3/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private k:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lh3/b$a;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0b24

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lh3/a$a;->k:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lh3/f;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lh3/b$a;->a(Landroid/view/View;Lh3/f;I)V

    check-cast p2, Lh3/a;

    iget-object p1, p0, Lh3/a$a;->k:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-static {p2}, Lh3/a;->F(Lh3/a;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lh3/b$a;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lh3/b;->t()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
