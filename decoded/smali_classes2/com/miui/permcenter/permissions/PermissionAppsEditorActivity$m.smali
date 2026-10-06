.class Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$m;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$m;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$m;->b:Ljava/util/ArrayList;

    iput p3, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$m;->c:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$m;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    const/4 v9, 0x0

    if-nez v2, :cond_d

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v15

    sget-object v2, Lxc/u;->a:Lxc/u;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->h0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lxc/u;->n(I)Z

    move-result v2

    const/4 v14, 0x0

    if-eqz v2, :cond_7

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iget-object v2, v0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$m;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {v11}, Lcom/miui/permcenter/AppPermissionInfo;->getTargetSdkVersion()I

    move-result v2

    const/16 v3, 0x21

    const-wide v4, 0x200000000000L

    if-ge v2, v3, :cond_3

    invoke-virtual {v11}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v11}, Lcom/miui/permcenter/AppPermissionInfo;->getUid()I

    move-result v2

    invoke-static {v2}, Lx4/z1;->m(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Lcom/miui/permcenter/AppPermissionInfo;->getUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v12, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v11}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v11}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/miui/permcenter/AppPermissionInfo;->getUserId()I

    move-result v3

    invoke-static {v2, v14, v3}, Ltg/a;->d(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v11}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v11}, Lcom/miui/permcenter/AppPermissionInfo;->getUserId()I

    move-result v5

    invoke-static {v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->n0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget v13, v0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$m;->c:I

    move-object v2, v1

    move-object v4, v6

    move-wide v6, v7

    move v8, v13

    invoke-static/range {v2 .. v8}, Lxc/u;->v(Landroid/content/Context;ZLandroid/content/pm/PackageInfo;IJI)V

    invoke-virtual {v11}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/miui/permcenter/AppPermissionInfo;->getUserId()I

    move-result v4

    invoke-static {v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->n0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget v7, v0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$m;->c:I

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lxc/u;->B(Landroid/content/Context;Ljava/lang/String;IJI)V

    goto/16 :goto_0

    :cond_4
    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/Integer;

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    new-array v3, v14, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, [Ljava/lang/String;

    array-length v11, v13

    move v7, v14

    :goto_2
    if-ge v7, v11, :cond_5

    aget-object v3, v13, v7

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-wide v5, 0x200000000000L

    iget v2, v0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$m;->c:I

    move/from16 v16, v2

    move-object v2, v1

    move/from16 v17, v7

    move/from16 v7, v16

    invoke-static/range {v2 .. v7}, Lxc/u;->B(Landroid/content/Context;Ljava/lang/String;IJI)V

    add-int/lit8 v7, v17, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-wide v2, 0x200000000000L

    iget v4, v0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$m;->c:I

    const/4 v5, 0x2

    move-object v10, v15

    move-object v6, v12

    move-object v7, v13

    move-wide v12, v2

    move v3, v14

    move v14, v4

    move-object v4, v15

    move v15, v5

    move-object/from16 v16, v7

    invoke-static/range {v10 .. v16}, Lcom/miui/permcenter/compact/PermissionManagerCompat;->setApplicationPermissionWithVirtual(Lcom/miui/permission/PermissionManager;IJII[Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object v6, v12

    move v3, v14

    move-object v4, v15

    :goto_3
    move v14, v3

    move-object v15, v4

    move-object v12, v6

    goto :goto_1

    :cond_7
    move v3, v14

    move-object v4, v15

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object v2, v0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$m;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {v5}, Lcom/miui/permcenter/AppPermissionInfo;->getUid()I

    move-result v6

    invoke-static {v6}, Lx4/z1;->m(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lcom/miui/permcenter/AppPermissionInfo;->getUid()I

    move-result v7

    invoke-static {v7}, Lx4/z1;->m(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {v5}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/Integer;

    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_c

    new-array v5, v3, [Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, [Ljava/lang/String;

    invoke-static {}, Lmc/c;->l()Z

    move-result v2

    if-nez v2, :cond_a

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v2, v5, :cond_a

    invoke-static {v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->r0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)J

    move-result-wide v5

    const-wide/16 v10, 0x20

    cmp-long v2, v5, v10

    if-nez v2, :cond_a

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v5, v0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$m;->c:I

    invoke-static {v4, v2, v5, v14}, Lcom/miui/permcenter/n;->l(Lcom/miui/permission/PermissionManager;II[Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_a
    invoke-static {v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->n0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/Long;

    array-length v11, v14

    move v12, v3

    :goto_7
    if-ge v12, v11, :cond_b

    aget-object v5, v14, v12

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    iget v7, v0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$m;->c:I

    move-object v2, v1

    move/from16 v21, v3

    move-object v3, v5

    move-object/from16 v22, v4

    move v4, v6

    move-wide/from16 v5, v19

    invoke-static/range {v2 .. v7}, Lxc/u;->B(Landroid/content/Context;Ljava/lang/String;IJI)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v21

    move-object/from16 v4, v22

    goto :goto_7

    :cond_b
    move/from16 v21, v3

    move-object/from16 v22, v4

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget v2, v0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$m;->c:I

    const/4 v3, 0x2

    move-object/from16 v10, v22

    move-object v4, v14

    move v14, v2

    move-object v2, v15

    move v15, v3

    move-object/from16 v16, v4

    invoke-static/range {v10 .. v16}, Lcom/miui/permcenter/compact/PermissionManagerCompat;->setApplicationPermissionWithVirtual(Lcom/miui/permission/PermissionManager;IJII[Ljava/lang/String;)V

    move-object v15, v2

    move-object v14, v4

    move/from16 v3, v21

    move-object/from16 v4, v22

    goto :goto_6

    :cond_c
    :goto_8
    move/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v3, v21

    move-object/from16 v4, v22

    goto/16 :goto_5

    :cond_d
    :goto_9
    return-object v9
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$m;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
