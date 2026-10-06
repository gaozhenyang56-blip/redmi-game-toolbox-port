.class Ll3/b$b;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b04d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ll3/b$b;->a:Landroid/widget/TextView;

    const v0, 0x7f0b06c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ll3/b$b;->b:Landroid/view/View;

    invoke-static {}, Ll3/b;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ll3/b$b;->a:Landroid/widget/TextView;

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    return-void
.end method
