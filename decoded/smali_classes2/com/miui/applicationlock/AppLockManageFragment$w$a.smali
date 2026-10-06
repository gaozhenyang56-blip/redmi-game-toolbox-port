.class Lcom/miui/applicationlock/AppLockManageFragment$w$a;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/AppLockManageFragment$w;->onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Ljava/util/ArrayList<",
        "Lc3/o;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic q:Lcom/miui/applicationlock/AppLockManageFragment$w;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/AppLockManageFragment$w;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$w$a;->q:Lcom/miui/applicationlock/AppLockManageFragment$w;

    invoke-direct {p0, p2}, Lw4/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/applicationlock/AppLockManageFragment$w$a;->J()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lc3/o;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/applicationlock/AppLockManageFragment$w$a;->q:Lcom/miui/applicationlock/AppLockManageFragment$w;

    invoke-static {v1}, Lcom/miui/applicationlock/AppLockManageFragment$w;->a(Lcom/miui/applicationlock/AppLockManageFragment$w;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/applicationlock/AppLockManageFragment;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-static {}, Lc3/f;->t()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lc3/o;

    invoke-direct {v6}, Lc3/o;-><init>()V

    new-instance v7, Lc3/o;

    invoke-direct {v7}, Lc3/o;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, "zh"

    const/4 v12, 0x1

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    iget-object v13, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/applicationlock/AppLockManageFragment;->Q0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14, v13}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lc3/b;

    iget v0, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v12, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12}, Lx4/z1;->m(I)I

    move-result v12

    invoke-direct {v15, v14, v0, v13, v12}, Lc3/b;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/miui/applicationlock/AppLockManageFragment;->m0(Lcom/miui/applicationlock/AppLockManageFragment;)Lmiui/security/SecurityManager;

    move-result-object v0

    iget v12, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12}, Lx4/z1;->m(I)I

    move-result v12

    invoke-virtual {v0, v13, v12}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {v15, v0}, Lc3/b;->h(Z)V

    invoke-static {v1}, Lcom/miui/applicationlock/AppLockManageFragment;->m0(Lcom/miui/applicationlock/AppLockManageFragment;)Lmiui/security/SecurityManager;

    move-result-object v0

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Lx4/z1;->m(I)I

    move-result v10

    invoke-virtual {v0, v13, v10}, Lmiui/security/SecurityManager;->getApplicationMaskNotificationEnabledAsUser(Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {v15, v0}, Lc3/b;->i(Z)V

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Lc3/b;->j(Z)V

    sget-object v0, Lcom/miui/applicationlock/AppLockManageFragment;->K:Ljava/util/ArrayList;

    invoke-virtual {v15}, Lc3/b;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/miui/applicationlock/AppLockManageFragment;->E0(Lcom/miui/applicationlock/AppLockManageFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v15, v0}, Lc3/b;->j(Z)V

    :cond_1
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v15}, Lc3/b;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_4
    invoke-static {v1, v9}, Lcom/miui/applicationlock/AppLockManageFragment;->G0(Lcom/miui/applicationlock/AppLockManageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/miui/applicationlock/AppLockManageFragment;->H0(Lcom/miui/applicationlock/AppLockManageFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_5

    invoke-static {v1}, Lcom/miui/applicationlock/AppLockManageFragment;->E0(Lcom/miui/applicationlock/AppLockManageFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v1}, Lcom/miui/applicationlock/AppLockManageFragment;->I0(Lcom/miui/applicationlock/AppLockManageFragment;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    invoke-virtual {v6, v3}, Lc3/o;->e(Ljava/util/List;)V

    sget-object v0, Lc3/p;->a:Lc3/p;

    invoke-virtual {v6, v0}, Lc3/o;->g(Lc3/p;)V

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_6

    invoke-static {v1}, Lcom/miui/applicationlock/AppLockManageFragment;->E0(Lcom/miui/applicationlock/AppLockManageFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v1}, Lcom/miui/applicationlock/AppLockManageFragment;->J0(Lcom/miui/applicationlock/AppLockManageFragment;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_6
    invoke-virtual {v7, v5}, Lc3/o;->e(Ljava/util/List;)V

    sget-object v0, Lc3/p;->b:Lc3/p;

    invoke-virtual {v7, v0}, Lc3/o;->g(Lc3/p;)V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/miui/applicationlock/AppLockManageFragment;->K0(Lcom/miui/applicationlock/AppLockManageFragment;)Lc3/o;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v8
.end method
