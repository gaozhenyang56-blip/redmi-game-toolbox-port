.class public final Lyc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyc/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyc/c;

    invoke-direct {v0}, Lyc/c;-><init>()V

    sput-object v0, Lyc/c;->a:Lyc/c;

    const-string v0, "com.example.testandroid.t"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lqj/l;->f([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lyc/c;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b(Landroid/app/AppOpsManager;ILandroid/content/pm/PackageInfo;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager;",
            "I",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v1, 0x2741

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v0, v2}, Landroid/app/AppOpsManagerCompat;->setMode(Landroid/app/AppOpsManager;IILjava/lang/String;I)V

    iget-object p2, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageInfo;

    if-eqz p2, :cond_0

    iget-object p3, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v1, p3, p2, v2}, Landroid/app/AppOpsManagerCompat;->setMode(Landroid/app/AppOpsManager;IILjava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 29
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lyc/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "context"

    invoke-static {v1, v3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "xSpaceApps"

    invoke-static {v2, v3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "appops"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type android.app.AppOpsManager"

    invoke-static {v4, v5}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/app/AppOpsManager;

    const-string v5, "forbidden_chain_merge_status"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isForbiddenChainMerge:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "TAG"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v10

    invoke-virtual {v10}, Li4/a;->j()Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lx4/z1;->r()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v12, 0x3e7

    invoke-static {v10, v6, v12}, Loc/g$c;->a(Landroid/content/pm/PackageManager;II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageInfo;

    iget-object v13, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v13, v11

    if-nez v13, :cond_0

    iget-object v13, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v14, "xSpaceInfo.packageName"

    invoke-static {v13, v14}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "xSpaceInfo"

    invoke-static {v12, v14}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v12, v6

    :goto_1
    if-ge v12, v10, :cond_d

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageInfo;

    iget-object v14, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v15, v11

    if-eqz v15, :cond_2

    move v15, v11

    goto :goto_2

    :cond_2
    move v15, v6

    :goto_2
    if-nez v15, :cond_c

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v14}, Lx4/z1;->b(I)I

    move-result v14

    const/16 v15, 0x2710

    const-string v11, "info"

    const-string v6, "forbidden_chain_merge_status_for_uid"

    move/from16 v16, v10

    const/16 v10, 0x2741

    if-ge v14, v15, :cond_5

    const/4 v14, 0x0

    invoke-interface {v7, v6, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getWakePathRuleInfoList: "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x20

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "WakeWakePathUtils"

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_4

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x22

    if-le v6, v14, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    iget-object v6, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v14, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v10, v6, v14}, Landroid/app/AppOpsManagerCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;IILjava/lang/String;)I

    move-result v6

    :goto_3
    invoke-static {v13, v11}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v4, v6, v13, v2}, Lyc/c;->b(Landroid/app/AppOpsManager;ILandroid/content/pm/PackageInfo;Ljava/util/HashMap;)V

    :cond_4
    move-object v10, v5

    const/4 v6, 0x1

    goto/16 :goto_7

    :cond_5
    sget-boolean v14, Lcom/miui/permcenter/o;->t:Z

    if-eqz v14, :cond_a

    iget-object v14, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v15, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v10, v14, v15}, Landroid/app/AppOpsManagerCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;IILjava/lang/String;)I

    move-result v14

    if-nez v8, :cond_7

    iget-object v15, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    iget-object v15, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageInfo;

    if-eqz v15, :cond_7

    iget-object v10, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v17, v6

    iget-object v6, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v5

    const/16 v5, 0x2741

    invoke-static {v4, v5, v10, v6}, Landroid/app/AppOpsManagerCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;IILjava/lang/String;)I

    move-result v6

    const/4 v10, 0x1

    if-ne v14, v10, :cond_6

    if-nez v6, :cond_6

    iget-object v6, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v15, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5, v6, v15, v10}, Landroid/app/AppOpsManagerCompat;->setMode(Landroid/app/AppOpsManager;IILjava/lang/String;I)V

    goto :goto_4

    :cond_6
    if-nez v14, :cond_8

    if-ne v6, v10, :cond_8

    iget-object v6, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v14, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5, v6, v14, v10}, Landroid/app/AppOpsManagerCompat;->setMode(Landroid/app/AppOpsManager;IILjava/lang/String;I)V

    const/4 v14, 0x1

    goto :goto_4

    :cond_7
    move-object/from16 v18, v5

    move-object/from16 v17, v6

    :cond_8
    :goto_4
    sget-object v5, Lyc/c;->b:Ljava/util/ArrayList;

    iget-object v6, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {v13, v11}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v4, v14, v13, v2}, Lyc/c;->b(Landroid/app/AppOpsManager;ILandroid/content/pm/PackageInfo;Ljava/util/HashMap;)V

    goto :goto_5

    :cond_9
    move/from16 v26, v14

    goto :goto_6

    :cond_a
    move-object/from16 v18, v5

    move-object/from16 v17, v6

    :goto_5
    const/16 v26, 0x3

    :goto_6
    new-instance v5, Lyc/r;

    iget-object v6, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v10, "info.packageName"

    invoke-static {v6, v10}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v10}, Lx4/f1;->P(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "loadAppLabel(context, info.applicationInfo)"

    invoke-static {v10, v11}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x30

    const/16 v28, 0x0

    const-string v21, "callee"

    const-string v23, "calleeLabel"

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v10

    invoke-direct/range {v19 .. v28}, Lyc/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;IILbk/g;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v12, v5, :cond_b

    if-nez v8, :cond_b

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    move-object/from16 v10, v18

    invoke-interface {v5, v10, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    move-object/from16 v11, v17

    invoke-interface {v5, v11, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_7

    :cond_b
    move-object/from16 v10, v18

    goto :goto_7

    :cond_c
    move/from16 v16, v10

    move v6, v11

    move-object v10, v5

    :goto_7
    add-int/lit8 v12, v12, 0x1

    move v11, v6

    move-object v5, v10

    move/from16 v10, v16

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_d
    return-object v3
.end method
