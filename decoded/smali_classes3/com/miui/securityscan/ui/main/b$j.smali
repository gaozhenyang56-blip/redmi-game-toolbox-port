.class Lcom/miui/securityscan/ui/main/b$j;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/ui/main/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Lcom/miui/securityscan/ui/main/b$i;

.field private s:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/securityscan/ui/main/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/securityscan/ui/main/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/b$j;->p:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/b$j;->q:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/securityscan/ui/main/b$j;->k:I

    iput v1, p0, Lcom/miui/securityscan/ui/main/b$j;->l:I

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/b$j;->n:Z

    iput v0, p0, Lcom/miui/securityscan/ui/main/b$j;->m:I

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/b$j;->s:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic b(Lcom/miui/securityscan/ui/main/b$j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/ui/main/b$j;->b:Z

    return p1
.end method

.method private d()V
    .locals 19

    move-object/from16 v1, p0

    new-instance v0, Lcom/miui/securityscan/ui/main/b$i;

    iget-object v2, v1, Lcom/miui/securityscan/ui/main/b$j;->s:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/miui/securityscan/ui/main/b$i;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/miui/securityscan/ui/main/b$j;->r:Lcom/miui/securityscan/ui/main/b$i;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->h:Z

    iput-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->i:Z

    move v4, v0

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    const/4 v3, 0x0

    :goto_0
    const/4 v14, 0x0

    :goto_1
    :try_start_0
    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    :goto_2
    :try_start_1
    iget-boolean v2, v1, Lcom/miui/securityscan/ui/main/b$j;->a:Z

    if-eqz v2, :cond_0

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/miui/securityscan/ui/main/b$j;->n()V

    invoke-direct/range {p0 .. p0}, Lcom/miui/securityscan/ui/main/b$j;->m()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    iget-object v2, v1, Lcom/miui/securityscan/ui/main/b$j;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/miui/securityscan/ui/main/b$j;->p:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/Runnable;

    move-object/from16 v17, v3

    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_1
    iget-boolean v2, v1, Lcom/miui/securityscan/ui/main/b$j;->d:Z

    iget-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->c:Z

    if-eq v2, v0, :cond_2

    iput-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->d:Z

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    const-string v2, "GLThread"

    move/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    const-string v3, "mPaused is now "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/miui/securityscan/ui/main/b$j;->d:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " tid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    move-object/from16 v17, v3

    move/from16 v18, v4

    const/16 v16, 0x0

    :goto_3
    iget-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->j:Z

    if-eqz v0, :cond_3

    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasing EGL context because asked to tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/miui/securityscan/ui/main/b$j;->n()V

    invoke-direct/range {p0 .. p0}, Lcom/miui/securityscan/ui/main/b$j;->m()V

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->j:Z

    const/4 v11, 0x1

    :cond_3
    if-eqz v7, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/miui/securityscan/ui/main/b$j;->n()V

    invoke-direct/range {p0 .. p0}, Lcom/miui/securityscan/ui/main/b$j;->m()V

    const/4 v7, 0x0

    :cond_4
    if-eqz v16, :cond_5

    iget-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->i:Z

    if-eqz v0, :cond_5

    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasing EGL surface because paused tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/miui/securityscan/ui/main/b$j;->n()V

    :cond_5
    if-eqz v16, :cond_8

    iget-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->h:Z

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/miui/securityscan/ui/main/b$j;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/b;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    invoke-static {v0}, Lcom/miui/securityscan/ui/main/b;->i(Lcom/miui/securityscan/ui/main/b;)Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_7

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/b$k;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/miui/securityscan/ui/main/b$j;->m()V

    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasing EGL context because paused tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v16, :cond_9

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/b$k;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/miui/securityscan/ui/main/b$j;->r:Lcom/miui/securityscan/ui/main/b$i;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/b$i;->e()V

    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "terminating EGL because paused tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->e:Z

    if-nez v0, :cond_b

    iget-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->g:Z

    if-nez v0, :cond_b

    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noticed surfaceView surface lost tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->i:Z

    if-eqz v0, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/miui/securityscan/ui/main/b$j;->n()V

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->f:Z

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_b
    iget-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->e:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->g:Z

    if-eqz v0, :cond_c

    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noticed surfaceView surface acquired tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->g:Z

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_c
    if-eqz v10, :cond_d

    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending render notification tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->o:Z

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/miui/securityscan/ui/main/b$j;->h()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v0, :cond_1e

    :try_start_4
    iget-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->h:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-nez v0, :cond_f

    if-eqz v11, :cond_e

    move/from16 v4, v18

    const/4 v11, 0x0

    goto :goto_5

    :cond_e
    :try_start_5
    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/ui/main/b$k;->g(Lcom/miui/securityscan/ui/main/b$j;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v0, :cond_f

    :try_start_6
    iget-object v0, v1, Lcom/miui/securityscan/ui/main/b$j;->r:Lcom/miui/securityscan/ui/main/b$i;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/b$i;->h()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->h:Z

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/securityscan/ui/main/b$k;->c(Lcom/miui/securityscan/ui/main/b$j;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :cond_f
    move/from16 v4, v18

    :goto_5
    :try_start_8
    iget-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->h:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v0, :cond_10

    :try_start_9
    iget-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->i:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->i:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x1

    :cond_10
    :try_start_a
    iget-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->i:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->q:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v0, :cond_11

    :try_start_b
    iget v0, v1, Lcom/miui/securityscan/ui/main/b$j;->k:I

    iget v2, v1, Lcom/miui/securityscan/ui/main/b$j;->l:I

    const-string v3, "GLThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "noticing that we want render notification tid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/miui/securityscan/ui/main/b$j;->q:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move v12, v0

    move v13, v2

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    goto :goto_6

    :cond_11
    const/4 v0, 0x0

    :goto_6
    :try_start_c
    iput-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->n:Z

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    :goto_7
    monitor-exit v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v14, :cond_12

    :try_start_d
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    move-object/from16 v3, v17

    goto/16 :goto_0

    :cond_12
    if-eqz v5, :cond_14

    const-string v2, "GLThread"

    const-string v3, "egl createSurface"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/miui/securityscan/ui/main/b$j;->r:Lcom/miui/securityscan/ui/main/b$i;

    invoke-virtual {v2}, Lcom/miui/securityscan/ui/main/b$i;->b()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v2

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    const/4 v3, 0x1

    :try_start_e
    iput-boolean v3, v1, Lcom/miui/securityscan/ui/main/b$j;->f:Z

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    move-object/from16 v3, v17

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw v0

    :cond_13
    move v5, v0

    :cond_14
    if-eqz v6, :cond_15

    iget-object v2, v1, Lcom/miui/securityscan/ui/main/b$j;->r:Lcom/miui/securityscan/ui/main/b$i;

    invoke-virtual {v2}, Lcom/miui/securityscan/ui/main/b$i;->a()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/miui/securityscan/ui/main/b$k;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    move v6, v0

    goto :goto_8

    :cond_15
    move-object/from16 v3, v17

    :goto_8
    if-eqz v4, :cond_17

    const-string v2, "GLThread"

    const-string v4, "onSurfaceCreated"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/miui/securityscan/ui/main/b$j;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/securityscan/ui/main/b;

    if-eqz v2, :cond_16

    invoke-static {v2}, Lcom/miui/securityscan/ui/main/b;->a(Lcom/miui/securityscan/ui/main/b;)Lcom/miui/securityscan/ui/main/b$n;

    move-result-object v2

    iget-object v4, v1, Lcom/miui/securityscan/ui/main/b$j;->r:Lcom/miui/securityscan/ui/main/b$i;

    iget-object v4, v4, Lcom/miui/securityscan/ui/main/b$i;->e:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v4}, Lcom/miui/securityscan/ui/main/b$n;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_16
    move v4, v0

    :cond_17
    if-eqz v8, :cond_19

    const-string v2, "GLThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onSurfaceChanged("

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/miui/securityscan/ui/main/b$j;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/securityscan/ui/main/b;

    if-eqz v2, :cond_18

    invoke-static {v2}, Lcom/miui/securityscan/ui/main/b;->a(Lcom/miui/securityscan/ui/main/b;)Lcom/miui/securityscan/ui/main/b$n;

    move-result-object v2

    invoke-interface {v2, v3, v12, v13}, Lcom/miui/securityscan/ui/main/b$n;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :cond_18
    move v8, v0

    :cond_19
    :try_start_10
    iget-object v2, v1, Lcom/miui/securityscan/ui/main/b$j;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/securityscan/ui/main/b;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v2, :cond_1a

    :try_start_11
    invoke-static {v2}, Lcom/miui/securityscan/ui/main/b;->a(Lcom/miui/securityscan/ui/main/b;)Lcom/miui/securityscan/ui/main/b$n;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/miui/securityscan/ui/main/b$n;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :cond_1a
    :try_start_12
    iget-object v2, v1, Lcom/miui/securityscan/ui/main/b$j;->r:Lcom/miui/securityscan/ui/main/b$i;

    invoke-virtual {v2}, Lcom/miui/securityscan/ui/main/b$i;->i()I

    move-result v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    const/16 v15, 0x3000

    if-eq v2, v15, :cond_1c

    const/16 v15, 0x300e

    if-eq v2, v15, :cond_1b

    :try_start_13
    const-string v15, "GLThread"

    const-string v0, "eglSwapBuffers"

    invoke-static {v15, v0, v2}, Lcom/miui/securityscan/ui/main/b$i;->g(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v2

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    const/4 v0, 0x1

    :try_start_14
    iput-boolean v0, v1, Lcom/miui/securityscan/ui/main/b$j;->f:Z

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_9

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :try_start_15
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :cond_1b
    const/4 v0, 0x1

    :try_start_16
    const-string v2, "GLThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "egl context lost tid="

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    const/4 v7, 0x1

    :cond_1c
    :goto_9
    if-eqz v9, :cond_1d

    const/4 v10, 0x1

    :cond_1d
    const/4 v0, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_b

    :catchall_4
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_a

    :cond_1e
    move/from16 v4, v18

    :cond_1f
    :try_start_17
    const-string v0, "GLThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waiting tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mHaveEglContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    move-object/from16 v2, p0

    :try_start_18
    iget-boolean v3, v2, Lcom/miui/securityscan/ui/main/b$j;->h:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mHaveEglSurface: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lcom/miui/securityscan/ui/main/b$j;->i:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mPaused: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lcom/miui/securityscan/ui/main/b$j;->d:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mHasSurface: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lcom/miui/securityscan/ui/main/b$j;->e:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mSurfaceIsBad: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lcom/miui/securityscan/ui/main/b$j;->f:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mWaitingForSurface: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lcom/miui/securityscan/ui/main/b$j;->g:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mWidth: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/miui/securityscan/ui/main/b$j;->k:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mHeight: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/miui/securityscan/ui/main/b$j;->l:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRequestRender: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lcom/miui/securityscan/ui/main/b$j;->n:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mRenderMode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/miui/securityscan/ui/main/b$j;->m:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    move-object v1, v2

    move-object/from16 v3, v17

    const/4 v0, 0x0

    goto/16 :goto_2

    :catchall_5
    move-exception v0

    move-object v2, v1

    :goto_a
    monitor-exit v15
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    :try_start_19
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_b

    :catchall_7
    move-exception v0

    goto :goto_a

    :catchall_8
    move-exception v0

    move-object v2, v1

    :goto_b
    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v1

    monitor-enter v1

    :try_start_1a
    invoke-direct/range {p0 .. p0}, Lcom/miui/securityscan/ui/main/b$j;->n()V

    invoke-direct/range {p0 .. p0}, Lcom/miui/securityscan/ui/main/b$j;->m()V

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    throw v0

    :catchall_9
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    throw v0
.end method

.method private h()Z
    .locals 2

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/b$j;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/b$j;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/b$j;->f:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/securityscan/ui/main/b$j;->k:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/securityscan/ui/main/b$j;->l:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/b$j;->n:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/securityscan/ui/main/b$j;->m:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private m()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/b$j;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b$j;->r:Lcom/miui/securityscan/ui/main/b$i;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/b$i;->e()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/b$j;->h:Z

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/securityscan/ui/main/b$k;->c(Lcom/miui/securityscan/ui/main/b$j;)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/b$j;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/b$j;->i:Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/b$j;->r:Lcom/miui/securityscan/ui/main/b$i;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/b$i;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/b$j;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/b$j;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/b$j;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()I
    .locals 2

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/miui/securityscan/ui/main/b$j;->m:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 5

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/securityscan/ui/main/b$j;->c:Z

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/miui/securityscan/ui/main/b$j;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/securityscan/ui/main/b$j;->d:Z

    if-nez v1, :cond_0

    const-string v1, "Main thread"

    const-string v2, "onPause waiting for mPaused."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public f()V
    .locals 5

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/securityscan/ui/main/b$j;->c:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/securityscan/ui/main/b$j;->n:Z

    iput-boolean v1, p0, Lcom/miui/securityscan/ui/main/b$j;->o:Z

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/miui/securityscan/ui/main/b$j;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/securityscan/ui/main/b$j;->d:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/securityscan/ui/main/b$j;->o:Z

    if-nez v1, :cond_0

    const-string v1, "Main thread"

    const-string v2, "onResume waiting for !mPaused."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public g(II)V
    .locals 3

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/miui/securityscan/ui/main/b$j;->k:I

    iput p2, p0, Lcom/miui/securityscan/ui/main/b$j;->l:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/securityscan/ui/main/b$j;->q:Z

    iput-boolean p1, p0, Lcom/miui/securityscan/ui/main/b$j;->n:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/securityscan/ui/main/b$j;->o:Z

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean p1, p0, Lcom/miui/securityscan/ui/main/b$j;->b:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/securityscan/ui/main/b$j;->d:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/securityscan/ui/main/b$j;->o:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/b$j;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Main thread"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowResize waiting for render complete from tid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public i()V
    .locals 2

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/miui/securityscan/ui/main/b$j;->a:Z

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/miui/securityscan/ui/main/b$j;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/b$j;->j:Z

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public k()V
    .locals 2

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/miui/securityscan/ui/main/b$j;->n:Z

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/miui/securityscan/ui/main/b$j;->m:I

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "renderMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o()V
    .locals 5

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceCreated tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/securityscan/ui/main/b$j;->e:Z

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/miui/securityscan/ui/main/b$j;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/securityscan/ui/main/b$j;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public p()V
    .locals 5

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceDestroyed tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/securityscan/ui/main/b$j;->e:Z

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/miui/securityscan/ui/main/b$j;->g:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/securityscan/ui/main/b$j;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starting tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLThread"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/b$j;->d()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/securityscan/ui/main/b$k;->f(Lcom/miui/securityscan/ui/main/b$j;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/miui/securityscan/ui/main/b;->h()Lcom/miui/securityscan/ui/main/b$k;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/securityscan/ui/main/b$k;->f(Lcom/miui/securityscan/ui/main/b$j;)V

    throw v0

    :goto_0
    return-void
.end method
