.class Lt9/e$b;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt9/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/ImageView;

.field private final d:Lmiuix/slidingwidget/widget/SlidingButton;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0bc9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lt9/e$b;->a:Landroid/widget/TextView;

    const v0, 0x7f0b0506

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lt9/e$b;->b:Landroid/widget/ImageView;

    const v0, 0x7f0b003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lt9/e$b;->c:Landroid/widget/ImageView;

    const v0, 0x7f0b0a9f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p1, p0, Lt9/e$b;->d:Lmiuix/slidingwidget/widget/SlidingButton;

    return-void
.end method

.method static synthetic a(Lt9/e$b;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lt9/e$b;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lt9/e$b;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lt9/e$b;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c(Lt9/e$b;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lt9/e$b;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lt9/e$b;)Lmiuix/slidingwidget/widget/SlidingButton;
    .locals 0

    iget-object p0, p0, Lt9/e$b;->d:Lmiuix/slidingwidget/widget/SlidingButton;

    return-object p0
.end method
