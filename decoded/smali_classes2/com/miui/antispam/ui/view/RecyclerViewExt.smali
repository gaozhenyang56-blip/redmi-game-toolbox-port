.class public Lcom/miui/antispam/ui/view/RecyclerViewExt;
.super Lmiuix/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/ui/view/RecyclerViewExt$c;,
        Lcom/miui/antispam/ui/view/RecyclerViewExt$b;,
        Lcom/miui/antispam/ui/view/RecyclerViewExt$e;,
        Lcom/miui/antispam/ui/view/RecyclerViewExt$d;,
        Lcom/miui/antispam/ui/view/RecyclerViewExt$f;
    }
.end annotation


# instance fields
.field private u:Lcom/miui/antispam/ui/view/RecyclerViewExt$f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lmiuix/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/miui/antispam/ui/view/RecyclerViewExt$f;

    invoke-direct {p1}, Lcom/miui/antispam/ui/view/RecyclerViewExt$f;-><init>()V

    iput-object p1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt;->u:Lcom/miui/antispam/ui/view/RecyclerViewExt$f;

    return-void
.end method

.method private A(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->getPosition(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt;->u:Lcom/miui/antispam/ui/view/RecyclerViewExt$f;

    invoke-virtual {v0, p1}, Lcom/miui/antispam/ui/view/RecyclerViewExt$f;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt;->u:Lcom/miui/antispam/ui/view/RecyclerViewExt$f;

    return-object v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/view/RecyclerViewExt;->A(Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/view/RecyclerViewExt;->A(Landroid/view/View;)V

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method
