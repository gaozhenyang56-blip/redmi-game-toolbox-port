.class Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    iput-object p1, p0, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$a;->a:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$a;->a:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    invoke-static {p1}, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;->b0(Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$a;->a:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    invoke-static {p1}, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;->b0(Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p2, p0, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$a;->a:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    invoke-static {p2}, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;->b0(Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$a;->a:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    invoke-static {p2}, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;->b0(Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$a;->a:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    invoke-virtual {p2, p1}, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;->e0(Landroid/view/View;)F

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLayoutChange percent "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PermissionPreferenceFragment"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$a;->a:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    invoke-static {p2}, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;->c0(Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;)Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$c;

    move-result-object p2

    if-eqz p2, :cond_1

    float-to-double p1, p1

    const-wide p3, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double p1, p1, p3

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$a;->a:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    invoke-static {p1}, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;->c0(Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;)Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$c;->b()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$a;->a:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    invoke-static {p1}, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;->c0(Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;)Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$c;->a()V

    :cond_1
    :goto_0
    return-void
.end method
