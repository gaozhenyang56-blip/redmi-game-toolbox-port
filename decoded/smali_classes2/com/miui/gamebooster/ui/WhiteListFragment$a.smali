.class Lcom/miui/gamebooster/ui/WhiteListFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/WhiteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/WhiteListFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/WhiteListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$a;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$a;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WhiteListFragment;->f0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$a;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WhiteListFragment;->g0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$a;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WhiteListFragment;->g0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$a;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WhiteListFragment;->g0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$a;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WhiteListFragment;->h0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Lq6/f;

    move-result-object v0

    invoke-virtual {v0}, Lq6/f;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$a;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WhiteListFragment;->h0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Lq6/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lq6/f;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p2}, Lcom/miui/gamebooster/model/d;->i(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$a;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/WhiteListFragment;->h0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Lq6/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$a;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/model/d;

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/model/d;->g(Z)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    invoke-static {v0, v2, v1, p1, v4}, La8/j0;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    invoke-static {v0, v1, p1, v3, v4}, La8/j0;->b(Landroid/content/Context;Ljava/lang/String;IZI)V

    :goto_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$a;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/WhiteListFragment;->c0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v3

    move v0, p2

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/q;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/q;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gamebooster/model/d;

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/d;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move p1, v3

    :goto_2
    iget-object v1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$a;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/WhiteListFragment;->c0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_6

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$a;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/WhiteListFragment;->c0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/q;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/q;->c()Lcom/miui/gamebooster/model/r;

    move-result-object v2

    sget-object v5, Lcom/miui/gamebooster/model/r;->a:Lcom/miui/gamebooster/model/r;

    if-ne v2, v5, :cond_5

    iget-object v2, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$a;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const v6, 0x7f100067

    invoke-virtual {v2, v6, p2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/miui/gamebooster/ui/WhiteListFragment$a;->a(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$a;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v3

    invoke-virtual {v2, v6, p2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$a;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const v6, 0x7f100142

    invoke-virtual {v2, v6, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/miui/gamebooster/ui/WhiteListFragment$a;->a(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$a;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v3

    invoke-virtual {v2, v6, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/model/q;->f(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment$a;->a:Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/WhiteListFragment;->d0(Lcom/miui/gamebooster/ui/WhiteListFragment;)V

    return-void
.end method
