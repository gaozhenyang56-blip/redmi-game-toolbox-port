.class Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->s0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment$b;->b:Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;

    iput-boolean p2, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment$b;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment$b;->b:Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment$b;->b:Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment$b;->b:Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment$b;->b:Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;

    invoke-static {v0}, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->l0(Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment$b;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment$b;->b:Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/view/View;

    invoke-static {v1}, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->m0(Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment$b;->b:Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;

    invoke-static {v4}, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->n0(Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;)Landroid/widget/TextView;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment$b;->b:Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;

    iget-object v4, v4, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->c:Landroid/widget/Button;

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->o0(Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;[Landroid/view/View;)I

    move-result v2

    :cond_1
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment$b;->b:Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;

    invoke-static {v1}, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->l0(Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method
