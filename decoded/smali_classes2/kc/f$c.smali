.class public Lkc/f$c;
.super Lkc/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkc/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lkc/f$a;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0506

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lkc/f$c;->a:Landroid/widget/ImageView;

    const v0, 0x7f0b08b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lkc/f$c;->b:Landroid/widget/TextView;

    const v0, 0x7f0b08b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lkc/f$c;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Lpc/a;)V
    .locals 2

    invoke-super {p0, p1}, Lkc/f$a;->a(Lpc/a;)V

    instance-of v0, p1, Lpc/c;

    if-eqz v0, :cond_0

    check-cast p1, Lpc/c;

    iget-object v0, p0, Lkc/f$c;->b:Landroid/widget/TextView;

    iget v1, p1, Lpc/c;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lkc/f$c;->c:Landroid/widget/TextView;

    iget v1, p1, Lpc/c;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lkc/f$c;->a:Landroid/widget/ImageView;

    iget p1, p1, Lpc/c;->c:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method
