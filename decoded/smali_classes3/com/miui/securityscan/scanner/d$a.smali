.class Lcom/miui/securityscan/scanner/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/scanner/d;->n(Lkf/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkf/b;

.field final synthetic b:Lcom/miui/securityscan/scanner/d;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/d;Lkf/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/d$a;->b:Lcom/miui/securityscan/scanner/d;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/d$a;->a:Lkf/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    move-object/from16 v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v3, v1, Lcom/miui/securityscan/scanner/d$a;->a:Lkf/b;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lkf/b;->d()V

    :cond_0
    iget-object v3, v1, Lcom/miui/securityscan/scanner/d$a;->b:Lcom/miui/securityscan/scanner/d;

    invoke-static {v3}, Lcom/miui/securityscan/scanner/d;->a(Lcom/miui/securityscan/scanner/d;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/securityscan/scanner/d;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lx4/z1;->e()I

    move-result v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x6

    iget-object v7, v1, Lcom/miui/securityscan/scanner/d$a;->b:Lcom/miui/securityscan/scanner/d;

    invoke-static {v7}, Lcom/miui/securityscan/scanner/d;->c(Lcom/miui/securityscan/scanner/d;)Landroid/app/ActivityManager;

    move-result-object v7

    const/16 v8, 0x3e9

    invoke-virtual {v7, v8, v6}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "_"

    const/16 v10, 0x3e7

    const/4 v12, 0x0

    if-eqz v6, :cond_6

    :try_start_1
    iget-object v13, v1, Lcom/miui/securityscan/scanner/d$a;->b:Lcom/miui/securityscan/scanner/d;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-static {v13, v14}, Lcom/miui/securityscan/scanner/d;->d(Lcom/miui/securityscan/scanner/d;Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    if-eqz v13, :cond_1

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v13, :cond_1

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v13, :cond_1

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v13, 0x1

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_6

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RecentTaskInfo;

    const-string v15, "userId"

    invoke-static {v14, v15}, Lbh/f;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    iget-object v11, v1, Lcom/miui/securityscan/scanner/d$a;->b:Lcom/miui/securityscan/scanner/d;

    invoke-static {v11, v14}, Lcom/miui/securityscan/scanner/d;->d(Lcom/miui/securityscan/scanner/d;Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    if-eqz v11, :cond_5

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_5

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v11, :cond_5

    invoke-interface {v3, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    iget-object v14, v1, Lcom/miui/securityscan/scanner/d$a;->b:Lcom/miui/securityscan/scanner/d;

    invoke-static {v14}, Lcom/miui/securityscan/scanner/d;->a(Lcom/miui/securityscan/scanner/d;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v11}, Lx4/f1;->K(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eq v14, v4, :cond_2

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v14, v10, :cond_3

    if-nez v4, :cond_3

    :cond_2
    iget-object v14, v1, Lcom/miui/securityscan/scanner/d$a;->b:Lcom/miui/securityscan/scanner/d;

    invoke-static {v14}, Lcom/miui/securityscan/scanner/d;->a(Lcom/miui/securityscan/scanner/d;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v11, v12}, Lx4/t;->y(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v10, Lkf/c;

    invoke-direct {v10}, Lkf/c;-><init>()V

    invoke-virtual {v10, v11}, Lkf/c;->k(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/miui/securityscan/scanner/d$a;->b:Lcom/miui/securityscan/scanner/d;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v12, v11, v7}, Lcom/miui/securityscan/scanner/d;->e(Lcom/miui/securityscan/scanner/d;Ljava/lang/String;I)Landroid/util/SparseBooleanArray;

    move-result-object v7

    invoke-virtual {v10, v7}, Lkf/c;->i(Landroid/util/SparseBooleanArray;)V

    const-wide/16 v7, 0x0

    invoke-virtual {v10, v7, v8}, Lkf/c;->j(J)V

    iget-object v7, v1, Lcom/miui/securityscan/scanner/d$a;->b:Lcom/miui/securityscan/scanner/d;

    invoke-static {v7}, Lcom/miui/securityscan/scanner/d;->a(Lcom/miui/securityscan/scanner/d;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v11}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Lkf/c;->g(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v10, v7}, Lkf/c;->m(I)V

    invoke-virtual {v10, v14}, Lkf/c;->l(Ljava/lang/String;)V

    invoke-interface {v5, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v7, v1, Lcom/miui/securityscan/scanner/d$a;->a:Lkf/b;

    if-eqz v7, :cond_5

    invoke-interface {v7}, Lkf/b;->m()Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_5

    iget-object v0, v1, Lcom/miui/securityscan/scanner/d$a;->a:Lkf/b;

    if-eqz v0, :cond_4

    invoke-interface {v0, v2}, Lkf/b;->a(Ljava/util/List;)V

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v13, v13, 0x1

    const/16 v10, 0x3e7

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_6
    :try_start_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v7, v1, Lcom/miui/securityscan/scanner/d$a;->b:Lcom/miui/securityscan/scanner/d;

    invoke-static {v7}, Lcom/miui/securityscan/scanner/d;->c(Lcom/miui/securityscan/scanner/d;)Landroid/app/ActivityManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v10, :cond_8

    const/4 v11, 0x0

    aget-object v10, v10, v11

    goto :goto_2

    :cond_8
    const/4 v10, 0x0

    :goto_2
    const/4 v11, 0x1

    new-array v12, v11, [I

    iget v13, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    const/4 v14, 0x0

    aput v13, v12, v14

    iget v8, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v12}, Lmiui/securitycenter/utils/SecurityCenterHelper;->getProcessPss([I)[J

    move-result-object v12

    if-eqz v10, :cond_d

    invoke-static {v8}, Lx4/z1;->m(I)I

    move-result v8

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    iget-object v13, v1, Lcom/miui/securityscan/scanner/d$a;->b:Lcom/miui/securityscan/scanner/d;

    invoke-static {v13}, Lcom/miui/securityscan/scanner/d;->a(Lcom/miui/securityscan/scanner/d;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v10}, Lx4/f1;->K(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    const/16 v13, 0x3e7

    if-eq v8, v4, :cond_9

    if-ne v8, v13, :cond_e

    if-nez v4, :cond_e

    :cond_9
    iget-object v14, v1, Lcom/miui/securityscan/scanner/d$a;->b:Lcom/miui/securityscan/scanner/d;

    invoke-static {v14}, Lcom/miui/securityscan/scanner/d;->a(Lcom/miui/securityscan/scanner/d;)Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v10, v15}, Lx4/t;->y(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_e

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lkf/c;

    const/16 v16, 0x0

    aget-wide v17, v12, v16

    const-wide/16 v19, 0x400

    mul-long v17, v17, v19

    if-nez v15, :cond_a

    new-instance v15, Lkf/c;

    invoke-direct {v15}, Lkf/c;-><init>()V

    invoke-virtual {v15, v10}, Lkf/c;->k(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/miui/securityscan/scanner/d$a;->b:Lcom/miui/securityscan/scanner/d;

    invoke-static {v12, v10, v8}, Lcom/miui/securityscan/scanner/d;->e(Lcom/miui/securityscan/scanner/d;Ljava/lang/String;I)Landroid/util/SparseBooleanArray;

    move-result-object v12

    invoke-virtual {v15, v12}, Lkf/c;->i(Landroid/util/SparseBooleanArray;)V

    const-wide/16 v11, 0x0

    invoke-virtual {v15, v11, v12}, Lkf/c;->j(J)V

    iget-object v11, v1, Lcom/miui/securityscan/scanner/d$a;->b:Lcom/miui/securityscan/scanner/d;

    invoke-static {v11}, Lcom/miui/securityscan/scanner/d;->a(Lcom/miui/securityscan/scanner/d;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v10}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Lkf/c;->g(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Lkf/c;->m(I)V

    invoke-virtual {v15, v14}, Lkf/c;->l(Ljava/lang/String;)V

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-interface {v6, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v15}, Lkf/c;->b()J

    move-result-wide v10

    add-long v10, v10, v17

    invoke-virtual {v15, v10, v11}, Lkf/c;->j(J)V

    :cond_b
    iget-object v8, v1, Lcom/miui/securityscan/scanner/d$a;->a:Lkf/b;

    if-eqz v8, :cond_7

    invoke-interface {v8}, Lkf/b;->m()Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_7

    iget-object v0, v1, Lcom/miui/securityscan/scanner/d$a;->a:Lkf/b;

    if-eqz v0, :cond_c

    invoke-interface {v0, v2}, Lkf/b;->a(Ljava/util/List;)V

    :cond_c
    return-void

    :cond_d
    const/16 v13, 0x3e7

    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_f
    :try_start_3
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkf/c;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_10
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkf/c;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :cond_12
    iget-object v0, v1, Lcom/miui/securityscan/scanner/d$a;->a:Lkf/b;

    if-eqz v0, :cond_13

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    :try_start_4
    const-string v3, "MemoryCheckManager"

    const-string v4, "startScan:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, v1, Lcom/miui/securityscan/scanner/d$a;->a:Lkf/b;

    if-eqz v0, :cond_13

    :goto_5
    invoke-interface {v0, v2}, Lkf/b;->a(Ljava/util/List;)V

    :cond_13
    return-void

    :goto_6
    iget-object v3, v1, Lcom/miui/securityscan/scanner/d$a;->a:Lkf/b;

    if-eqz v3, :cond_14

    invoke-interface {v3, v2}, Lkf/b;->a(Ljava/util/List;)V

    :cond_14
    throw v0
.end method
