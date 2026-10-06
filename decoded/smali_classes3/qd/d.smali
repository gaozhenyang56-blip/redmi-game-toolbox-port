.class public Lqd/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ll4/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lqd/d;->a:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lqd/d;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static b(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ll4/b;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    move v2, v1

    :cond_0
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll4/b;

    if-eqz v2, :cond_2

    const-class v2, Ll4/k;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    move v2, v1

    :cond_2
    const-class v4, Ll4/l;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_b

    check-cast v3, Ll4/l;

    invoke-virtual {v3}, Ll4/l;->d()Ljava/lang/String;

    move-result-object v4

    const-string v6, "001"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lrd/i;

    invoke-direct {v4}, Lrd/i;-><init>()V

    invoke-virtual {v3, v4}, Ll4/l;->e(Ll4/b;)V

    const-string v3, "save_mode"

    :goto_2
    invoke-static {v3}, Lhd/a;->P0(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ll4/l;->d()Ljava/lang/String;

    move-result-object v4

    const-string v6, "002"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v0}, Lqd/d;->h(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lrd/d;

    invoke-direct {v4}, Lrd/d;-><init>()V

    invoke-virtual {v3, v4}, Ll4/l;->e(Ll4/b;)V

    const-string v3, "save_idea"

    goto :goto_2

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :goto_3
    move v2, v5

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Ll4/l;->d()Ljava/lang/String;

    move-result-object v4

    const-string v6, "003"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Lrd/j;

    invoke-direct {v4}, Lrd/j;-><init>()V

    invoke-virtual {v3, v4}, Ll4/l;->e(Ll4/b;)V

    const-string v3, "expend_top"

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ll4/l;->d()Ljava/lang/String;

    move-result-object v4

    const-string v6, "005"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lme/e0;->k()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lrd/e;

    invoke-direct {v4}, Lrd/e;-><init>()V

    invoke-virtual {v3, v4}, Ll4/l;->e(Ll4/b;)V

    const-string v3, "power_on_off_plan"

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Ll4/l;->d()Ljava/lang/String;

    move-result-object v4

    const-string v6, "006"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Lrd/c;

    invoke-direct {v4}, Lrd/c;-><init>()V

    invoke-virtual {v3, v4}, Ll4/l;->e(Ll4/b;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v3}, Ll4/l;->d()Ljava/lang/String;

    move-result-object v4

    const-string v6, "008"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lme/e0;->j()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lrd/b;

    invoke-direct {v4}, Lrd/b;-><init>()V

    invoke-virtual {v3, v4}, Ll4/l;->e(Ll4/b;)V

    const-string v3, "auto_task"

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v3}, Ll4/l;->d()Ljava/lang/String;

    move-result-object v4

    const-string v6, "009"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v0}, Lme/w;->W(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lrd/h;

    invoke-direct {v4}, Lrd/h;-><init>()V

    invoke-virtual {v3, v4}, Ll4/l;->e(Ll4/b;)V

    const-string v3, "extreme_save_mode"

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v3}, Ll4/l;->d()Ljava/lang/String;

    move-result-object v4

    const-string v6, "010"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lx4/t;->h()I

    move-result v4

    const/16 v6, 0x9

    if-le v4, v6, :cond_4

    invoke-static {v0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object v4

    invoke-virtual {v4}, Lme/t;->B()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object v4

    invoke-virtual {v4}, Lme/t;->n()I

    move-result v4

    if-ne v4, v5, :cond_4

    new-instance v4, Lrd/f;

    invoke-direct {v4}, Lrd/f;-><init>()V

    invoke-virtual {v3, v4}, Ll4/l;->e(Ll4/b;)V

    const-string v3, "dark_mode"

    goto/16 :goto_2

    :cond_b
    const-class v4, Ll4/a;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v4, :cond_0

    check-cast v3, Ll4/a;

    invoke-virtual {v3}, Ll4/a;->A()Z

    move-result v4

    if-nez v4, :cond_0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3}, Ll4/a;->s()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Ll4/a;->v()I

    move-result v9

    invoke-static {v6, v7, v4, v8, v9}, Ll4/j;->b(JLorg/json/JSONObject;Ljava/lang/String;I)Ll4/a;

    move-result-object v4

    invoke-virtual {v4}, Ll4/a;->A()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v3, v4}, Ll4/a;->i(Ll4/a;)V

    goto/16 :goto_1

    :cond_c
    const-string v2, "DataModelManager"

    const-string v3, "international ad hide"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_d
    return-void
.end method

.method private static c(Landroid/content/Context;)Lrd/a;
    .locals 4

    new-instance v0, Lrd/a;

    invoke-direct {v0}, Lrd/a;-><init>()V

    invoke-static {p0}, Lcom/miui/appmanager/AppManageUtils;->Q(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lpf/g;->o(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-le v1, v2, :cond_0

    invoke-static {}, Le3/d;->b()I

    move-result v1

    invoke-static {p0}, Lpf/g;->e(Landroid/content/Context;)I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {v0, v2}, Lrd/a;->h(I)V

    sget-object v1, Lrd/a$b;->b:Lrd/a$b;

    invoke-virtual {v0, v1}, Lrd/a;->k(Lrd/a$b;)V

    const v1, 0x7f1204c4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrd/a;->i(Ljava/lang/String;)V

    const v1, 0x7f1204c3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrd/a;->g(Ljava/lang/String;)V

    const-string v1, "appmanager_uninstall"

    invoke-virtual {v0, v1}, Lrd/a;->j(Ljava/lang/String;)V

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    invoke-static {}, Lpf/g;->k()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, v2}, Lrd/a;->h(I)V

    sget-object v1, Lrd/a$b;->a:Lrd/a$b;

    invoke-virtual {v0, v1}, Lrd/a;->k(Lrd/a$b;)V

    const v1, 0x7f121899

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrd/a;->i(Ljava/lang/String;)V

    const v1, 0x7f1204b0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lrd/a;->g(Ljava/lang/String;)V

    const-string p0, "appmanager_update"

    invoke-virtual {v0, p0}, Lrd/a;->j(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method private static d()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ll4/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lrd/g;

    invoke-direct {v1}, Lrd/g;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "top_card"

    invoke-static {v1}, Lhd/a;->P0(Ljava/lang/String;)V

    return-object v0
.end method

.method private static e()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ll4/b;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lrd/i;

    invoke-direct {v2}, Lrd/i;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "save_mode"

    invoke-static {v2}, Lhd/a;->P0(Ljava/lang/String;)V

    invoke-static {}, Lx4/t;->h()I

    move-result v2

    const/16 v3, 0x9

    if-le v2, v3, :cond_0

    invoke-static {v0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object v2

    invoke-virtual {v2}, Lme/t;->B()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object v2

    invoke-virtual {v2}, Lme/t;->n()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Lrd/f;

    invoke-direct {v2}, Lrd/f;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {v0}, Lme/w;->W(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lrd/h;

    invoke-direct {v2}, Lrd/h;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "extreme_save_mode"

    invoke-static {v2}, Lhd/a;->P0(Ljava/lang/String;)V

    :cond_1
    const-string v2, "app_smart_save"

    invoke-static {v2}, Lhd/a;->P0(Ljava/lang/String;)V

    invoke-static {}, Lme/e0;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lrd/b;

    invoke-direct {v2}, Lrd/b;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "auto_task"

    invoke-static {v2}, Lhd/a;->P0(Ljava/lang/String;)V

    :cond_2
    invoke-static {v0}, Lqd/d;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lrd/d;

    invoke-direct {v2}, Lrd/d;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "save_idea"

    invoke-static {v2}, Lhd/a;->P0(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lme/e0;->k()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lrd/e;

    invoke-direct {v2}, Lrd/e;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "power_on_off_plan"

    invoke-static {v2}, Lhd/a;->P0(Ljava/lang/String;)V

    :cond_4
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_5

    invoke-static {v0}, Lqd/d;->c(Landroid/content/Context;)Lrd/a;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v0, Lyd/b;

    invoke-direct {v0}, Lyd/b;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll4/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lqd/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lqd/d;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lqd/d;->a:Ljava/util/ArrayList;

    invoke-static {v1}, Lqd/d;->b(Ljava/util/ArrayList;)V

    sget-object v1, Lqd/d;->a:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-static {}, Lqd/d;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lqd/d;->e()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lqd/d$a;

    invoke-direct {v0, p0}, Lqd/d$a;-><init>(Ljava/lang/String;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static h(Landroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lx4/u;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lef/x;->z()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lqd/c;->c()Lqd/c;

    move-result-object p0

    invoke-virtual {p0}, Lqd/c;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
