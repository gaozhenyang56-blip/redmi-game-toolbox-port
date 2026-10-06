.class public abstract Lwb/a;
.super Lmiuix/recyclerview/card/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">",
        "Lmiuix/recyclerview/card/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lwb/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/recyclerview/card/e;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemViewGroup(I)I
    .locals 0

    const/high16 p1, -0x80000000

    return p1
.end method

.method public k(Lwb/b;)V
    .locals 0

    iput-object p1, p0, Lwb/a;->a:Lwb/b;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lmiuix/recyclerview/card/e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    iget-object p2, p0, Lwb/a;->a:Lwb/b;

    if-eqz p2, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-interface {p2, p1}, Lwb/b;->setHorizontalPadding(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setHasStableIds()V
    .locals 0

    return-void
.end method
