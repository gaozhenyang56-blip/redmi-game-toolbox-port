.class public abstract Lcom/miui/antispam/ui/view/RecyclerViewExt$d;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/ui/view/RecyclerViewExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/miui/antispam/ui/view/RecyclerViewExt$e;

.field private c:Landroid/view/ActionMode;

.field private d:Landroid/util/SparseBooleanArray;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->d:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->e:Z

    return-void
.end method

.method static synthetic k(Lcom/miui/antispam/ui/view/RecyclerViewExt$d;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->c:Landroid/view/ActionMode;

    return-object p1
.end method

.method private t(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->e:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->e:Z

    invoke-direct {p0, v0}, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->t(Z)V

    return-void
.end method

.method public m()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->e:Z

    iget-object v1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    invoke-direct {p0, v0}, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->t(Z)V

    return-void
.end method

.method public n()Landroid/view/ActionMode$Callback;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->b:Lcom/miui/antispam/ui/view/RecyclerViewExt$e;

    return-object v0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d$a;

    invoke-direct {v0, p0, p2}, Lcom/miui/antispam/ui/view/RecyclerViewExt$d$a;-><init>(Lcom/miui/antispam/ui/view/RecyclerViewExt$d;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public p()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->o()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q(I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public r(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public s(IZZ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->d:Landroid/util/SparseBooleanArray;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->b:Lcom/miui/antispam/ui/view/RecyclerViewExt$e;

    iget-object v1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->c:Landroid/view/ActionMode;

    invoke-interface {v0, v1, p1, p2}, Lcom/miui/antispam/ui/view/RecyclerViewExt$e;->H(Landroid/view/ActionMode;IZ)V

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public u(Landroid/app/Activity;Lcom/miui/antispam/ui/view/RecyclerViewExt$e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->b:Lcom/miui/antispam/ui/view/RecyclerViewExt$e;

    return-void
.end method

.method public v(Landroid/content/Context;Landroid/view/ActionMode;)V
    .locals 7

    invoke-virtual {p0}, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->o()I

    move-result v0

    const v1, 0x7f0b035d

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f120dee

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f100076

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p1, v3, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
