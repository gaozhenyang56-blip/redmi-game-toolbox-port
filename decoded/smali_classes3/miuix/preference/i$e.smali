.class Lmiuix/preference/i$e;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/i;->S(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lmiuix/preference/i;


# direct methods
.method constructor <init>(Lmiuix/preference/i;I)V
    .locals 0

    iput-object p1, p0, Lmiuix/preference/i$e;->b:Lmiuix/preference/i;

    iput p2, p0, Lmiuix/preference/i$e;->a:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_1

    iget-object p2, p0, Lmiuix/preference/i$e;->b:Lmiuix/preference/i;

    iget v0, p0, Lmiuix/preference/i$e;->a:I

    invoke-static {p2, v0}, Lmiuix/preference/i;->z(Lmiuix/preference/i;I)I

    iget-object p2, p0, Lmiuix/preference/i$e;->b:Lmiuix/preference/i;

    invoke-static {p2}, Lmiuix/preference/i;->A(Lmiuix/preference/i;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lmiuix/preference/i$e;->b:Lmiuix/preference/i;

    invoke-static {p2}, Lmiuix/preference/i;->A(Lmiuix/preference/i;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-static {p2, v0}, Lmiuix/preference/i;->B(Lmiuix/preference/i;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-object p2, p0, Lmiuix/preference/i$e;->b:Lmiuix/preference/i;

    invoke-static {p2}, Lmiuix/preference/i;->A(Lmiuix/preference/i;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_0
    iget-object p2, p0, Lmiuix/preference/i$e;->b:Lmiuix/preference/i;

    invoke-static {p2}, Lmiuix/preference/i;->y(Lmiuix/preference/i;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    :cond_1
    return-void
.end method
