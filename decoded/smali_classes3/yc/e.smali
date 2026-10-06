.class public final Lyc/e;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lyc/e;->a:Landroid/view/View;

    const v0, 0x7f0b00e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lyc/e;->b:Landroid/widget/ImageView;

    const v0, 0x7f0b0993

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lyc/e;->c:Landroid/widget/ImageView;

    const v0, 0x7f0b00f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lyc/e;->d:Landroid/widget/TextView;

    const v0, 0x7f0b00e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lyc/e;->e:Landroid/widget/TextView;

    const v0, 0x7f0b0255

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lyc/e;->f:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lyc/e;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public final b()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lyc/e;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final c()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lyc/e;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lyc/e;->f:Landroid/view/View;

    return-object v0
.end method

.method public final e()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lyc/e;->c:Landroid/widget/ImageView;

    return-object v0
.end method
