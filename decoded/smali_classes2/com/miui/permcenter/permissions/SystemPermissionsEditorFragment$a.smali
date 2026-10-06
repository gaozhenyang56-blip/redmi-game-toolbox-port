.class Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment$a;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Lcom/miui/permcenter/permissions/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lw4/d;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment$a;->q:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment$a;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment$a;->J()Lcom/miui/permcenter/permissions/c;

    move-result-object v0

    return-object v0
.end method

.method public J()Lcom/miui/permcenter/permissions/c;
    .locals 14

    invoke-virtual {p0}, Lq0/a;->F()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment$a;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v1, Lcom/miui/permcenter/permissions/c;

    invoke-direct {v1}, Lcom/miui/permcenter/permissions/c;-><init>()V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lx4/z1;->y()I

    move-result v3

    iget-object v4, p0, Lcom/miui/permcenter/permissions/SystemPermissionsEditorFragment$a;->r:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/miui/permcenter/n;->f(Landroid/content/Context;ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/miui/permcenter/permissions/c;->c:Ljava/util/HashMap;

    iput-object v3, v1, Lcom/miui/permcenter/permissions/c;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v0

    invoke-static {}, Lhc/a;->c()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/miui/permission/PermissionManager;->getAllPermissions(I)Ljava/util/List;

    move-result-object v0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/permission/PermissionInfo;

    invoke-virtual {v6}, Lcom/miui/permission/PermissionInfo;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Lcom/miui/permission/PermissionInfo;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/permission/PermissionGroupInfo;

    new-instance v7, Lcom/miui/permcenter/permissions/d;

    invoke-direct {v7}, Lcom/miui/permcenter/permissions/d;-><init>()V

    iput-object v6, v7, Lcom/miui/permcenter/permissions/d;->a:Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v6}, Lcom/miui/permission/PermissionGroupInfo;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/miui/permission/PermissionGroupInfo;->getRelativePermissionIds()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/high16 v12, 0x2000000000000000L

    cmp-long v10, v10, v12

    if-nez v10, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/permission/PermissionInfo;

    if-eqz v9, :cond_5

    invoke-virtual {v6}, Lcom/miui/permission/PermissionGroupInfo;->getRelativePermissionIds()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    invoke-static {}, Lhc/a;->b()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/miui/permission/PermissionGroupInfo;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/permission/PermissionInfo;->setName(Ljava/lang/String;)V

    :cond_8
    iget-object v10, v7, Lcom/miui/permcenter/permissions/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    :goto_2
    return-object v1
.end method
