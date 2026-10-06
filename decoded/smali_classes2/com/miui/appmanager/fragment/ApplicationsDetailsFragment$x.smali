.class Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "x"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$x;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$x;->b:Landroid/content/Context;

    :cond_0
    iput-object p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$x;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$x;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$x;->b:Landroid/content/Context;

    if-eqz v1, :cond_5

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->K0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->C0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->L0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$x;->b:Landroid/content/Context;

    const v3, 0x7f121af1

    invoke-static {v2, v3}, Leg/c;->n(Landroid/content/Context;I)V

    invoke-static {}, Lef/x;->z()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)I

    move-result v2

    invoke-static {v2}, Lx4/b2;->d(I)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$x;->c:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$x;->b:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/miui/hybrid/accessory/sdk/HybridAccessoryClient;->showCreateIconDialog(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "ApplicationsDetailsActivity"

    const-string v4, "hybrid sdk showCreateIconDialog error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->M0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_5
    :goto_1
    return-void
.end method
