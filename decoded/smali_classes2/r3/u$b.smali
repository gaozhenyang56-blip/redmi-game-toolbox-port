.class public Lr3/u$b;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr3/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/RadioButton;

.field d:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Landroid/view/View;Lr3/u$a;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b00e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lr3/u$b;->a:Landroid/widget/ImageView;

    const v0, 0x7f0b00f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lr3/u$b;->b:Landroid/widget/TextView;

    const v0, 0x7f0b00f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lr3/u$b;->c:Landroid/widget/RadioButton;

    const v0, 0x7f0b00de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lr3/u$b;->d:Landroid/widget/CheckBox;

    new-instance v0, Lr3/v;

    invoke-direct {v0, p0, p2}, Lr3/v;-><init>(Lr3/u$b;Lr3/u$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Lr3/u$b;Lr3/u$a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lr3/u$b;->b(Lr3/u$a;Landroid/view/View;)V

    return-void
.end method

.method private synthetic b(Lr3/u$a;Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getBindingAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getBindingAdapterPosition()I

    move-result v0

    invoke-interface {p1, p2, v0}, Lr3/u$a;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
