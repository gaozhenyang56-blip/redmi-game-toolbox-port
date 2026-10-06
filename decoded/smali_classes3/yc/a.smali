.class public final Lyc/a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lmiuix/slidingwidget/widget/SlidingButton;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lyc/a;->a:Landroid/view/View;

    const v0, 0x7f0b0d16

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f121bce

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "view.findViewById<TextVi\u2026ger_checkbox_title)\n    }"

    invoke-static {v0, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lyc/a;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0d15

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.tx_perm_op_content)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lyc/a;->c:Landroid/widget/TextView;

    const v0, 0x7f0b08a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.perm_op_switch)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p1, p0, Lyc/a;->d:Lmiuix/slidingwidget/widget/SlidingButton;

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lyc/a;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public final b()Lmiuix/slidingwidget/widget/SlidingButton;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lyc/a;->d:Lmiuix/slidingwidget/widget/SlidingButton;

    return-object v0
.end method
