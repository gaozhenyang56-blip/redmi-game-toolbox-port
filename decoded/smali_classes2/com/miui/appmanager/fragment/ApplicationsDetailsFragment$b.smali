.class Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Lcom/miui/appmanager/fragment/b;",
        ">;"
    }
.end annotation


# instance fields
.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lw4/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b;->r:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b;->q:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b;->J()Lcom/miui/appmanager/fragment/b;

    move-result-object v0

    return-object v0
.end method

.method public J()Lcom/miui/appmanager/fragment/b;
    .locals 9

    new-instance v0, Lcom/miui/appmanager/fragment/b;

    invoke-direct {v0}, Lcom/miui/appmanager/fragment/b;-><init>()V

    invoke-virtual {p0}, Lq0/a;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {}, Lx4/o0;->n()Lrh/d;

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b;->r:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->N0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b;->r:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Y0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->X0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;J)J

    invoke-virtual {p0}, Lq0/a;->F()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b;->r:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->a1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->Z0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Z)Z

    invoke-virtual {p0}, Lq0/a;->F()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v0

    :cond_4
    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b;->r:Landroid/content/Context;

    const-string v4, "appops"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    invoke-static {v1, v3}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->c1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Landroid/app/AppOpsManager;)Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b;->r:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)I

    move-result v4

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/permcenter/n;->f(Landroid/content/Context;ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->d1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-boolean v3, v1, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->s0:Z

    if-eqz v3, :cond_5

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->h1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)I

    move-result v3

    invoke-static {v3}, Lcom/miui/appmanager/AppManageUtils;->p(I)I

    move-result v3

    goto :goto_0

    :cond_5
    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->h1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)I

    move-result v3

    :goto_0
    invoke-static {v1, v3}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->f1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;I)I

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastT()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_7

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->b1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/app/AppOpsManager;

    move-result-object v3

    const/16 v6, 0x77

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->e1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)I

    move-result v7

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v6, v7, v8}, Landroid/app/AppOpsManagerCompat;->noteOpNoThrow(Landroid/app/AppOpsManager;IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v5

    goto :goto_1

    :cond_6
    move v3, v4

    :goto_1
    invoke-static {v1, v3}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->i1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Z)Z

    :cond_7
    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b;->r:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->k1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->j1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lq0/a;->F()Z

    move-result v3

    if-eqz v3, :cond_8

    return-object v0

    :cond_8
    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b;->r:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)I

    move-result v6

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/miui/appmanager/AppManageUtils;->e0(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->W0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Z)Z

    invoke-virtual {p0}, Lq0/a;->F()Z

    move-result v3

    if-eqz v3, :cond_9

    return-object v0

    :cond_9
    :try_start_0
    invoke-static {v2}, Lcom/miui/appmanager/AppManageUtils;->U(Landroid/content/ContextWrapper;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v3, "ApplicationsDetailsActivity"

    const-string v6, "hasNavigationBar error"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/appmanager/AppManageUtils;->x(Ljava/lang/String;)I

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b;->r:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->m1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v5

    goto :goto_3

    :cond_a
    move v3, v4

    :goto_3
    invoke-static {v1, v3}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->l1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Z)Z

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)I

    move-result v6

    const-string v7, "android.permission.INTERNET"

    invoke-static {v2, v7, v3, v6}, Lcom/miui/permcenter/l;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_b

    move v3, v5

    goto :goto_4

    :cond_b
    move v3, v4

    :goto_4
    invoke-static {v1, v3}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->n1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Z)Z

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x22

    if-le v3, v6, :cond_c

    invoke-static {}, Lx4/t;->E()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lx4/s1;->c()Lx4/s1;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lx4/s1;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, v1, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->J0:Ljava/util/List;

    goto :goto_5

    :cond_c
    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->s1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/os/UserHandle;

    move-result-object v6

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->R0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-static {v3, v6, v7, v2}, Lx4/d;->b(Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Lh3/n;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->o1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Lh3/n;)Lh3/n;

    :cond_d
    :goto_5
    invoke-virtual {v0, v5}, Lcom/miui/appmanager/fragment/b;->b(Z)V

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_e

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->r1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Z

    move-result v3

    if-eqz v3, :cond_e

    move v4, v5

    :cond_e
    invoke-static {v1, v4}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->q1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Z)Z

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->p1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->t1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {v1, v3}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->u1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Ljava/lang/String;)Ljava/lang/String;

    :cond_f
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_10

    const-string v3, "close_autostart_waring"

    invoke-static {v2, v3}, Lcom/miui/appmanager/AppManageUtils;->v(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Ljava/util/List;)Ljava/util/List;

    :cond_10
    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->y1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->x1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Z)Z

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->A1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->z1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Z)Z

    iget-object v2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$b;->r:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->B1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Landroid/content/Context;)V

    :cond_11
    return-object v0
.end method
