.class Lr3/o$i;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr3/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b02f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lr3/o$i;->a:Landroid/widget/ImageView;

    const v0, 0x7f0b02f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lr3/o$i;->b:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lr3/o$i;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lr3/o$i;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lr3/o$i;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lr3/o$i;->a:Landroid/widget/ImageView;

    return-object p0
.end method
