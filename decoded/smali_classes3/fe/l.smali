.class public Lfe/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfe/l$c;,
        Lfe/l$d;
    }
.end annotation


# static fields
.field private static m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfe/g;",
            ">;"
        }
    .end annotation
.end field

.field private static o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfe/g;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfe/g;",
            ">;"
        }
    .end annotation
.end field

.field private static q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfe/g;",
            ">;"
        }
    .end annotation
.end field

.field private static r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static x:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static y:Lfe/l;


# instance fields
.field private a:Z

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfe/l;->w:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lfe/l;->x:Ljava/util/HashSet;

    sget-object v0, Lfe/l;->w:Ljava/util/ArrayList;

    const-string v1, "venus"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lfe/l;->w:Ljava/util/ArrayList;

    const-string v1, "umi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lfe/l;->x:Ljava/util/HashSet;

    const-string v1, "com.miui.notes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lfe/l;->x:Ljava/util/HashSet;

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lfe/l;->x:Ljava/util/HashSet;

    const-string v1, "com.mi.health"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lfe/l;->x:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.mi_connect_service"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lfe/l;->x:Ljava/util/HashSet;

    const-string v1, "com.miui.smarttravel"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lfe/l;->x:Ljava/util/HashSet;

    const-string v1, "com.mi.oa"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lfe/l;->x:Ljava/util/HashSet;

    const-string v1, "com.funnypuri.client"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lfe/l;->x:Ljava/util/HashSet;

    const-string v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lfe/l;->x:Ljava/util/HashSet;

    const-string v1, "com.miui.securitymanager"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lfe/l;->x:Ljava/util/HashSet;

    sget-object v1, Ljg/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    sput-object v0, Lfe/l;->y:Lfe/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfe/l;->a:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfe/l;->b:J

    iput-wide v0, p0, Lfe/l;->c:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lfe/l;->d:J

    iput-wide v0, p0, Lfe/l;->e:J

    iput-wide v0, p0, Lfe/l;->f:J

    iput-wide v0, p0, Lfe/l;->g:J

    iput-wide v0, p0, Lfe/l;->h:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfe/l;->m:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfe/l;->n:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfe/l;->o:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfe/l;->p:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfe/l;->q:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfe/l;->r:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfe/l;->s:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfe/l;->t:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfe/l;->v:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lfe/l;->u:Ljava/util/List;

    return-void
.end method

.method private B(Landroid/content/Context;Lfe/l$c;)V
    .locals 9

    :try_start_0
    invoke-interface {p2}, Lfe/l$c;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lfe/l$c;->a()V

    iput-boolean v1, p0, Lfe/l;->a:Z

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lyd/a;->b:Lyd/a;

    invoke-interface {p2, v0}, Lfe/l$c;->c(Lyd/a;)V

    sget-object v0, Lyd/c;->g:Lyd/c;

    invoke-interface {p2, v0, v1}, Lfe/l$c;->b(Lyd/c;Z)V

    sget-object v0, Lyd/c;->j:Lyd/c;

    invoke-interface {p2, v0, v1}, Lfe/l$c;->b(Lyd/c;Z)V

    sget-object v0, Lyd/c;->k:Lyd/c;

    invoke-interface {p2, v0, v1}, Lfe/l$c;->b(Lyd/c;Z)V

    sget-object v0, Lyd/c;->l:Lyd/c;

    invoke-interface {p2, v0, v1}, Lfe/l$c;->b(Lyd/c;Z)V

    iput-boolean v1, p0, Lfe/l;->j:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lfe/l;->e:J

    invoke-interface {p2}, Lfe/l$c;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lfe/l$c;->a()V

    iput-boolean v1, p0, Lfe/l;->a:Z

    return-void

    :cond_1
    sget-object v0, Lyd/a;->c:Lyd/a;

    invoke-interface {p2, v0}, Lfe/l$c;->c(Lyd/a;)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/16 v2, 0x9

    const/16 v3, 0xd

    if-eqz v0, :cond_2

    invoke-static {}, Lx4/t;->h()I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-static {p1}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object v0

    invoke-virtual {v0}, Lme/t;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    invoke-direct {p0, p1, v3}, Lfe/l;->f(Landroid/content/Context;I)I

    goto :goto_1

    :cond_2
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_4

    sget-object v0, Lfe/l;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lfe/l;->u:Ljava/util/List;

    sget-object v4, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_3
    sget-object v0, Lfe/l;->w:Ljava/util/ArrayList;

    sget-object v4, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "venus"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lme/x;->b(Landroid/content/Context;)Lme/x;

    move-result-object v0

    invoke-virtual {v0}, Lme/x;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lfe/l;->f(Landroid/content/Context;I)I

    :cond_5
    invoke-static {}, Lx4/t;->E()Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0xe

    invoke-direct {p0, p1, v0}, Lfe/l;->f(Landroid/content/Context;I)I

    :cond_6
    sget-boolean v0, Lme/t;->h:Z

    if-eqz v0, :cond_7

    const/16 v0, 0xf

    invoke-direct {p0, p1, v0}, Lfe/l;->f(Landroid/content/Context;I)I

    :cond_7
    const/16 v0, 0x11

    invoke-direct {p0, p1, v0}, Lfe/l;->f(Landroid/content/Context;I)I

    const/16 v0, 0x13

    invoke-direct {p0, p1, v0}, Lfe/l;->f(Landroid/content/Context;I)I

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lfe/l;->f(Landroid/content/Context;I)I

    move-result v0

    const/4 v3, 0x6

    invoke-direct {p0, p1, v3}, Lfe/l;->f(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lx4/t;->p()Z

    move-result v4

    if-nez v4, :cond_8

    const/4 v4, 0x7

    invoke-direct {p0, p1, v4}, Lfe/l;->f(Landroid/content/Context;I)I

    :cond_8
    const/16 v4, 0xa

    invoke-direct {p0, p1, v4}, Lfe/l;->f(Landroid/content/Context;I)I

    move-result v4

    const/16 v5, 0xb

    invoke-direct {p0, p1, v5}, Lfe/l;->f(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Lyd/c;->c:Lyd/c;

    const/4 v7, 0x1

    if-ne v0, v7, :cond_9

    move v8, v7

    goto :goto_2

    :cond_9
    move v8, v1

    :goto_2
    invoke-interface {p2, v6, v8}, Lfe/l$c;->b(Lyd/c;Z)V

    sget-boolean v6, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v6, :cond_b

    invoke-static {p1}, Lme/h;->e(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-direct {p0, p1, v2}, Lfe/l;->f(Landroid/content/Context;I)I

    move-result v2

    sget-object v6, Lyd/c;->d:Lyd/c;

    if-ne v2, v7, :cond_a

    move v2, v7

    goto :goto_3

    :cond_a
    move v2, v1

    :goto_3
    invoke-interface {p2, v6, v2}, Lfe/l$c;->b(Lyd/c;Z)V

    :cond_b
    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    if-ne v3, v2, :cond_c

    if-ne v4, v2, :cond_c

    if-ne v5, v2, :cond_c

    move v0, v7

    goto :goto_4

    :cond_c
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lfe/l;->k:Z

    invoke-interface {p2}, Lfe/l$c;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Lfe/l$c;->a()V

    iput-boolean v1, p0, Lfe/l;->a:Z

    return-void

    :cond_d
    sget-object v0, Lyd/a;->d:Lyd/a;

    invoke-interface {p2, v0}, Lfe/l$c;->c(Lyd/a;)V

    invoke-static {p1}, Lme/w;->L(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/i;->d()Lcom/miui/powercenter/batteryhistory/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/i;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/powercenter/batteryhistory/b;->e(Landroid/content/Context;Ljava/util/List;)Lcom/miui/powercenter/batteryhistory/b$a;

    move-result-object v0

    iget-wide v3, v0, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    goto :goto_5

    :cond_e
    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/o;->a(Landroid/content/Context;)J

    move-result-wide v3

    :goto_5
    sget-object v0, Lyd/c;->h:Lyd/c;

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_f

    move v4, v7

    goto :goto_6

    :cond_f
    move v4, v1

    :goto_6
    invoke-interface {p2, v0, v4}, Lfe/l$c;->b(Lyd/c;Z)V

    if-ltz v3, :cond_10

    move v0, v7

    goto :goto_7

    :cond_10
    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lfe/l;->l:Z

    invoke-interface {p2}, Lfe/l$c;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p2}, Lfe/l$c;->a()V

    iput-boolean v1, p0, Lfe/l;->a:Z

    return-void

    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v0, Lyd/a;->a:Lyd/a;

    invoke-interface {p2, v0}, Lfe/l$c;->c(Lyd/a;)V

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lfe/l;->f(Landroid/content/Context;I)I

    move-result p1

    sget-object v0, Lyd/c;->e:Lyd/c;

    if-ne p1, v7, :cond_12

    move v5, v7

    goto :goto_8

    :cond_12
    move v5, v1

    :goto_8
    invoke-interface {p2, v0, v5}, Lfe/l$c;->b(Lyd/c;Z)V

    if-ne p1, v2, :cond_13

    move v1, v7

    :cond_13
    iput-boolean v1, p0, Lfe/l;->i:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v3

    iput-wide p1, p0, Lfe/l;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception p1

    const-string p2, "QuickOptimizeManager"

    const-string v0, "loadTaskListInThread scan item exception: "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    return-void
.end method

.method static synthetic a(Lfe/l;Z)Z
    .locals 0

    iput-boolean p1, p0, Lfe/l;->a:Z

    return p1
.end method

.method static synthetic b(Lfe/l;)V
    .locals 0

    invoke-direct {p0}, Lfe/l;->x()V

    return-void
.end method

.method static synthetic c(Lfe/l;Landroid/content/Context;Lfe/l$c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lfe/l;->B(Landroid/content/Context;Lfe/l$c;)V

    return-void
.end method

.method static synthetic d(Lfe/l;Lfe/l$c;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lfe/l;->j(Lfe/l$c;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic e(Lfe/l;Lfe/l$c;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lfe/l;->i(Lfe/l$c;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private f(Landroid/content/Context;I)I
    .locals 10

    invoke-direct {p0, p1, p2}, Lfe/l;->u(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    new-instance v2, Lfe/g;

    invoke-direct {v2}, Lfe/g;-><init>()V

    iput p2, v2, Lfe/g;->a:I

    invoke-direct {p0, p1, p2}, Lfe/l;->t(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lfe/g;->b:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lfe/l;->v(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lfe/g;->g:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-ne p2, v5, :cond_0

    sget-object v6, Lfe/l;->r:Ljava/util/List;

    invoke-direct {p0, p1, v6}, Lfe/l;->k(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v2, Lfe/g;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v6, 0x7f10010c

    sget-object v7, Lfe/l;->r:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v8, v4, [Ljava/lang/Object;

    sget-object v9, Lfe/l;->r:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {p1, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lfe/g;->g:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    sget-object v6, Lfe/l;->s:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v0, Lfe/l;->s:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v4

    :cond_2
    :goto_0
    sget-object v6, Lfe/l;->t:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lfe/l;->t:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v6, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move v0, v1

    :cond_3
    if-ne v0, p1, :cond_4

    sget-object p1, Lfe/l;->p:Ljava/util/List;

    :goto_1
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-ne v0, v5, :cond_5

    invoke-virtual {v2, v3}, Lfe/g;->g(Z)V

    sget-object p1, Lfe/l;->o:Ljava/util/List;

    goto :goto_1

    :cond_5
    if-ne v0, v4, :cond_6

    sget-object p1, Lfe/l;->n:Ljava/util/List;

    goto :goto_1

    :cond_6
    :goto_2
    return v0
.end method

.method private h(Landroid/content/Context;I)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    sget-object v1, Lfe/l;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p2, Lfe/l;->m:Ljava/util/List;

    invoke-static {p1}, Lx4/v;->j(Landroid/content/Context;)I

    move-result v1

    invoke-static {p2, v1}, Lfe/m;->j(Ljava/util/List;I)V

    invoke-static {p1}, Lx4/v;->j(Landroid/content/Context;)I

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lfe/l;->m:Ljava/util/List;

    invoke-static {p1, p2}, Lfe/m;->i(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0x3e7

    invoke-static {p1, p2}, Lfe/m;->j(Ljava/util/List;I)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-static {p1, p2}, Lfe/f;->b(J)V

    return v0

    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    invoke-static {p1}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p1

    const/16 p2, 0x32

    invoke-virtual {p1, p2}, Lme/t;->G(I)V

    return v0

    :cond_2
    const/4 v1, 0x4

    if-ne p2, v1, :cond_3

    sget-object p2, Lfe/l;->r:Ljava/util/List;

    invoke-static {p1, p2}, Lfe/a;->b(Landroid/content/Context;Ljava/util/List;)V

    return v0

    :cond_3
    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p2, v1, :cond_5

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le p2, v1, :cond_4

    invoke-static {p1, v3}, Lme/w;->y0(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    invoke-static {p1, v2}, Lme/w;->y0(Landroid/content/Context;I)V

    :goto_0
    return v0

    :cond_5
    const/16 v1, 0x9

    if-ne p2, v1, :cond_6

    invoke-static {v3}, Lme/h;->k(Z)V

    return v0

    :cond_6
    const/4 v1, 0x6

    if-ne p2, v1, :cond_7

    invoke-static {p1}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p1

    invoke-virtual {p1, v0}, Lme/t;->H(I)V

    return v0

    :cond_7
    const/4 v1, 0x7

    if-ne p2, v1, :cond_8

    invoke-static {p1}, Lme/w;->d(Landroid/content/Context;)V

    return v0

    :cond_8
    const/16 v1, 0xa

    if-ne p2, v1, :cond_9

    invoke-static {p1}, Lme/w;->e(Landroid/content/Context;)V

    return v0

    :cond_9
    const/16 v1, 0xb

    const/16 v4, 0xf

    if-ne p2, v1, :cond_a

    invoke-static {p1}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p1

    invoke-virtual {p1, v4}, Lme/t;->O(I)V

    return v0

    :cond_a
    const/16 v1, 0xc

    if-ne p2, v1, :cond_b

    invoke-static {p1}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p1

    invoke-virtual {p1, v3}, Lme/t;->F(Z)V

    return v0

    :cond_b
    const/16 v1, 0xd

    if-ne p2, v1, :cond_c

    invoke-static {p1}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p1

    invoke-virtual {p1, v2}, Lme/t;->L(I)V

    sput-boolean v0, Lcom/miui/powercenter/PowerCenter;->p:Z

    return v0

    :cond_c
    const/16 v1, 0xe

    if-ne p2, v1, :cond_d

    invoke-static {p1}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lme/t;->a(I)V

    return v0

    :cond_d
    if-ne p2, v4, :cond_e

    invoke-static {p1}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p1

    invoke-virtual {p1}, Lme/t;->I()V

    return v0

    :cond_e
    const/16 v1, 0x10

    if-ne p2, v1, :cond_f

    invoke-static {p1}, Lme/x;->b(Landroid/content/Context;)Lme/x;

    move-result-object p1

    const/16 p2, 0x438

    invoke-virtual {p1, p2}, Lme/x;->g(I)V

    sput-boolean v0, Lcom/miui/powercenter/PowerCenter;->p:Z

    return v0

    :cond_f
    const/16 v1, 0x11

    if-ne p2, v1, :cond_10

    const/16 p1, 0x258

    invoke-static {p1}, Lgd/c;->j2(I)V

    return v0

    :cond_10
    const/16 v1, 0x13

    if-ne p2, v1, :cond_11

    invoke-static {p1}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p1

    invoke-virtual {p1}, Lme/t;->b()V

    return v0

    :cond_11
    return v3
.end method

.method private i(Lfe/l$c;Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfe/l$c;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lfe/l$c;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lfe/l$c;->a()V

    iput-boolean v1, p0, Lfe/l;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    sget-object v0, Lfe/l;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lfe/a;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lfe/l;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object p3, Lfe/l;->m:Ljava/util/List;

    sget-object v0, Ljg/b;->c:Ljava/util/ArrayList;

    invoke-interface {p3, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    new-instance p3, Lfe/g;

    invoke-direct {p3}, Lfe/g;-><init>()V

    const/4 v0, 0x1

    iput v0, p3, Lfe/g;->a:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1212be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lfe/g;->b:Ljava/lang/String;

    sget-object v2, Lfe/l;->m:Ljava/util/List;

    invoke-direct {p0, p2, v2}, Lfe/l;->k(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p3, Lfe/g;->c:Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10010d

    sget-object v4, Lfe/l;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v0, [Ljava/lang/Object;

    sget-object v6, Lfe/l;->m:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lfe/g;->g:Ljava/lang/String;

    sget-object v2, Lfe/l;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lfe/l;->p:Ljava/util/List;

    invoke-interface {v0, v1, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object p3, Lyd/c;->i:Lyd/c;

    invoke-interface {p1, p3, v1}, Lfe/l$c;->b(Lyd/c;Z)V

    goto :goto_1

    :cond_3
    sget-object v2, Lfe/l;->n:Ljava/util/List;

    invoke-interface {v2, v1, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object p3, Lyd/c;->i:Lyd/c;

    invoke-interface {p1, p3, v0}, Lfe/l$c;->b(Lyd/c;Z)V

    :goto_1
    new-instance p3, Landroid/content/Intent;

    const-string v0, "com.miui.powercenter.action.LOAD_OPTIMIZE_TASK"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object p2

    invoke-virtual {p2, p3}, Lr0/a;->d(Landroid/content/Intent;)Z

    invoke-interface {p1}, Lfe/l$c;->h()V

    invoke-virtual {p0}, Lfe/l;->o()I

    move-result p1

    invoke-static {p1}, Lhd/a;->j1(I)V

    sget-object p1, Lfe/l;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lhd/a;->i1(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v2, p0, Lfe/l;->c:J

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-static {p1, p2}, Lhd/a;->n1(J)V

    iput-boolean v1, p0, Lfe/l;->a:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_3
    const-string p2, "QuickOptimizeManager"

    const-string p3, "finishLoadRunningAppList: "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private j(Lfe/l$c;Landroid/content/Context;)V
    .locals 1

    invoke-interface {p1}, Lfe/l$c;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lfe/l$c;->a()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lfe/l;->a:Z

    return-void

    :cond_0
    invoke-direct {p0}, Lfe/l;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lfe/l$b;

    invoke-direct {v0, p0, p1, p2}, Lfe/l$b;-><init>(Lfe/l;Lfe/l$c;Landroid/content/Context;)V

    invoke-static {p2, v0}, Lfe/m;->h(Landroid/content/Context;Lfe/m$c;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lfe/l;->i(Lfe/l$c;Landroid/content/Context;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private k(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lhe/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lhe/a;

    invoke-direct {v2}, Lhe/a;-><init>()V

    iput-object v1, v2, Lhe/a;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lme/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lhe/a;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static m()Lfe/l;
    .locals 2

    sget-object v0, Lfe/l;->y:Lfe/l;

    if-nez v0, :cond_1

    const-class v0, Lfe/l;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lfe/l;->y:Lfe/l;

    if-nez v1, :cond_0

    new-instance v1, Lfe/l;

    invoke-direct {v1}, Lfe/l;-><init>()V

    sput-object v1, Lfe/l;->y:Lfe/l;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lfe/l;->y:Lfe/l;

    return-object v0
.end method

.method private n(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfe/g;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfe/g;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private t(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const-string p1, ""

    return-object p1

    :pswitch_1
    const p2, 0x7f1212c2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    const p2, 0x7f1212ba

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    const p2, 0x7f121252

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    const p2, 0x7f1212dc

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_5
    const p2, 0x7f1212cc

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_6
    const p2, 0x7f1212c7

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_7
    const p2, 0x7f120639

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_8
    const p2, 0x7f12123f

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_9
    const p2, 0x7f1212c1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_a
    const p2, 0x7f1212ca

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_b
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-gt p2, v0, :cond_0

    const p2, 0x7f1212cf

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const p2, 0x7f1212bf

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_c
    const p2, 0x7f1212c0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_d
    const p2, 0x7f1212b2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_e
    const p2, 0x7f1212db

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_f
    const p2, 0x7f1212b7

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_10
    const p2, 0x7f1212be

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private u(Landroid/content/Context;I)I
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x2

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    invoke-static {p1}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p1

    invoke-virtual {p1}, Lme/t;->D()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    move v0, v1

    goto/16 :goto_4

    :cond_1
    :goto_1
    move v0, v3

    goto/16 :goto_4

    :pswitch_2
    invoke-static {}, Lgd/c;->o0()I

    move-result p1

    div-int/lit8 p1, p1, 0x3c

    if-eqz p1, :cond_2

    const/16 p2, 0xa

    if-le p1, p2, :cond_1

    :cond_2
    :goto_2
    move v0, v2

    goto/16 :goto_4

    :pswitch_3
    invoke-static {p1}, Lme/x;->b(Landroid/content/Context;)Lme/x;

    move-result-object p1

    invoke-virtual {p1}, Lme/x;->a()I

    move-result p1

    const/16 p2, 0x438

    if-ne p1, p2, :cond_2

    goto :goto_1

    :pswitch_4
    invoke-static {}, Lme/w;->f0()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p1}, Lme/w;->A(Landroid/content/Context;)I

    move-result p2

    if-ne p2, v1, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-static {p1}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p1

    invoke-virtual {p1}, Lme/t;->y()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :pswitch_5
    invoke-static {p1}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p2

    invoke-virtual {p2}, Lme/t;->A()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {p1}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p1

    invoke-virtual {p1}, Lme/t;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :pswitch_6
    invoke-static {p1}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p1

    invoke-virtual {p1}, Lme/t;->n()I

    move-result p1

    if-ne p1, v1, :cond_1

    goto :goto_2

    :pswitch_7
    invoke-static {p1}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p1

    invoke-virtual {p1}, Lme/t;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :pswitch_8
    invoke-static {p1}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p1

    invoke-virtual {p1}, Lme/t;->p()I

    move-result p1

    const/16 p2, 0xf

    if-gt p1, p2, :cond_2

    goto :goto_1

    :pswitch_9
    invoke-static {p1}, Lme/w;->h0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :pswitch_a
    invoke-static {p1}, Lme/h;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :pswitch_b
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    invoke-static {p1}, Lme/w;->r(Landroid/content/Context;)I

    move-result p1

    if-le p2, v1, :cond_4

    if-nez p1, :cond_2

    goto/16 :goto_1

    :cond_4
    if-ne p1, v0, :cond_1

    goto :goto_2

    :pswitch_c
    invoke-static {p1}, Lme/w;->J(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_2

    :pswitch_d
    invoke-static {p1}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p1

    invoke-virtual {p1}, Lme/t;->w()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :pswitch_e
    invoke-static {p1}, Lfe/a;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    sget-object p2, Lfe/l;->r:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget-object v0, Lfe/l;->v:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lfe/l;->x:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lfe/l;->r:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    sget-object p1, Lfe/l;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :pswitch_f
    invoke-static {p1}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p1

    invoke-virtual {p1}, Lme/t;->g()I

    move-result p1

    if-gez p1, :cond_1

    goto/16 :goto_0

    :cond_7
    :goto_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private v(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const-string p1, ""

    return-object p1

    :pswitch_1
    const p2, 0x7f1212c3

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    const p2, 0x7f1212bb

    goto :goto_0

    :pswitch_3
    const p2, 0x7f121251

    goto :goto_0

    :pswitch_4
    const p2, 0x7f1212dd

    goto :goto_0

    :pswitch_5
    const p2, 0x7f1212b1

    goto :goto_0

    :pswitch_6
    const p2, 0x7f1212c9

    goto :goto_0

    :pswitch_7
    const p2, 0x7f1212bd

    goto :goto_0

    :pswitch_8
    const p2, 0x7f121241

    goto :goto_0

    :pswitch_9
    const p2, 0x7f121243

    goto :goto_0

    :pswitch_a
    const p2, 0x7f1212cb

    goto :goto_0

    :pswitch_b
    const p2, 0x7f1212d5

    goto :goto_0

    :pswitch_c
    const p2, 0x7f12123e

    goto :goto_0

    :pswitch_d
    const p2, 0x7f1212b3

    goto :goto_0

    :pswitch_e
    const p2, 0x7f1212db

    goto :goto_0

    :pswitch_f
    const p2, 0x7f1212b7

    goto :goto_0

    :pswitch_10
    const p2, 0x7f1212be

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private x()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lfe/l;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lfe/l;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lfe/l;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lfe/l;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lfe/l;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lfe/l;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lfe/l;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lfe/l;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lfe/l;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lfe/l;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lme/p;->f()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lfe/l;->s:Ljava/util/List;

    invoke-static {}, Lme/p;->e()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lfe/l;->t:Ljava/util/List;

    invoke-static {}, Lme/p;->b()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lfe/l;->v:Ljava/util/List;

    invoke-static {}, Lme/p;->g()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lfe/l;->u:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfe/l;->b:J

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private y()Z
    .locals 4

    invoke-static {}, Lfe/f;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x493e0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public A(Landroid/content/Context;Lfe/l$c;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lfe/l;->c:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lfe/l$a;

    invoke-direct {v0, p0, p2, p1}, Lfe/l$a;-><init>(Lfe/l;Lfe/l$c;Landroid/content/Context;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g(Landroid/content/Context;Lfe/g;)I
    .locals 3

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v0

    iget v1, p2, Lfe/g;->a:I

    invoke-direct {v0, p1, v1}, Lfe/l;->h(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lfe/i;->a(Lfe/g;)I

    move-result v0

    sget-object v1, Lfe/l;->q:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lfe/l;->n:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lfe/l;->o:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-wide v1, p0, Lfe/l;->b:J

    invoke-static {p1, p2}, Lfe/i;->b(Landroid/content/Context;Lfe/g;)J

    move-result-wide p1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lfe/l;->b:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfe/g;",
            ">;"
        }
    .end annotation

    sget-object v0, Lfe/l;->p:Ljava/util/List;

    return-object v0
.end method

.method public o()I
    .locals 1

    sget-object v0, Lfe/l;->n:Ljava/util/List;

    invoke-direct {p0, v0}, Lfe/l;->n(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfe/g;",
            ">;"
        }
    .end annotation

    sget-object v0, Lfe/l;->n:Ljava/util/List;

    return-object v0
.end method

.method public q()J
    .locals 2

    iget-wide v0, p0, Lfe/l;->b:J

    return-wide v0
.end method

.method public r()I
    .locals 1

    sget-object v0, Lfe/l;->o:Ljava/util/List;

    invoke-direct {p0, v0}, Lfe/l;->n(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfe/g;",
            ">;"
        }
    .end annotation

    sget-object v0, Lfe/l;->o:Ljava/util/List;

    return-object v0
.end method

.method public w()I
    .locals 1

    sget-object v0, Lfe/l;->q:Ljava/util/List;

    invoke-direct {p0, v0}, Lfe/l;->n(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Lfe/l;->a:Z

    return v0
.end method
