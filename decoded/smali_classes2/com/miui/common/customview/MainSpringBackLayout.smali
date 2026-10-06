.class public Lcom/miui/common/customview/MainSpringBackLayout;
.super Lmiuix/springback/view/SpringBackLayout;
.source "SourceFile"


# instance fields
.field private N:I

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Landroid/view/View$OnScrollChangeListener;

.field private T:Lcom/miui/common/customview/FirstTouchRecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/springback/view/SpringBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/common/customview/MainSpringBackLayout;->Q:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/common/customview/MainSpringBackLayout;->R:Z

    invoke-direct {p0}, Lcom/miui/common/customview/MainSpringBackLayout;->W()V

    return-void
.end method

.method static synthetic O(Lcom/miui/common/customview/MainSpringBackLayout;I)I
    .locals 0

    iput p1, p0, Lcom/miui/common/customview/MainSpringBackLayout;->N:I

    return p1
.end method

.method static synthetic P(Lcom/miui/common/customview/MainSpringBackLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/MainSpringBackLayout;->P:Z

    return p1
.end method

.method static synthetic Q(Lcom/miui/common/customview/MainSpringBackLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/MainSpringBackLayout;->O:Z

    return p1
.end method

.method static synthetic R(Lcom/miui/common/customview/MainSpringBackLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/common/customview/MainSpringBackLayout;->Q:Z

    return p0
.end method

.method static synthetic S(Lcom/miui/common/customview/MainSpringBackLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/MainSpringBackLayout;->Q:Z

    return p1
.end method

.method static synthetic T(Lcom/miui/common/customview/MainSpringBackLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/common/customview/MainSpringBackLayout;->R:Z

    return p0
.end method

.method static synthetic U(Lcom/miui/common/customview/MainSpringBackLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/MainSpringBackLayout;->R:Z

    return p1
.end method

.method static synthetic V(Lcom/miui/common/customview/MainSpringBackLayout;)Landroid/view/View$OnScrollChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/customview/MainSpringBackLayout;->S:Landroid/view/View$OnScrollChangeListener;

    return-object p0
.end method

.method private W()V
    .locals 1

    new-instance v0, Lcom/miui/common/customview/MainSpringBackLayout$a;

    invoke-direct {v0, p0}, Lcom/miui/common/customview/MainSpringBackLayout$a;-><init>(Lcom/miui/common/customview/MainSpringBackLayout;)V

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    invoke-direct {p0}, Lcom/miui/common/customview/MainSpringBackLayout;->X()V

    return-void
.end method

.method private X()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/customview/MainSpringBackLayout;->T:Lcom/miui/common/customview/FirstTouchRecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/miui/common/customview/MainSpringBackLayout$b;

    invoke-direct {v1, p0}, Lcom/miui/common/customview/MainSpringBackLayout$b;-><init>(Lcom/miui/common/customview/MainSpringBackLayout;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    return-void
.end method


# virtual methods
.method public Y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/customview/MainSpringBackLayout;->P:Z

    return v0
.end method

.method public Z()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/customview/MainSpringBackLayout;->Q:Z

    return v0
.end method

.method public a0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/customview/MainSpringBackLayout;->O:Z

    return v0
.end method

.method public getSpringY()I
    .locals 1

    iget v0, p0, Lcom/miui/common/customview/MainSpringBackLayout;->N:I

    return v0
.end method

.method public setBottomSpring(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/MainSpringBackLayout;->P:Z

    return-void
.end method

.method public setCanSetFirstDrag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/MainSpringBackLayout;->R:Z

    return-void
.end method

.method public setFirstDragDown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/MainSpringBackLayout;->Q:Z

    return-void
.end method

.method public setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/MainSpringBackLayout;->S:Landroid/view/View$OnScrollChangeListener;

    return-void
.end method

.method public setRecyclerView(Lcom/miui/common/customview/FirstTouchRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/MainSpringBackLayout;->T:Lcom/miui/common/customview/FirstTouchRecyclerView;

    invoke-direct {p0}, Lcom/miui/common/customview/MainSpringBackLayout;->X()V

    return-void
.end method

.method public setTopSpring(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/MainSpringBackLayout;->O:Z

    return-void
.end method
