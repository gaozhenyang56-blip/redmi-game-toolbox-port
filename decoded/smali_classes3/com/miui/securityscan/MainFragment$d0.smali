.class Lcom/miui/securityscan/MainFragment$d0;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d0"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/securityscan/MainFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/MainFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/MainFragment$d0;->b:Landroid/content/Context;

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/MainFragment$d0;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$d0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainFragment;

    iget-object v1, p0, Lcom/miui/securityscan/MainFragment$d0;->b:Landroid/content/Context;

    if-eqz v1, :cond_5

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lpf/g;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/securityscan/MainFragment;->n1(Lcom/miui/securityscan/MainFragment;I)I

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/miui/securityscan/MainFragment;->o1()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v4, Lcom/miui/securityscan/MainFragment;->s1:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/miui/securityscan/MainFragment$d0;->b:Landroid/content/Context;

    invoke-static {v5}, Lpf/i;->l(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v0}, Lcom/miui/securityscan/MainFragment;->O1()I

    move-result v6

    if-eqz v5, :cond_2

    invoke-static {v2, v3, v4}, Leg/d;->i(JLjava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v4}, Leg/d;->j(Ljava/util/ArrayList;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/miui/securityscan/MainFragment;->p1(Lcom/miui/securityscan/MainFragment;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/securityscan/MainFragment$d0;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/miui/securityscan/MainFragment;->N1()I

    move-result v2

    invoke-static {v1, v6, v2}, Leg/d;->f(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/miui/securityscan/MainFragment;->s1:Ljava/util/ArrayList;

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v2}, Lcom/miui/securityscan/MainFragment;->j0(Lcom/miui/securityscan/MainFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->i0(Lcom/miui/securityscan/MainFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, Lsf/b;->k()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->i0(Lcom/miui/securityscan/MainFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    invoke-static {v5, v6}, Lsf/b;->l(ZI)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/securityscan/MainFragment;->j0(Lcom/miui/securityscan/MainFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :goto_1
    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->k0(Lcom/miui/securityscan/MainFragment;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v0, v2}, Lcom/miui/securityscan/MainFragment;->l0(Lcom/miui/securityscan/MainFragment;Z)Z

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->m0(Lcom/miui/securityscan/MainFragment;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, v0, Lcom/miui/securityscan/MainFragment;->h:Lzf/h;

    const/16 v2, 0x6c

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :goto_2
    return-void
.end method
