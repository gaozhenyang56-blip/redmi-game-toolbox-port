.class public Landroidx/recyclerview/widget/RecyclerView$o;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation


# instance fields
.field final mDecorInsets:Landroid/graphics/Rect;

.field mInsetsDirty:Z

.field mPendingInvalidate:Z

.field mViewHolder:Landroidx/recyclerview/widget/RecyclerView$c0;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mInsetsDirty:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mPendingInvalidate:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mInsetsDirty:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mPendingInvalidate:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mInsetsDirty:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mPendingInvalidate:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mInsetsDirty:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mPendingInvalidate:Z

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$o;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mInsetsDirty:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mPendingInvalidate:Z

    return-void
.end method


# virtual methods
.method public getAbsoluteAdapterPosition()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAbsoluteAdapterPosition()I

    move-result v0

    return v0
.end method

.method public getBindingAdapterPosition()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getBindingAdapterPosition()I

    move-result v0

    return v0
.end method

.method public getViewAdapterPosition()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getBindingAdapterPosition()I

    move-result v0

    return v0
.end method

.method public getViewLayoutPosition()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result v0

    return v0
.end method

.method public getViewPosition()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getPosition()I

    move-result v0

    return v0
.end method

.method public isItemChanged()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->isUpdated()Z

    move-result v0

    return v0
.end method

.method public isItemRemoved()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->isRemoved()Z

    move-result v0

    return v0
.end method

.method public isViewInvalid()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->isInvalid()Z

    move-result v0

    return v0
.end method

.method public viewNeedsUpdate()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->needsUpdate()Z

    move-result v0

    return v0
.end method
