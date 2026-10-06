.class public Lkc/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkc/q$e;,
        Lkc/q$f;
    }
.end annotation


# static fields
.field private static r:Lkc/q;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/app/AppOpsManager;

.field private final d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/permcenter/privacymanager/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/miui/permcenter/privacymanager/StatusBar;

.field private g:I

.field private h:Lcom/miui/permcenter/privacymanager/StatusBar;

.field private i:Ljava/lang/String;

.field private j:I

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lkc/c;

.field private final n:Lz4/d;

.field private final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;

.field private q:Lkc/q$e;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkc/q;->o:Ljava/util/ArrayList;

    new-instance v0, Lkc/q$a;

    invoke-direct {v0, p0}, Lkc/q$a;-><init>(Lkc/q;)V

    iput-object v0, p0, Lkc/q;->p:Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;

    iput-object p1, p0, Lkc/q;->b:Landroid/content/Context;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lkc/q;->c:Landroid/app/AppOpsManager;

    invoke-static {p1}, Lkc/c;->c(Landroid/content/Context;)Lkc/c;

    move-result-object v0

    iput-object v0, p0, Lkc/q;->m:Lkc/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lkc/q;->k:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lkc/q;->l:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lkc/q;->e:Ljava/util/List;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lkc/q;->d:Ljava/util/LinkedList;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PrivacyMonitorManagerService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v2, Lkc/q$f;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lkc/q$f;-><init>(Lkc/q;Landroid/os/Looper;)V

    iput-object v2, p0, Lkc/q;->a:Landroid/os/Handler;

    new-instance v3, Lkc/j;

    invoke-direct {v3, p0}, Lkc/j;-><init>(Lkc/q;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v2, Lz4/d;

    iget-boolean v0, v0, Lkc/c;->d:Z

    invoke-direct {v2, p1, v1, v0}, Lz4/d;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Z)V

    iput-object v2, p0, Lkc/q;->n:Lz4/d;

    return-void
.end method

.method static synthetic A(Lkc/q;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lkc/q;->i:Ljava/lang/String;

    return-object p1
.end method

.method private B(Ljava/lang/String;)V
    .locals 18
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x4

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    iget-object v4, v1, Lkc/q;->e:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v0, v1, Lkc/q;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    const/4 v6, 0x0

    move v7, v0

    move v8, v6

    :goto_0
    if-ltz v7, :cond_c

    iget-object v0, v1, Lkc/q;->e:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/privacymanager/StatusBar;

    if-eqz v2, :cond_0

    iget-object v9, v0, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v0}, Lcom/miui/permcenter/privacymanager/StatusBar;->getActiveOps()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v0}, Lcom/miui/permcenter/privacymanager/StatusBar;->isTerminal()Z

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual {v0}, Lcom/miui/permcenter/privacymanager/StatusBar;->hasPrivacyAccess()Z

    move-result v10

    if-eqz v10, :cond_a

    if-eqz v9, :cond_a

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_1

    goto/16 :goto_6

    :cond_1
    :try_start_1
    iget-object v10, v0, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    iget v11, v0, Lcom/miui/permcenter/privacymanager/StatusBar;->userId:I

    invoke-static {v10, v6, v11}, Ltg/a;->d(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v10

    if-nez v10, :cond_2

    iget-object v9, v1, Lkc/q;->e:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v8, "MIUISafety-Monitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "remove "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for pkg not found."

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v17, v3

    move v8, v5

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v17, v3

    move v8, v5

    goto/16 :goto_5

    :cond_2
    :try_start_3
    iget-object v11, v1, Lkc/q;->c:Landroid/app/AppOpsManager;

    const-string v12, "getOpsForPackage"

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/Class;

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v14, v6

    const-class v15, Ljava/lang/String;

    aput-object v15, v14, v5

    const-class v15, [I

    const/16 v16, 0x2

    aput-object v15, v14, v16

    new-array v13, v13, [Ljava/lang/Object;

    iget-object v15, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v6

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v10, v13, v5

    aput-object v3, v13, v16

    invoke-static {v11, v12, v14, v13}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    if-eqz v10, :cond_9

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    goto/16 :goto_4

    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    const-string v13, "getOps"

    new-array v14, v6, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v12, v13, v15, v14}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    if-eqz v12, :cond_5

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    move v13, v6

    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_5

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    const-string v5, "isRunning"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v17, v3

    :try_start_4
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v14, v5, v15, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "getOp"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v14, v3, v15, v5}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v17

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v17, v3

    move-object/from16 v3, v17

    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    move-object/from16 v17, v3

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v11, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v0, v5, v6, v6}, Lcom/miui/permcenter/privacymanager/StatusBar;->onOpState(IZZ)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "MIUISafety-Monitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "remove "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for not running."

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    move-object/from16 v17, v3

    iget-object v3, v1, Lkc/q;->e:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v3, "MIUISafety-Monitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for nothing running."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v8, 0x1

    goto :goto_7

    :catch_1
    move-exception v0

    const/4 v8, 0x1

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v17, v3

    :goto_5
    :try_start_6
    const-string v3, "MIUISafety-Monitor"

    const-string v5, "periodicCheckRunningOp exception"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :cond_a
    :goto_6
    move-object/from16 v17, v3

    :cond_b
    :goto_7
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v3, v17

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_c
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v8, :cond_d

    iget-object v0, v1, Lkc/q;->a:Landroid/os/Handler;

    const/16 v3, 0x102

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_d
    const-string v0, "MIUISafety-Monitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkRunningOp end for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_e

    const-string v4, "all"

    goto :goto_8

    :cond_e
    move-object v4, v2

    :goto_8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", should sync? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_f

    iget-object v0, v1, Lkc/q;->a:Landroid/os/Handler;

    const/16 v2, 0x108

    const-wide/32 v3, 0x36ee80

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_f
    return-void

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    nop

    :array_0
    .array-data 4
        0x29
        0x2a
        0x1b
        0x1a
    .end array-data
.end method

.method private C()V
    .locals 7

    iget-object v0, p0, Lkc/q;->k:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkc/q;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lkc/q;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_share_protection_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :try_start_1
    const-string v0, "android.view.WindowManagerGlobal"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getWindowManagerService"

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v3}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "setScreenShareProjectBlackList"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/util/List;

    aput-object v6, v5, v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    invoke-static {v0, v1, v5, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MIUISafety-Monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeScreenShareProtection fail! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private F(ZZ)Lcom/miui/permcenter/privacymanager/StatusBar;
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lkc/q;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_c

    invoke-static {}, Lx4/z1;->e()I

    move-result v0

    invoke-static {}, Lx4/z1;->y()I

    move-result v3

    if-eq v0, v3, :cond_0

    const-string v0, "MIUISafety-Monitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHighestWarning null for current "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lx4/z1;->y()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " not in space "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lx4/z1;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object v3, v1, Lkc/q;->e:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lkc/q;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    :goto_0
    if-ltz v0, :cond_b

    iget-object v5, v1, Lkc/q;->e:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/permcenter/privacymanager/StatusBar;

    invoke-virtual {v5}, Lcom/miui/permcenter/privacymanager/StatusBar;->isTerminal()Z

    move-result v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v5}, Lcom/miui/permcenter/privacymanager/StatusBar;->getActivePerm()J

    move-result-wide v9

    goto :goto_3

    :cond_1
    move-wide v9, v7

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Lcom/miui/permcenter/privacymanager/StatusBar;->getActivePerm()J

    move-result-wide v9

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/miui/electricrisk/h;->n()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    const-wide/16 v11, -0x2

    and-long/2addr v9, v11

    :cond_4
    if-eqz p1, :cond_8

    iget-object v6, v1, Lkc/q;->b:Landroid/content/Context;

    invoke-static {v6}, Lmc/c;->m(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    const/4 v6, 0x3

    new-array v11, v6, [J

    const-wide/16 v12, 0x20

    const/4 v14, 0x0

    aput-wide v12, v11, v14

    const-wide/32 v12, 0x20000

    aput-wide v12, v11, v4

    const/4 v12, 0x2

    const-wide/16 v15, 0x1000

    aput-wide v15, v11, v12

    :goto_1
    if-ge v14, v6, :cond_9

    aget-wide v12, v11, v14

    iget-object v15, v1, Lkc/q;->b:Landroid/content/Context;

    invoke-static {v15}, Lcom/miui/permcenter/o$a;->b(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_6

    iget-object v15, v5, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    iget v4, v5, Lcom/miui/permcenter/privacymanager/StatusBar;->userId:I

    invoke-direct {v1, v15, v4, v12, v13}, Lkc/q;->N(Ljava/lang/String;IJ)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    not-long v12, v12

    and-long/2addr v9, v12

    :cond_7
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    const-wide/16 v11, -0x21

    and-long/2addr v9, v11

    const-wide/32 v11, -0x20001

    and-long/2addr v9, v11

    const-wide/16 v11, -0x1001

    and-long/2addr v9, v11

    :cond_9
    :goto_3
    cmp-long v4, v9, v7

    if-eqz v4, :cond_a

    invoke-virtual {v5, v9, v10}, Lcom/miui/permcenter/privacymanager/StatusBar;->clone(J)Lcom/miui/permcenter/privacymanager/StatusBar;

    move-result-object v0

    monitor-exit v3

    return-object v0

    :cond_a
    add-int/lit8 v0, v0, -0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_b
    monitor-exit v3

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_c
    :goto_4
    return-object v2
.end method

.method public static G(Landroid/content/Context;)Lkc/q;
    .locals 2

    const-class v0, Lkc/q;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lkc/q;->r:Lkc/q;

    if-nez v1, :cond_0

    new-instance v1, Lkc/q;

    invoke-direct {v1, p0}, Lkc/q;-><init>(Landroid/content/Context;)V

    sput-object v1, Lkc/q;->r:Lkc/q;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lkc/q;->r:Lkc/q;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private K(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6

    const-string v0, "security"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_5

    :try_start_0
    iget-object p3, p0, Lkc/q;->l:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lkc/q;->l:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "pushPrivacyVirtualDisplayList"

    new-array p3, v1, [Ljava/lang/Class;

    const-class v3, Ljava/util/List;

    aput-object v3, p3, v2

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lkc/q;->l:Ljava/util/List;

    aput-object v4, v3, v2

    invoke-static {v0, p2, p3, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/miui/electricrisk/h;->n()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lkc/q;->f:Lcom/miui/permcenter/privacymanager/StatusBar;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/miui/permcenter/privacymanager/StatusBar;->getHighestPerm()J

    move-result-wide p2

    const-wide/16 v3, 0x1

    cmp-long p2, p2, v3

    if-eqz p2, :cond_2

    :cond_1
    iget-object p2, p0, Lkc/q;->k:Ljava/util/List;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p3, p0, Lkc/q;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    iget-object p3, p0, Lkc/q;->k:Ljava/util/List;

    sget-object v0, Lkc/c;->h:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p2, "activity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager;

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lkc/q;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object p3, p0, Lkc/q;->i:Ljava/lang/String;

    invoke-static {p2, p3, v2}, Lkc/i;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lkc/q;->j:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/miui/electricrisk/h;->n()Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    sget-object p3, Lkc/c;->h:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :catch_0
    :cond_3
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v4, p0, Lkc/q;->c:Landroid/app/AppOpsManager;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x2739

    invoke-static {v4, v0, v3, v5}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_3

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :cond_4
    :try_start_6
    invoke-static {p1, p2}, Lec/c;->b(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_5
    iget-object p3, p0, Lkc/q;->l:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {p1}, Lec/c;->x(Landroid/content/Context;)V

    const-string p1, "pushPrivacyVirtualDisplayList"

    new-array p2, v1, [Ljava/lang/Class;

    const-class p3, Ljava/util/List;

    aput-object p3, p2, v2

    new-array p3, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lkc/q;->l:Ljava/util/List;

    aput-object v1, p3, v2

    invoke-static {v0, p1, p2, p3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    const-string p2, "MIUISafety-Monitor"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initScreenShareProtection fail! "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method private L(I)Z
    .locals 2

    invoke-static {}, Lx4/z1;->y()I

    move-result v0

    invoke-static {p1}, Lx4/z1;->m(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Lx4/z1;->m(I)I

    move-result p1

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_0

    invoke-static {}, Lx4/z1;->r()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private N(Ljava/lang/String;IJ)Z
    .locals 4

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lkc/q;->m:Lkc/c;

    iget-boolean v0, v0, Lkc/c;->d:Z

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x1000

    cmp-long p3, p3, v2

    if-nez p3, :cond_1

    invoke-static {p1, p2}, Lkc/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/2addr p1, p2

    return p1

    :cond_1
    return v1
.end method

.method private synthetic O(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lkc/q;->B(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic P()V
    .locals 4

    iget-object v0, p0, Lkc/q;->f:Lcom/miui/permcenter/privacymanager/StatusBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/permcenter/privacymanager/StatusBar;->getHighestPerm()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lkc/q;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.miui.permcenter.capsule.ScreenShareProtectionActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lkc/q;->i:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lkc/q;->M(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "IS_SCREEN_SHARE_HIGH_RISK_APP"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lkc/q;->i:Ljava/lang/String;

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lkc/q;->f:Lcom/miui/permcenter/privacymanager/StatusBar;

    iget-object v1, v1, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    const-string v2, "SHARED_PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lkc/q;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private synthetic Q(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 7

    invoke-direct {p0, p2}, Lkc/q;->L(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/app/AppOpsManagerCompat;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    const/16 p1, 0x273a

    if-ne v2, p1, :cond_0

    sget-object p1, Lkc/c;->i:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lkc/q;->b:Landroid/content/Context;

    invoke-direct {p0, p1, p3, p4}, Lkc/q;->K(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    invoke-static {p2}, Lx4/z1;->m(I)I

    move-result v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lkc/q;->e0(IILjava/lang/String;ZZ)Z

    :cond_1
    return-void
.end method

.method private synthetic R(II)V
    .locals 3

    iget-object v0, p0, Lkc/q;->o:Ljava/util/ArrayList;

    monitor-enter v0

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_0

    :try_start_0
    const-string p2, "MIUISafety-Monitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " gone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lkc/q;->o:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lkc/q;->o:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic S(ZLjava/lang/String;IIZZ)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    if-nez v0, :cond_1

    iget-object v7, v1, Lkc/q;->d:Ljava/util/LinkedList;

    monitor-enter v7

    :try_start_0
    iget-object v8, v1, Lkc/q;->d:Ljava/util/LinkedList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v8, v1, Lkc/q;->d:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    const/16 v9, 0xc8

    if-le v8, v9, :cond_0

    iget-object v8, v1, Lkc/q;->d:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    invoke-static/range {p4 .. p4}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->switchOpToMiuiFlaresPermission(I)J

    move-result-wide v7

    new-instance v9, Lcom/miui/permcenter/privacymanager/StatusBar;

    invoke-direct {v9, v3, v2, v6}, Lcom/miui/permcenter/privacymanager/StatusBar;-><init>(ILjava/lang/String;Z)V

    iget-object v10, v1, Lkc/q;->e:Ljava/util/List;

    monitor-enter v10

    :try_start_1
    iget-object v11, v1, Lkc/q;->e:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-wide/16 v13, 0x0

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/permcenter/privacymanager/StatusBar;

    invoke-virtual {v9, v12}, Lcom/miui/permcenter/privacymanager/StatusBar;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    if-nez v6, :cond_3

    invoke-virtual {v12}, Lcom/miui/permcenter/privacymanager/StatusBar;->getRunningPerm()J

    move-result-wide v15

    and-long/2addr v15, v7

    cmp-long v9, v15, v13

    if-eqz v9, :cond_3

    monitor-exit v10

    return-void

    :cond_3
    move-object v9, v12

    :cond_4
    const/4 v11, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v9, v4, v5}, Lcom/miui/permcenter/privacymanager/StatusBar;->onOpNoted(IZ)Z

    move-result v12

    goto :goto_2

    :cond_5
    if-nez v6, :cond_6

    const/4 v12, 0x1

    goto :goto_1

    :cond_6
    move v12, v11

    :goto_1
    invoke-virtual {v9, v4, v5, v12}, Lcom/miui/permcenter/privacymanager/StatusBar;->onOpState(IZZ)Z

    move-result v12

    :goto_2
    const-string v15, "MIUISafety-Monitor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sync "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",userId:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",op:"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",active:"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isNote:"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isTerminal:"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",notify:"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_e

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_7

    if-nez v6, :cond_7

    if-nez v0, :cond_7

    iget-object v3, v1, Lkc/q;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v12, "content://com.miui.permcenter.privacycenter"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_7
    iget-object v3, v1, Lkc/q;->e:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Lcom/miui/permcenter/privacymanager/StatusBar;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v1, Lkc/q;->e:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v3, v1, Lkc/q;->a:Landroid/os/Handler;

    const/16 v12, 0x102

    invoke-virtual {v3, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, v1, Lkc/q;->a:Landroid/os/Handler;

    const-string v13, "com.miui.weather2"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-wide/16 v13, 0x0

    goto :goto_3

    :cond_9
    const-wide/16 v13, 0x32

    :goto_3
    invoke-virtual {v3, v12, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    if-nez v6, :cond_e

    if-nez v0, :cond_e

    const-wide/16 v2, 0x20

    cmp-long v2, v7, v2

    if-nez v2, :cond_a

    const/16 v2, 0x105

    goto :goto_4

    :cond_a
    const-wide/32 v2, 0x20000

    cmp-long v2, v7, v2

    if-nez v2, :cond_b

    const/16 v2, 0x106

    goto :goto_4

    :cond_b
    const-wide/16 v2, 0x1000

    cmp-long v2, v7, v2

    if-nez v2, :cond_c

    const/16 v2, 0x107

    goto :goto_4

    :cond_c
    move v2, v11

    :goto_4
    if-eqz v2, :cond_e

    iget-object v3, v1, Lkc/q;->a:Landroid/os/Handler;

    invoke-virtual {v3, v2, v4, v11, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    if-eqz v5, :cond_d

    iget-object v3, v1, Lkc/q;->a:Landroid/os/Handler;

    invoke-virtual {v3, v2, v9}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_5

    :cond_d
    iget-object v2, v1, Lkc/q;->a:Landroid/os/Handler;

    const-wide/16 v6, 0x3a98

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_e
    :goto_5
    if-eqz v5, :cond_f

    if-eqz v0, :cond_f

    invoke-virtual {v9}, Lcom/miui/permcenter/privacymanager/StatusBar;->hashCode()I

    move-result v0

    add-int/2addr v0, v4

    iget-object v2, v1, Lkc/q;->a:Landroid/os/Handler;

    invoke-virtual {v2, v0, v9}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v2, v1, Lkc/q;->a:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v0, v4, v3, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, v1, Lkc/q;->a:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_f
    monitor-exit v10

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private X()V
    .locals 7

    iget-object v0, p0, Lkc/q;->k:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkc/q;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lkc/q;->k:Ljava/util/List;

    sget-object v2, Lkc/c;->h:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lkc/q;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_share_protection_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "NotificationShade"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "StatusBar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "InputMethod"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.securitycenter/com.miui.permcenter.capsule.ScreenShareProtectionActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_1
    const-string v1, "android.view.WindowManagerGlobal"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getWindowManagerService"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, v6}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "setScreenShareProjectBlackList"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v6, Ljava/util/List;

    aput-object v6, v4, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v3, v4, v2}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MIUISafety-Monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openScreenShareProtection fail! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private Z()V
    .locals 21

    move-object/from16 v1, p0

    invoke-static {}, Ldb/c;->k()Z

    move-result v0

    const/high16 v2, 0x10000000

    if-eqz v0, :cond_0

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v3, v1, Lkc/q;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.miui.permcenter.privacycenter.usage.PermissionUsageTaskActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, v1, Lkc/q;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    const/4 v4, 0x3

    new-array v4, v4, [J

    fill-array-data v4, :array_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v1, Lkc/q;->e:Ljava/util/List;

    monitor-enter v7

    :try_start_0
    iget-object v8, v1, Lkc/q;->e:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/permcenter/privacymanager/StatusBar;

    if-nez v0, :cond_1

    invoke-virtual {v9}, Lcom/miui/permcenter/privacymanager/StatusBar;->isTerminal()Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Lcom/miui/permcenter/privacymanager/StatusBar;->getActivePerm()J

    move-result-wide v11

    invoke-virtual {v9}, Lcom/miui/permcenter/privacymanager/StatusBar;->getHistoryPerm()J

    move-result-wide v13

    invoke-virtual {v9}, Lcom/miui/permcenter/privacymanager/StatusBar;->isTerminal()Z

    move-result v15

    if-eqz v15, :cond_2

    const-wide/16 v15, -0x21

    and-long/2addr v11, v15

    and-long/2addr v13, v15

    const-wide/32 v15, -0x20001

    :goto_1
    and-long/2addr v11, v15

    and-long/2addr v13, v15

    goto :goto_2

    :cond_2
    const-wide/16 v15, -0x2

    goto :goto_1

    :goto_2
    invoke-virtual {v9}, Lcom/miui/permcenter/privacymanager/StatusBar;->isTerminal()Z

    move-result v15

    if-eqz v15, :cond_3

    move-object v15, v3

    goto :goto_3

    :cond_3
    move-object v15, v4

    :goto_3
    array-length v2, v15

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v2, :cond_5

    move/from16 v18, v2

    move-object/from16 v17, v3

    aget-wide v2, v15, v10

    move/from16 v19, v0

    iget-object v0, v9, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    move-object/from16 v20, v4

    iget v4, v9, Lcom/miui/permcenter/privacymanager/StatusBar;->userId:I

    invoke-direct {v1, v0, v4, v2, v3}, Lkc/q;->N(Ljava/lang/String;IJ)Z

    move-result v0

    if-eqz v0, :cond_4

    not-long v2, v2

    and-long/2addr v11, v2

    and-long/2addr v2, v13

    move-wide v13, v2

    :cond_4
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v17

    move/from16 v2, v18

    move/from16 v0, v19

    move-object/from16 v4, v20

    goto :goto_4

    :cond_5
    move/from16 v19, v0

    move-object/from16 v17, v3

    move-object/from16 v20, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v11, v2

    if-eqz v0, :cond_6

    new-instance v0, Ltc/h;

    invoke-direct {v0}, Ltc/h;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ltc/h;->f(Z)V

    invoke-virtual {v9}, Lcom/miui/permcenter/privacymanager/StatusBar;->isTerminal()Z

    move-result v4

    invoke-virtual {v0, v4}, Ltc/h;->i(Z)V

    iget v4, v9, Lcom/miui/permcenter/privacymanager/StatusBar;->userId:I

    invoke-virtual {v0, v4}, Ltc/h;->j(I)V

    iget-object v4, v9, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ltc/h;->h(Ljava/lang/String;)V

    invoke-virtual {v0, v11, v12}, Ltc/h;->g(J)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    cmp-long v0, v13, v2

    if-eqz v0, :cond_7

    new-instance v0, Ltc/h;

    invoke-direct {v0}, Ltc/h;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ltc/h;->f(Z)V

    invoke-virtual {v9}, Lcom/miui/permcenter/privacymanager/StatusBar;->isTerminal()Z

    move-result v2

    invoke-virtual {v0, v2}, Ltc/h;->i(Z)V

    iget v2, v9, Lcom/miui/permcenter/privacymanager/StatusBar;->userId:I

    invoke-virtual {v0, v2}, Ltc/h;->j(I)V

    iget-object v2, v9, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ltc/h;->h(Ljava/lang/String;)V

    invoke-virtual {v0, v13, v14}, Ltc/h;->g(J)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object/from16 v3, v17

    move/from16 v0, v19

    move-object/from16 v4, v20

    const/high16 v2, 0x10000000

    goto/16 :goto_0

    :cond_8
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "MIUISafety-Monitor"

    const-string v2, "Error capsule record, do clear"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lkc/q;->m:Lkc/c;

    iget-object v0, v0, Lkc/c;->f:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, v1, Lkc/q;->m:Lkc/c;

    invoke-virtual {v4, v2, v3}, Lkc/c;->b(J)V

    goto :goto_5

    :cond_9
    iget-object v0, v1, Lkc/q;->m:Lkc/c;

    iget-boolean v2, v0, Lkc/c;->d:Z

    if-eqz v2, :cond_a

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lkc/c;->b(J)V

    :cond_a
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lkc/q;->h0(ILcom/miui/permcenter/privacymanager/StatusBar;)V

    return-void

    :cond_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DATA"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lkc/q;->b:Landroid/content/Context;

    const-class v4, Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, v1, Lkc/q;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :array_0
    .array-data 8
        0x1000
        0x1
    .end array-data

    :array_1
    .array-data 8
        0x20
        0x20000
        0x1000
    .end array-data
.end method

.method public static synthetic a(Lkc/q;)V
    .locals 0

    invoke-direct {p0}, Lkc/q;->a0()V

    return-void
.end method

.method private a0()V
    .locals 19

    move-object/from16 v7, p0

    const-string v8, "MIUISafety-Monitor"

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "miui.intent.aciton.ACTION_USING_PERMISSION_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lkc/q;->c0()V

    :cond_0
    const-string v0, "com.miui.action.remove_screen_share_high_risk_app"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "miui.intent.aciton.ACTION_USING_STATUS_BAR_PERMISSION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.miui.action.open_screen_share_protection"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.miui.action.sync_status_bar"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.miui.action.open_status_bar"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.miui.action.open_screen_share_tip"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, v7, Lkc/q;->m:Lkc/c;

    iget-boolean v0, v0, Lkc/c;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "com.miui.action.hide_fullscreen_flare"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    new-instance v2, Lkc/r;

    iget-object v0, v7, Lkc/q;->a:Landroid/os/Handler;

    invoke-direct {v2, v0}, Lkc/r;-><init>(Landroid/os/Handler;)V

    iget-object v1, v7, Lkc/q;->b:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v4, "miui.permission.READ_AND_WIRTE_PERMISSION_MANAGER"

    invoke-static/range {v1 .. v6}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/electricrisk/h;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/electricrisk/h;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct/range {p0 .. p0}, Lkc/q;->X()V

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p0}, Lkc/q;->C()V

    :cond_3
    :goto_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    :try_start_0
    const-string v0, "miui.process.ProcessManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "registerForegroundInfoListener"

    new-array v2, v9, [Ljava/lang/Class;

    const-class v3, Lcom/gzy/redmiport/compat/process/IForegroundInfoListener;

    aput-object v3, v2, v10

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, v7, Lkc/q;->p:Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;

    aput-object v4, v3, v10

    invoke-static {v0, v1, v2, v3}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForegroundInfoListener fail! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v11, 0x0

    :try_start_1
    iget-object v1, v7, Lkc/q;->c:Landroid/app/AppOpsManager;

    const-string v2, "getPackagesForOps"

    new-array v3, v9, [Ljava/lang/Class;

    const-class v4, [I

    aput-object v4, v3, v10

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v10

    invoke-static {v1, v2, v3, v4}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-nez v1, :cond_9

    move v1, v10

    move v12, v1

    :goto_2
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_a

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getUid"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v11, v4}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-direct {v7, v13}, Lkc/q;->L(I)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_5

    :cond_4
    const-string v3, "getPackageName"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v11, v4}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/lang/String;

    const-string v3, "getOps"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v11, v4}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/util/List;

    if-eqz v15, :cond_8

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v2, :cond_8

    move/from16 v16, v1

    move v6, v10

    :goto_3
    :try_start_3
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_7

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "isRunning"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v1, v2, v11, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "getOp"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v1, v2, v11, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init and find "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is running with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v13}, Lx4/z1;->m(I)I

    move-result v3

    const/4 v5, 0x1

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object v4, v14

    move/from16 v18, v6

    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lkc/q;->e0(IILjava/lang/String;ZZ)Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v1, :cond_6

    move/from16 v16, v9

    goto :goto_4

    :cond_5
    move/from16 v18, v6

    :cond_6
    :goto_4
    add-int/lit8 v6, v18, 0x1

    goto :goto_3

    :cond_7
    move/from16 v1, v16

    goto :goto_5

    :catch_1
    move-exception v0

    move/from16 v1, v16

    goto :goto_6

    :cond_8
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_9
    move v1, v10

    goto :goto_7

    :catch_3
    move-exception v0

    move v1, v10

    :goto_6
    const-string v2, "registerPrivacyMonitor, init running AppOps exception"

    invoke-static {v8, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_7
    if-nez v1, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init and find nothing running appops in user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lx4/z1;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lx4/z1;->e()I

    move-result v0

    invoke-static {}, Lx4/z1;->y()I

    move-result v1

    if-ne v0, v1, :cond_c

    invoke-direct {v7, v10, v11}, Lkc/q;->h0(ILcom/miui/permcenter/privacymanager/StatusBar;)V

    iget-object v0, v7, Lkc/q;->m:Lkc/c;

    iget-boolean v1, v0, Lkc/c;->d:Z

    if-eqz v1, :cond_b

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lkc/c;->b(J)V

    goto :goto_9

    :cond_b
    iget-object v0, v0, Lkc/c;->f:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, v7, Lkc/q;->m:Lkc/c;

    invoke-virtual {v3, v1, v2}, Lkc/c;->b(J)V

    goto :goto_8

    :cond_c
    :goto_9
    iget-object v0, v7, Lkc/q;->a:Landroid/os/Handler;

    const/16 v1, 0x108

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "init safety protect success"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_0
    .array-data 4
        0x1
        0x0
        0x29
        0x2a
        0x1b
        0x1a
    .end array-data
.end method

.method public static synthetic b(Lkc/q;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkc/q;->R(II)V

    return-void
.end method

.method public static synthetic c(Lkc/q;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lkc/q;->O(Ljava/lang/String;)V

    return-void
.end method

.method private c0()V
    .locals 7

    iget-object v0, p0, Lkc/q;->b:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const-string v1, "android:monitor_location"

    const-string v2, "android:monitor_location_high_power"

    const-string v3, "android:fine_location"

    const-string v4, "android:coarse_location"

    const-string v5, "android:camera"

    const-string v6, "android:record_audio"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/miui/electricrisk/h;->o()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v4, "MIUI:10042"

    aput-object v4, v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastR()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v4, Lkc/l;

    invoke-direct {v4, p0}, Lkc/l;-><init>(Lkc/q;)V

    invoke-static {v0, v2, v1, v4}, Lkc/h;->a(Landroid/app/AppOpsManager;[Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/miui/permcenter/o;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    new-instance v2, Lkc/q$b;

    invoke-direct {v2, p0}, Lkc/q$b;-><init>(Lkc/q;)V

    invoke-static {v0, v1, v2}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->startWatchingNoted(Landroid/app/AppOpsManager;[ILcom/miui/permcenter/compact/AppOpsUtilsCompat$MiuiOnOpActiveChangedListener;)V

    :cond_1
    invoke-static {}, Lcom/miui/permcenter/o;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkc/q;->b:Landroid/content/Context;

    new-instance v1, Lkc/m;

    invoke-direct {v1, p0}, Lkc/m;-><init>(Lkc/q;)V

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/app/UidImportanceListenerProxy;->addOnUidImportanceListener(Landroid/content/Context;Landroid/app/UidImportanceListenerProxy$Callback;I)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    new-instance v2, Lkc/q$c;

    invoke-direct {v2, p0}, Lkc/q$c;-><init>(Lkc/q;)V

    invoke-static {v0, v1, v2}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->startWatchingActive(Landroid/app/AppOpsManager;[ILcom/miui/permcenter/compact/AppOpsUtilsCompat$MiuiOnOpActiveChangedListener;)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/miui/electricrisk/h;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkc/q;->c:Landroid/app/AppOpsManager;

    new-array v1, v3, [I

    const/4 v2, 0x0

    const/16 v3, 0x2739

    aput v3, v1, v2

    new-instance v2, Lkc/q$d;

    invoke-direct {v2, p0}, Lkc/q$d;-><init>(Lkc/q;)V

    invoke-static {v0, v1, v2}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->startWatchingNoted(Landroid/app/AppOpsManager;[ILcom/miui/permcenter/compact/AppOpsUtilsCompat$MiuiOnOpActiveChangedListener;)V

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x29
        0x2a
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x29
        0x2a
        0x1
        0x0
        0x1a
        0x1b
    .end array-data
.end method

.method public static synthetic d(Lkc/q;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lkc/q;->Q(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method private d0(JI[Ljava/lang/String;)V
    .locals 15

    move-wide/from16 v0, p1

    move-object v8, p0

    move-object/from16 v9, p4

    iget-object v2, v8, Lkc/q;->m:Lkc/c;

    invoke-virtual {v2, v0, v1}, Lkc/c;->g(J)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-nez v9, :cond_1

    return-void

    :cond_1
    array-length v10, v9

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-ge v12, v10, :cond_7

    aget-object v2, v9, v12

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    :cond_2
    move/from16 v13, p3

    goto :goto_3

    :cond_3
    const-wide/16 v5, 0x20

    cmp-long v3, v0, v5

    if-nez v3, :cond_4

    const/16 v3, 0x29

    goto :goto_1

    :cond_4
    const-wide/16 v5, 0x1000

    cmp-long v3, v0, v5

    if-nez v3, :cond_5

    const/16 v3, 0x1a

    goto :goto_1

    :cond_5
    const-wide/32 v5, 0x20000

    cmp-long v3, v0, v5

    if-nez v3, :cond_2

    const/16 v3, 0x1b

    :goto_1
    aget-object v5, v2, v11

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    aget-object v7, v2, v6

    move/from16 v13, p3

    if-ne v13, v4, :cond_6

    goto :goto_2

    :cond_6
    move v6, v11

    :goto_2
    const/4 v14, 0x0

    move-object v2, p0

    move v4, v5

    move-object v5, v7

    move v7, v14

    invoke-direct/range {v2 .. v7}, Lkc/q;->e0(IILjava/lang/String;ZZ)Z

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static synthetic e(Lkc/q;)V
    .locals 0

    invoke-direct {p0}, Lkc/q;->Z()V

    return-void
.end method

.method private e0(IILjava/lang/String;ZZ)Z
    .locals 7

    invoke-static {p1}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->switchOpToMiuiFlaresPermission(I)J

    move-result-wide v3

    iget-object v0, p0, Lkc/q;->m:Lkc/c;

    invoke-virtual {v0, v3, v4}, Lkc/c;->g(J)Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_0

    return v6

    :cond_0
    iget-object v0, p0, Lkc/q;->b:Landroid/content/Context;

    xor-int/lit8 v5, p5, 0x1

    move-object v1, p3

    move v2, p2

    invoke-static/range {v0 .. v5}, Lmc/c;->s(Landroid/content/Context;Ljava/lang/String;IJZ)Z

    move-result v0

    if-eqz v0, :cond_1

    return v6

    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p1

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lkc/q;->f0(ILjava/lang/String;IZZZ)V

    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic f(Lkc/q;ZLjava/lang/String;IIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lkc/q;->S(ZLjava/lang/String;IIZZ)V

    return-void
.end method

.method public static synthetic g(Lkc/q;)V
    .locals 0

    invoke-direct {p0}, Lkc/q;->P()V

    return-void
.end method

.method private declared-synchronized g0()V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0, v0}, Lkc/q;->F(ZZ)Lcom/miui/permcenter/privacymanager/StatusBar;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v0, p0, Lkc/q;->f:Lcom/miui/permcenter/privacymanager/StatusBar;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lkc/q;->m:Lkc/c;

    invoke-virtual {v0}, Lcom/miui/permcenter/privacymanager/StatusBar;->getHighestPerm()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lkc/c;->b(J)V

    iput-object v2, p0, Lkc/q;->f:Lcom/miui/permcenter/privacymanager/StatusBar;

    :cond_0
    invoke-direct {p0, v3, v2}, Lkc/q;->h0(ILcom/miui/permcenter/privacymanager/StatusBar;)V

    goto/16 :goto_4

    :cond_1
    iget-object v4, p0, Lkc/q;->m:Lkc/c;

    iget-boolean v4, v4, Lkc/c;->d:Z

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lcom/miui/permcenter/privacymanager/StatusBar;->hasScreenShare()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3, v0}, Lkc/q;->F(ZZ)Lcom/miui/permcenter/privacymanager/StatusBar;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_3

    iget-object v2, p0, Lkc/q;->m:Lkc/c;

    iget-object v5, p0, Lkc/q;->i:Ljava/lang/String;

    iget v6, p0, Lkc/q;->j:I

    invoke-virtual {v2, v4, v5, v6}, Lkc/c;->j(Lcom/miui/permcenter/privacymanager/StatusBar;Ljava/lang/String;I)V

    invoke-virtual {v4}, Lcom/miui/permcenter/privacymanager/StatusBar;->clone()Lcom/miui/permcenter/privacymanager/StatusBar;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lkc/q;->f:Lcom/miui/permcenter/privacymanager/StatusBar;

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lkc/q;->f:Lcom/miui/permcenter/privacymanager/StatusBar;

    if-eqz v4, :cond_4

    iget-object v5, p0, Lkc/q;->m:Lkc/c;

    invoke-virtual {v4}, Lcom/miui/permcenter/privacymanager/StatusBar;->getHighestPerm()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lkc/c;->b(J)V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {v1}, Lcom/miui/permcenter/privacymanager/StatusBar;->hasPrivacyAccess()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-direct {p0, v0, v3}, Lkc/q;->F(ZZ)Lcom/miui/permcenter/privacymanager/StatusBar;

    move-result-object v1

    :goto_3
    invoke-direct {p0, v0, v1}, Lkc/q;->h0(ILcom/miui/permcenter/privacymanager/StatusBar;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Lcom/miui/permcenter/privacymanager/StatusBar;->hasScreenShare()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {p0, v3, v0}, Lkc/q;->F(ZZ)Lcom/miui/permcenter/privacymanager/StatusBar;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object v1, v2

    :cond_7
    iget-object v2, p0, Lkc/q;->f:Lcom/miui/permcenter/privacymanager/StatusBar;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/miui/permcenter/privacymanager/StatusBar;->getHighestPerm()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/miui/permcenter/privacymanager/StatusBar;->getHighestPerm()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    iget-object v2, p0, Lkc/q;->m:Lkc/c;

    iget-object v3, p0, Lkc/q;->f:Lcom/miui/permcenter/privacymanager/StatusBar;

    invoke-virtual {v3}, Lcom/miui/permcenter/privacymanager/StatusBar;->getHighestPerm()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lkc/c;->b(J)V

    :cond_8
    iget-object v2, p0, Lkc/q;->m:Lkc/c;

    iget-object v3, p0, Lkc/q;->i:Ljava/lang/String;

    iget v4, p0, Lkc/q;->j:I

    invoke-virtual {v2, v1, v3, v4}, Lkc/c;->j(Lcom/miui/permcenter/privacymanager/StatusBar;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/miui/permcenter/privacymanager/StatusBar;->clone()Lcom/miui/permcenter/privacymanager/StatusBar;

    move-result-object v2

    iput-object v2, p0, Lkc/q;->f:Lcom/miui/permcenter/privacymanager/StatusBar;

    invoke-virtual {v1}, Lcom/miui/permcenter/privacymanager/StatusBar;->getActivePerm()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v4, 0x21020

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic h(Lkc/q;)V
    .locals 0

    invoke-direct {p0}, Lkc/q;->g0()V

    return-void
.end method

.method private h0(ILcom/miui/permcenter/privacymanager/StatusBar;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/permcenter/privacymanager/StatusBar;->isTerminal()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lkc/q;->b:Landroid/content/Context;

    invoke-static {v0}, Lmc/c;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iget-object v0, p0, Lkc/q;->m:Lkc/c;

    invoke-virtual {v0, p1, p2}, Lkc/c;->i(ILcom/miui/permcenter/privacymanager/StatusBar;)V

    iput p1, p0, Lkc/q;->g:I

    iput-object p2, p0, Lkc/q;->h:Lcom/miui/permcenter/privacymanager/StatusBar;

    return-void
.end method

.method static synthetic i(Lkc/q;JI[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lkc/q;->d0(JI[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j(Lkc/q;)I
    .locals 0

    iget p0, p0, Lkc/q;->j:I

    return p0
.end method

.method static synthetic k(Lkc/q;I)I
    .locals 0

    iput p1, p0, Lkc/q;->j:I

    return p1
.end method

.method static synthetic l(Lkc/q;)Lkc/c;
    .locals 0

    iget-object p0, p0, Lkc/q;->m:Lkc/c;

    return-object p0
.end method

.method static synthetic m(Lkc/q;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lkc/q;->B(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic n(Lkc/q;)Lkc/q$e;
    .locals 0

    iget-object p0, p0, Lkc/q;->q:Lkc/q$e;

    return-object p0
.end method

.method static synthetic o(Lkc/q;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lkc/q;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic p(Lkc/q;)Landroid/app/AppOpsManager;
    .locals 0

    iget-object p0, p0, Lkc/q;->c:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method static synthetic q(Lkc/q;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lkc/q;->L(I)Z

    move-result p0

    return p0
.end method

.method static synthetic r(Lkc/q;IILjava/lang/String;ZZ)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lkc/q;->e0(IILjava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method static synthetic s(Lkc/q;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkc/q;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic t(Lkc/q;)V
    .locals 0

    invoke-direct {p0}, Lkc/q;->X()V

    return-void
.end method

.method static synthetic u(Lkc/q;)V
    .locals 0

    invoke-direct {p0}, Lkc/q;->C()V

    return-void
.end method

.method static synthetic v(Lkc/q;)I
    .locals 0

    iget p0, p0, Lkc/q;->g:I

    return p0
.end method

.method static synthetic w(Lkc/q;)Lcom/miui/permcenter/privacymanager/StatusBar;
    .locals 0

    iget-object p0, p0, Lkc/q;->h:Lcom/miui/permcenter/privacymanager/StatusBar;

    return-object p0
.end method

.method static synthetic x(Lkc/q;ILcom/miui/permcenter/privacymanager/StatusBar;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkc/q;->h0(ILcom/miui/permcenter/privacymanager/StatusBar;)V

    return-void
.end method

.method static synthetic y(Lkc/q;)Lcom/miui/permcenter/privacymanager/StatusBar;
    .locals 0

    iget-object p0, p0, Lkc/q;->f:Lcom/miui/permcenter/privacymanager/StatusBar;

    return-object p0
.end method

.method static synthetic z(Lkc/q;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkc/q;->i:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lkc/q;->n:Lz4/d;

    invoke-virtual {v0, p1, p2}, Lz4/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public E(Ljava/io/PrintWriter;)V
    .locals 5

    iget-object v0, p0, Lkc/q;->o:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    AlreadyTipLocationUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkc/q;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v0, "    Current:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lkc/q;->e:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lkc/q;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permcenter/privacymanager/StatusBar;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "        "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/permcenter/privacymanager/StatusBar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v0, "    History:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lkc/q;->d:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lkc/q;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "        "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public H()Landroid/os/Bundle;
    .locals 13

    iget-object v0, p0, Lkc/q;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lkc/q;->e:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lkc/q;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/permcenter/privacymanager/StatusBar;

    invoke-virtual {v5}, Lcom/miui/permcenter/privacymanager/StatusBar;->isTerminal()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, v5, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    invoke-static {v6}, Lkc/c;->f(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/miui/permcenter/privacymanager/StatusBar;->getActivePerm()J

    move-result-wide v6

    const-wide/16 v8, -0x2

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_3

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_5

    aget-wide v9, v1, v8

    iget-object v11, v5, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    iget v12, v5, Lcom/miui/permcenter/privacymanager/StatusBar;->userId:I

    invoke-direct {p0, v11, v12, v9, v10}, Lkc/q;->N(Ljava/lang/String;IJ)Z

    move-result v11

    if-eqz v11, :cond_4

    not-long v9, v9

    and-long/2addr v6, v9

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    new-instance v8, Ltc/h;

    invoke-direct {v8}, Ltc/h;-><init>()V

    iget v9, v5, Lcom/miui/permcenter/privacymanager/StatusBar;->userId:I

    invoke-virtual {v8, v9}, Ltc/h;->j(I)V

    iget-object v5, v5, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ltc/h;->h(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Ltc/h;->g(J)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DATA"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :array_0
    .array-data 8
        0x20
        0x20000
        0x1000
    .end array-data
.end method

.method public I(I)Z
    .locals 3

    iget-object v0, p0, Lkc/q;->o:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkc/q;->o:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lkc/q;->o:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public J(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lkc/q;->k:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkc/q;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public M(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lkc/q;->k:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkc/q;->f:Lcom/miui/permcenter/privacymanager/StatusBar;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/permcenter/privacymanager/StatusBar;->getHighestPerm()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lkc/q;->f:Lcom/miui/permcenter/privacymanager/StatusBar;

    iget-object v1, v1, Lcom/miui/permcenter/privacymanager/StatusBar;->pkgName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lkc/q;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public T(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lkc/q;->a:Landroid/os/Handler;

    new-instance v1, Lkc/n;

    invoke-direct {v1, p0, p1}, Lkc/n;-><init>(Lkc/q;Ljava/lang/String;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public U(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lkc/q;->n:Lz4/d;

    invoke-virtual {v0, p1}, Lz4/d;->h(Landroid/os/Bundle;)V

    return-void
.end method

.method public V()V
    .locals 2

    invoke-static {}, Lx4/z1;->e()I

    move-result v0

    invoke-static {}, Lx4/z1;->y()I

    move-result v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on user switch to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lx4/z1;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIUISafety-Monitor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lkc/q;->a:Landroid/os/Handler;

    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public W()V
    .locals 2

    iget-object v0, p0, Lkc/q;->a:Landroid/os/Handler;

    new-instance v1, Lkc/k;

    invoke-direct {v1, p0}, Lkc/k;-><init>(Lkc/q;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Y()V
    .locals 2

    iget-object v0, p0, Lkc/q;->a:Landroid/os/Handler;

    new-instance v1, Lkc/p;

    invoke-direct {v1, p0}, Lkc/p;-><init>(Lkc/q;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b0(Lkc/q$e;)V
    .locals 0

    iput-object p1, p0, Lkc/q;->q:Lkc/q$e;

    return-void
.end method

.method public f0(ILjava/lang/String;IZZZ)V
    .locals 11

    move-object v8, p0

    iget-object v9, v8, Lkc/q;->a:Landroid/os/Handler;

    new-instance v10, Lkc/o;

    move-object v0, v10

    move-object v1, p0

    move/from16 v2, p6

    move-object v3, p2

    move v4, p1

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lkc/o;-><init>(Lkc/q;ZLjava/lang/String;IIZZ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public i0()V
    .locals 4

    iget-object v0, p0, Lkc/q;->a:Landroid/os/Handler;

    const/16 v1, 0x993

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
