.class Lt5/o;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/CheckBox;

.field d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b00e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lt5/o;->a:Landroid/widget/ImageView;

    const v0, 0x7f0b00f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lt5/o;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0979

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lt5/o;->c:Landroid/widget/CheckBox;

    iput-object p1, p0, Lt5/o;->d:Landroid/view/View;

    return-void
.end method
