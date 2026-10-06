.class Lfe/j$i;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfe/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/CheckBox;

.field d:Landroid/view/ViewGroup;

.field e:Landroid/view/ViewGroup;

.field f:Landroid/widget/ImageView;

.field g:Landroid/widget/RelativeLayout;

.field h:Landroid/widget/TextView;

.field final synthetic i:Lfe/j;


# direct methods
.method public constructor <init>(Lfe/j;Landroid/view/View;)V
    .locals 0
    .param p1    # Lfe/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lfe/j$i;->i:Lfe/j;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b0bc9

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lfe/j$i;->a:Landroid/widget/TextView;

    const p1, 0x7f0b0bbe

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lfe/j$i;->b:Landroid/widget/TextView;

    const p1, 0x7f0b0a41

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lfe/j$i;->c:Landroid/widget/CheckBox;

    const p1, 0x7f0b0235

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lfe/j$i;->d:Landroid/view/ViewGroup;

    const p1, 0x7f0b05c0

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lfe/j$i;->e:Landroid/view/ViewGroup;

    const p1, 0x7f0b0afa

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lfe/j$i;->f:Landroid/widget/ImageView;

    const p1, 0x7f0b09c2

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lfe/j$i;->g:Landroid/widget/RelativeLayout;

    const p1, 0x7f0b0b21

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lfe/j$i;->h:Landroid/widget/TextView;

    return-void
.end method
