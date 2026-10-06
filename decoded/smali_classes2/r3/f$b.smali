.class public Lr3/f$b;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr3/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Lcom/miui/autotask/view/TaskRecyclerView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Lcom/miui/common/ui/HoverSlidingSwitch;

.field e:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Landroid/view/View;Lr3/f$a;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0b72

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/autotask/view/TaskRecyclerView;

    iput-object v0, p0, Lr3/f$b;->a:Lcom/miui/autotask/view/TaskRecyclerView;

    const v0, 0x7f0b0b76

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lr3/f$b;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0b75

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lr3/f$b;->c:Landroid/widget/TextView;

    const v0, 0x7f0b0b74

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/ui/HoverSlidingSwitch;

    iput-object v0, p0, Lr3/f$b;->d:Lcom/miui/common/ui/HoverSlidingSwitch;

    const v0, 0x7f0b0b73

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lr3/f$b;->e:Landroid/widget/CheckBox;

    new-instance v0, Lr3/g;

    invoke-direct {v0, p0, p2, p1}, Lr3/g;-><init>(Lr3/f$b;Lr3/f$a;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lr3/h;

    invoke-direct {v0, p0, p2, p1}, Lr3/h;-><init>(Lr3/f$b;Lr3/f$a;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public static synthetic a(Lr3/f$b;Lr3/f$a;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lr3/f$b;->c(Lr3/f$a;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lr3/f$b;Lr3/f$a;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lr3/f$b;->d(Lr3/f$a;Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private synthetic c(Lr3/f$a;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lr3/f$a;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private synthetic d(Lr3/f$a;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lr3/f$a;->c(Landroid/view/View;I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
