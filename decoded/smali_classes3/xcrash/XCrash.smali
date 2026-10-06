.class public final Lxcrash/XCrash;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxcrash/XCrash$InitParameters;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Lxcrash/g;

.field private static f:Ljava/util/concurrent/Semaphore;

.field private static g:Landroid/content/Context;

.field private static h:Ljava/lang/String;

.field private static i:Z

.field private static j:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static k:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public static final synthetic l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxcrash/c;

    invoke-direct {v0}, Lxcrash/c;-><init>()V

    sput-object v0, Lxcrash/XCrash;->e:Lxcrash/g;

    const/4 v0, 0x0

    sput-boolean v0, Lxcrash/XCrash;->i:Z

    const/4 v0, 0x0

    sput-object v0, Lxcrash/XCrash;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance v0, Lxcrash/XCrash$a;

    invoke-direct {v0}, Lxcrash/XCrash$a;-><init>()V

    sput-object v0, Lxcrash/XCrash;->k:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    invoke-static {}, Lxcrash/XCrash;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lxcrash/XCrash;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Landroid/content/Context;
    .locals 1

    sget-object v0, Lxcrash/XCrash;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d()Ljava/util/concurrent/Semaphore;
    .locals 1

    sget-object v0, Lxcrash/XCrash;->f:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    sget-object v0, Lxcrash/XCrash;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method static f()Lxcrash/g;
    .locals 1

    sget-object v0, Lxcrash/XCrash;->e:Lxcrash/g;

    return-object v0
.end method

.method private static declared-synchronized g()Z
    .locals 2

    const-class v0, Lxcrash/XCrash;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lxcrash/XCrash;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static init(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lxcrash/XCrash;->init(Landroid/content/Context;Lxcrash/XCrash$InitParameters;)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lxcrash/XCrash$InitParameters;)I
    .locals 33

    const-class v1, Lxcrash/XCrash;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lxcrash/XCrash;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    monitor-exit v1

    return v2

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lxcrash/XCrash;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_1

    const/4 v0, -0x1

    monitor-exit v1

    return v0

    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v5, v3

    goto :goto_0

    :cond_2
    move-object/from16 v5, p0

    :goto_0
    if-nez p1, :cond_3

    new-instance v3, Lxcrash/XCrash$InitParameters;

    invoke-direct {v3}, Lxcrash/XCrash$InitParameters;-><init>()V

    goto :goto_1

    :cond_3
    move-object/from16 v3, p1

    :goto_1
    iget-object v4, v3, Lxcrash/XCrash$InitParameters;->d:Lxcrash/g;

    if-eqz v4, :cond_4

    sput-object v4, Lxcrash/XCrash;->e:Lxcrash/g;

    :cond_4
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lxcrash/XCrash;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "unknown"

    sput-object v6, Lxcrash/XCrash;->b:Ljava/lang/String;

    :cond_5
    iget-object v6, v3, Lxcrash/XCrash$InitParameters;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v5}, Lxcrash/j;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lxcrash/XCrash$InitParameters;->a:Ljava/lang/String;

    :cond_6
    iget-object v6, v3, Lxcrash/XCrash$InitParameters;->a:Ljava/lang/String;

    sput-object v6, Lxcrash/XCrash;->c:Ljava/lang/String;

    iget-object v6, v3, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "/tombstones"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    :cond_7
    iget-object v6, v3, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    sput-object v6, Lxcrash/XCrash;->d:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    iget-boolean v6, v3, Lxcrash/XCrash$InitParameters;->h:Z

    const/16 v32, 0x0

    if-nez v6, :cond_9

    iget-boolean v6, v3, Lxcrash/XCrash$InitParameters;->H:Z

    if-eqz v6, :cond_8

    goto :goto_2

    :cond_8
    move-object/from16 v9, v32

    goto :goto_3

    :cond_9
    :goto_2
    invoke-static {v5, v8}, Lxcrash/j;->n(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, v3, Lxcrash/XCrash$InitParameters;->H:Z

    if-eqz v7, :cond_b

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    :cond_a
    iput-boolean v2, v3, Lxcrash/XCrash$InitParameters;->H:Z

    :cond_b
    move-object v9, v6

    :goto_3
    invoke-static {}, Lxcrash/d;->l()Lxcrash/d;

    move-result-object v10

    iget-object v11, v3, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    iget v12, v3, Lxcrash/XCrash$InitParameters;->j:I

    iget v13, v3, Lxcrash/XCrash$InitParameters;->v:I

    iget v14, v3, Lxcrash/XCrash$InitParameters;->K:I

    iget v15, v3, Lxcrash/XCrash$InitParameters;->f:I

    iget v4, v3, Lxcrash/XCrash$InitParameters;->g:I

    iget v6, v3, Lxcrash/XCrash$InitParameters;->c:I

    move/from16 v16, v4

    move/from16 v17, v6

    invoke-virtual/range {v10 .. v17}, Lxcrash/d;->n(Ljava/lang/String;IIIIII)V

    iget-boolean v4, v3, Lxcrash/XCrash$InitParameters;->h:Z

    if-nez v4, :cond_c

    iget-boolean v4, v3, Lxcrash/XCrash$InitParameters;->t:Z

    if-nez v4, :cond_c

    iget-boolean v4, v3, Lxcrash/XCrash$InitParameters;->H:Z

    if-eqz v4, :cond_d

    :cond_c
    instance-of v4, v5, Landroid/app/Application;

    if-eqz v4, :cond_d

    invoke-static {}, Lxcrash/a;->d()Lxcrash/a;

    move-result-object v4

    move-object v6, v5

    check-cast v6, Landroid/app/Application;

    invoke-virtual {v4, v6}, Lxcrash/a;->e(Landroid/app/Application;)V

    :cond_d
    iget-boolean v4, v3, Lxcrash/XCrash$InitParameters;->h:Z

    if-eqz v4, :cond_e

    invoke-static {}, Lxcrash/h;->b()Lxcrash/h;

    move-result-object v7

    sget-boolean v10, Lxcrash/XCrash;->i:Z

    sget-object v11, Lxcrash/XCrash;->b:Ljava/lang/String;

    iget-object v12, v3, Lxcrash/XCrash$InitParameters;->a:Ljava/lang/String;

    iget-object v13, v3, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    iget-boolean v14, v3, Lxcrash/XCrash$InitParameters;->i:Z

    iget v15, v3, Lxcrash/XCrash$InitParameters;->k:I

    iget v4, v3, Lxcrash/XCrash$InitParameters;->l:I

    iget v6, v3, Lxcrash/XCrash$InitParameters;->m:I

    iget-boolean v0, v3, Lxcrash/XCrash$InitParameters;->n:Z

    iget-boolean v2, v3, Lxcrash/XCrash$InitParameters;->o:Z

    move-object/from16 p0, v5

    iget-boolean v5, v3, Lxcrash/XCrash$InitParameters;->p:Z

    move/from16 v20, v5

    iget v5, v3, Lxcrash/XCrash$InitParameters;->q:I

    move/from16 v21, v5

    iget-object v5, v3, Lxcrash/XCrash$InitParameters;->r:[Ljava/lang/String;

    move-object/from16 v22, v5

    iget-object v5, v3, Lxcrash/XCrash$InitParameters;->s:Lxcrash/e;

    move/from16 v16, v4

    move/from16 v17, v6

    move/from16 v18, v0

    move/from16 v19, v2

    move-object/from16 v23, v5

    invoke-virtual/range {v7 .. v23}, Lxcrash/h;->e(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZZZI[Ljava/lang/String;Lxcrash/e;)V

    goto :goto_4

    :cond_e
    move-object/from16 p0, v5

    :goto_4
    iget-boolean v0, v3, Lxcrash/XCrash$InitParameters;->H:Z

    iget-boolean v2, v3, Lxcrash/XCrash$InitParameters;->t:Z

    if-nez v2, :cond_10

    if-eqz v0, :cond_f

    goto :goto_5

    :cond_f
    const/4 v2, 0x0

    goto :goto_7

    :cond_10
    :goto_5
    invoke-static {}, Lxcrash/NativeHandler;->b()Lxcrash/NativeHandler;

    move-result-object v4

    iget-object v6, v3, Lxcrash/XCrash$InitParameters;->e:Lxcrash/f;

    sget-object v7, Lxcrash/XCrash;->b:Ljava/lang/String;

    iget-object v8, v3, Lxcrash/XCrash$InitParameters;->a:Ljava/lang/String;

    iget-object v9, v3, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    iget-boolean v10, v3, Lxcrash/XCrash$InitParameters;->t:Z

    iget-boolean v11, v3, Lxcrash/XCrash$InitParameters;->u:Z

    iget v12, v3, Lxcrash/XCrash$InitParameters;->w:I

    iget v13, v3, Lxcrash/XCrash$InitParameters;->x:I

    iget v14, v3, Lxcrash/XCrash$InitParameters;->y:I

    iget-boolean v15, v3, Lxcrash/XCrash$InitParameters;->z:Z

    iget-boolean v0, v3, Lxcrash/XCrash$InitParameters;->A:Z

    iget-boolean v2, v3, Lxcrash/XCrash$InitParameters;->B:Z

    iget-boolean v5, v3, Lxcrash/XCrash$InitParameters;->C:Z

    move/from16 v17, v2

    iget-boolean v2, v3, Lxcrash/XCrash$InitParameters;->D:Z

    move/from16 v19, v2

    iget v2, v3, Lxcrash/XCrash$InitParameters;->E:I

    move/from16 v20, v2

    iget-object v2, v3, Lxcrash/XCrash$InitParameters;->F:[Ljava/lang/String;

    move-object/from16 v21, v2

    iget-object v2, v3, Lxcrash/XCrash$InitParameters;->G:Lxcrash/e;

    move/from16 v16, v5

    iget-boolean v5, v3, Lxcrash/XCrash$InitParameters;->H:Z

    if-eqz v5, :cond_11

    const/16 v23, 0x1

    goto :goto_6

    :cond_11
    const/16 v23, 0x0

    :goto_6
    iget-boolean v5, v3, Lxcrash/XCrash$InitParameters;->I:Z

    move-object/from16 v22, v2

    iget-boolean v2, v3, Lxcrash/XCrash$InitParameters;->J:Z

    move/from16 v25, v2

    iget v2, v3, Lxcrash/XCrash$InitParameters;->L:I

    move/from16 v26, v2

    iget v2, v3, Lxcrash/XCrash$InitParameters;->M:I

    move/from16 v27, v2

    iget v2, v3, Lxcrash/XCrash$InitParameters;->N:I

    move/from16 v28, v2

    iget-boolean v2, v3, Lxcrash/XCrash$InitParameters;->O:Z

    move/from16 v29, v2

    iget-boolean v2, v3, Lxcrash/XCrash$InitParameters;->P:Z

    iget-object v3, v3, Lxcrash/XCrash$InitParameters;->Q:Lxcrash/e;

    move/from16 v24, v5

    move/from16 v18, v16

    move-object/from16 v5, p0

    move/from16 v16, v0

    move/from16 v30, v2

    move-object/from16 v31, v3

    invoke-virtual/range {v4 .. v31}, Lxcrash/NativeHandler;->d(Landroid/content/Context;Lxcrash/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIZZZZZI[Ljava/lang/String;Lxcrash/e;ZZZIIIZZLxcrash/e;)I

    move-result v2

    :goto_7
    invoke-static {}, Lxcrash/d;->l()Lxcrash/d;

    move-result-object v0

    invoke-virtual {v0}, Lxcrash/d;->o()V

    sget-object v0, Lxcrash/XCrash;->f:Ljava/util/concurrent/Semaphore;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_12
    sput-object v32, Lxcrash/XCrash;->g:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static initHooker(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lxcrash/XCrash;->f:Ljava/util/concurrent/Semaphore;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lxcrash/XCrash;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    sput-object p0, Lxcrash/XCrash;->g:Landroid/content/Context;

    sput-object p1, Lxcrash/XCrash;->h:Ljava/lang/String;

    :try_start_0
    sget-object p0, Lxcrash/XCrash;->k:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 p0, 0x1

    sput-boolean p0, Lxcrash/XCrash;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lxcrash/XCrash;->f()Lxcrash/g;

    move-result-object p1

    const-string v0, "xcrash"

    const-string v1, "JavaCrashHandler setDefaultUncaughtExceptionHandler failed"

    invoke-interface {p1, v0, v1, p0}, Lxcrash/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static testJavaCrash(Z)V
    .locals 1

    if-eqz p0, :cond_0

    new-instance p0, Lxcrash/XCrash$b;

    invoke-direct {p0}, Lxcrash/XCrash$b;-><init>()V

    const-string v0, "xcrash_test_java_thread"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "test java exception"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static testNativeCrash(Z)V
    .locals 1

    invoke-static {}, Lxcrash/NativeHandler;->b()Lxcrash/NativeHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lxcrash/NativeHandler;->f(Z)V

    return-void
.end method
