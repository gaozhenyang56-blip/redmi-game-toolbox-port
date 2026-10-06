.class Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$b;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$b;->a:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$b;->a:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    invoke-static {p1}, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;->b0(Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$b;->a:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    invoke-static {p1}, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;->b0(Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget-object p2, p0, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$b;->a:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    invoke-static {p2}, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;->b0(Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$b;->a:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    invoke-virtual {p2, p1}, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;->e0(Landroid/view/View;)F

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "percent "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PermissionPreferenceFragment"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    float-to-double p1, p1

    const-wide v0, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpl-double p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$b;->a:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    invoke-static {p1}, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;->c0(Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;)Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$b;->a:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    invoke-static {p1}, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;->c0(Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;)Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$c;->a()V

    :cond_0
    return-void
.end method
