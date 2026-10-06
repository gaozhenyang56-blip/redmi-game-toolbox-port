.class public Lh3/m$a;
.super Lh3/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh3/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lh3/g;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b00bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lh3/m$a;->b:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lh3/f;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lh3/g;->a(Landroid/view/View;Lh3/f;I)V

    check-cast p2, Lh3/m;

    iget-object p1, p0, Lh3/m$a;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-static {p2}, Lh3/m;->j(Lh3/m;)Landroid/text/SpannableString;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
