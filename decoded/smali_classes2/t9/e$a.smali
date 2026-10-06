.class Lt9/e$a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt9/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lmiuix/slidingwidget/widget/SlidingButton;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0d16

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lt9/e$a;->a:Landroid/widget/TextView;

    const v0, 0x7f0b0d15

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lt9/e$a;->b:Landroid/widget/TextView;

    const v0, 0x7f0b08a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p1, p0, Lt9/e$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    return-void
.end method

.method static synthetic a(Lt9/e$a;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lt9/e$a;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lt9/e$a;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lt9/e$a;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lt9/e$a;)Lmiuix/slidingwidget/widget/SlidingButton;
    .locals 0

    iget-object p0, p0, Lt9/e$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    return-object p0
.end method
