.class Lnb/f$b;
.super Lnb/f$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnb/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lnb/f$d;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0378

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lnb/f$b;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Lob/f;)V
    .locals 1

    iget-object p1, p0, Lnb/f$b;->a:Landroid/widget/TextView;

    const v0, 0x7f120727

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
