.class public Lcom/miui/powercenter/autotask/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/autotask/o$c;
    }
.end annotation


# direct methods
.method static synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/powercenter/autotask/o;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/powercenter/autotask/o;->c(Lcom/miui/powercenter/autotask/AutoTask;Z)V

    return-void
.end method

.method public static c(Lcom/miui/powercenter/autotask/AutoTask;Z)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Apply task id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OperationsHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/miui/powercenter/autotask/o;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    invoke-static {}, Lme/e0;->a()Z

    move-result v2

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->removeAllRestoreOperation()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/miui/powercenter/autotask/o;->k()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    if-eqz p1, :cond_4

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getOperationNames()Ljava/util/List;

    move-result-object v5

    new-instance v7, Lcom/miui/powercenter/autotask/o$c;

    invoke-direct {v7, v6}, Lcom/miui/powercenter/autotask/o$c;-><init>(Lcom/miui/powercenter/autotask/o$a;)V

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    move v8, v0

    move v9, v8

    :goto_2
    if-ge v8, v7, :cond_3

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/miui/powercenter/autotask/o;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/miui/powercenter/autotask/AutoTask;->setRestoreOperation(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v11, "airplane_mode"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {p0, v10}, Lcom/miui/powercenter/autotask/AutoTask;->getOperation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move v9, v1

    goto :goto_3

    :cond_2
    invoke-virtual {p0, v10}, Lcom/miui/powercenter/autotask/AutoTask;->getOperation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->isPeriodTask()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->setStarted(Z)V

    goto :goto_4

    :cond_4
    move v9, v0

    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getRepeatType()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->isPeriodTask()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/AutoTask;->setEnabled(Z)V

    :cond_6
    invoke-static {v3, p0}, Lcom/miui/powercenter/autotask/g;->p(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)V

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v0

    invoke-static {v3, v0, v1}, Lcom/miui/powercenter/autotask/h;->g(Landroid/content/Context;J)V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide p0

    invoke-static {v3, p0, p1}, Lcom/miui/powercenter/autotask/h;->k(Landroid/content/Context;J)V

    goto :goto_5

    :cond_8
    invoke-static {}, Lcom/miui/powercenter/autotask/o;->k()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {v3, p0}, Lcom/miui/powercenter/autotask/r;->e(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v0

    invoke-static {v3, p1, v0, v1}, Lcom/miui/powercenter/autotask/h;->m(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_9
    :goto_5
    const-wide/16 p0, 0x0

    if-eqz v9, :cond_a

    invoke-static {v6}, Lcom/miui/powercenter/autotask/o;->d(Ljava/lang/Object;)V

    const-wide/16 p0, 0x3e8

    :cond_a
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {v4, p0, p1}, Lcom/miui/powercenter/autotask/o;->f(Ljava/util/Map;J)V

    :cond_b
    return-void
.end method

.method private static d(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/miui/powercenter/autotask/o$a;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/o$a;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "airplane_mode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v1, :cond_16

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Lme/t;->E(Z)V

    goto/16 :goto_9

    :cond_1
    const-string v0, "auto_clean_memory"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    mul-int/lit8 p0, p0, 0x3c

    invoke-static {p0}, Lgd/c;->j2(I)V

    goto/16 :goto_9

    :cond_2
    const-string v0, "bluetooth"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v1, :cond_16

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Lme/t;->F(Z)V

    goto/16 :goto_9

    :cond_4
    const-string v0, "brightness"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Integer;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lme/t;->G(I)V

    goto/16 :goto_9

    :cond_5
    const-string v0, "gps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Integer;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lme/w;->y0(Landroid/content/Context;I)V

    goto/16 :goto_9

    :cond_6
    const-string v0, "internet"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/Integer;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lme/t;->J(I)V

    goto/16 :goto_9

    :cond_7
    const-string v0, "sleep"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    check-cast p1, Ljava/lang/Integer;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lme/t;->O(I)V

    goto/16 :goto_9

    :cond_8
    const-string v0, "synchronization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v1, :cond_16

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_9
    move v2, v3

    :goto_2
    invoke-virtual {p0, v2}, Lme/t;->P(Z)V

    goto/16 :goto_9

    :cond_a
    const-string v0, "vibration"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v1, :cond_16

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_b

    move p1, v2

    goto :goto_3

    :cond_b
    move p1, v3

    :goto_3
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p0

    if-nez p0, :cond_c

    goto :goto_4

    :cond_c
    move v2, v3

    :goto_4
    invoke-virtual {v0, p1, v2}, Lme/t;->T(ZZ)V

    goto/16 :goto_9

    :cond_d
    const-string v0, "wifi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v1, :cond_16

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_5

    :cond_e
    move v2, v3

    :goto_5
    invoke-virtual {p0, v2}, Lme/t;->U(Z)V

    goto/16 :goto_9

    :cond_f
    const-string v0, "mute"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v1, :cond_16

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_6

    :cond_10
    move v2, v3

    :goto_6
    invoke-virtual {p0, v2}, Lme/t;->K(Z)V

    goto :goto_9

    :cond_11
    const-string v0, "auto_brightness"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_12

    move v2, v3

    :cond_12
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p0

    invoke-virtual {p0, v2}, Lme/t;->H(I)V

    goto :goto_9

    :cond_13
    const-string v0, "save_mode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v1, :cond_16

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_14

    move v0, v2

    goto :goto_7

    :cond_14
    move v0, v3

    :goto_7
    invoke-static {p0, v0}, Lme/w;->C0(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_8

    :cond_15
    move v2, v3

    :goto_8
    const-string p0, "AutoTask"

    invoke-static {v2, p0}, Lhd/a;->b1(ZLjava/lang/String;)V

    :cond_16
    :goto_9
    return-void
.end method

.method private static f(Ljava/util/Map;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/powercenter/autotask/o$b;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/autotask/o$b;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const-string v0, "airplane_mode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p0

    invoke-virtual {p0}, Lme/t;->c()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "auto_clean_memory"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lgd/c;->o0()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    div-int/lit8 p0, p0, 0x3c

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "bluetooth"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p0

    invoke-virtual {p0}, Lme/t;->d()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "brightness"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p0

    invoke-virtual {p0}, Lme/t;->g()I

    move-result p0

    goto :goto_0

    :cond_3
    const-string v0, "gps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lme/w;->r(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_4
    const-string v0, "internet"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p0

    invoke-virtual {p0}, Lme/t;->k()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v0, "sleep"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p0

    invoke-virtual {p0}, Lme/t;->p()I

    move-result p0

    goto :goto_0

    :cond_6
    const-string v0, "synchronization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p0

    invoke-virtual {p0}, Lme/t;->q()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_7
    const-string v0, "vibration"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p0

    invoke-virtual {p0}, Lme/t;->t()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_8
    const-string v0, "wifi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p0

    invoke-virtual {p0}, Lme/t;->u()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_9
    const-string v0, "mute"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p0

    invoke-virtual {p0}, Lme/t;->z()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_a
    const-string v0, "auto_brightness"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p0

    invoke-virtual {p0}, Lme/t;->f()I

    move-result p0

    goto/16 :goto_0

    :cond_b
    const-string v0, "save_mode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lme/w;->Q(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static h(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "brightness"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "screen_brightness_mode"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method private static i()Z
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static j(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restore task id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OperationsHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/miui/powercenter/autotask/o;->k()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getRestoreOperationNames()Ljava/util/List;

    move-result-object v1

    new-instance v4, Lcom/miui/powercenter/autotask/o$c;

    invoke-direct {v4, v2}, Lcom/miui/powercenter/autotask/o$c;-><init>(Lcom/miui/powercenter/autotask/o$a;)V

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/miui/powercenter/autotask/AutoTask;->getOperation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p0, v5}, Lcom/miui/powercenter/autotask/o;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v5}, Lcom/miui/powercenter/autotask/o;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_1
    const-string v6, "airplane_mode"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v4, 0x1

    invoke-virtual {p1, v5}, Lcom/miui/powercenter/autotask/AutoTask;->getRestoreOperation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v5}, Lcom/miui/powercenter/autotask/AutoTask;->getRestoreOperation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move v4, v3

    :cond_4
    invoke-virtual {p1, v3}, Lcom/miui/powercenter/autotask/AutoTask;->setStarted(Z)V

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->removeAllRestoreOperation()V

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getRepeatType()I

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p1, v3}, Lcom/miui/powercenter/autotask/AutoTask;->setEnabled(Z)V

    :cond_5
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/miui/powercenter/autotask/g;->p(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)V

    invoke-static {}, Lcom/miui/powercenter/autotask/o;->k()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/miui/powercenter/autotask/r;->e(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/miui/powercenter/autotask/h;->n(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    const-wide/16 p0, 0x0

    if-eqz v4, :cond_7

    invoke-static {v2}, Lcom/miui/powercenter/autotask/o;->d(Ljava/lang/Object;)V

    const-wide/16 p0, 0x3e8

    :cond_7
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v0, p0, p1}, Lcom/miui/powercenter/autotask/o;->f(Ljava/util/Map;J)V

    :cond_8
    return-void
.end method

.method private static k()Z
    .locals 1

    invoke-static {}, Lme/m;->c()Z

    move-result v0

    return v0
.end method
