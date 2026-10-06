.class Lqf/a$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqf/a;->h(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lqf/a$a;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lqf/a$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackingStrategy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdAnalytics"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lqf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "useonetrack"

    invoke-static {p4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lqf/a$a;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lqf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lqf/a$a;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lqf/a$a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/Analytics;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/Analytics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/Analytics;->setDebugOn(Z)V

    invoke-virtual {v0, p2}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object p2

    invoke-static {p1}, Lcom/xiaomi/analytics/Actions;->newAdAction(Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;

    move-result-object v0

    const-string v1, "e"

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    const-string v1, "ex"

    invoke-virtual {v0, v1, p3}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    const-string p3, "uniqueId"

    invoke-virtual {v0, p3, p6}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string v1, "t"

    invoke-virtual {v0, v1, p3}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    const-string p3, "VIEW"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {v0, p4, p6}, Lqf/a;->a(Lcom/xiaomi/analytics/AdAction;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p3, "CLICK"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0, p5, p6}, Lqf/a;->a(Lcom/xiaomi/analytics/AdAction;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p2, v0}, Lcom/xiaomi/analytics/Tracker;->track(Lcom/xiaomi/analytics/Action;)V

    return-void
.end method


# virtual methods
.method protected varargs b([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v0, "com.miui.securitycenter_appmanager"

    const-string v1, ""

    if-eqz p1, :cond_0

    const-string v0, "com.miui.securitycenter_globaladevent"

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lqf/a$a;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lqf/a$b;

    if-eqz v2, :cond_3

    check-cast p1, Lqf/a$b;

    invoke-static {p1}, Lqf/a$b;->a(Lqf/a$b;)Lcom/miui/common/card/models/AdvCardModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->getUsePosition()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "com.miui.securitycenter_scanresult"

    goto :goto_0

    :cond_2
    const-string p1, "com.miui.securitycenter_homepage"

    :goto_0
    move-object v0, p1

    goto :goto_2

    :cond_3
    instance-of v2, p1, Lqf/a$c;

    if-eqz v2, :cond_4

    const-string v0, "com.miui.securitycenter_datamodel"

    goto :goto_2

    :cond_4
    instance-of v2, p1, Lqf/a$d;

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    instance-of v2, p1, Lqf/a$e;

    if-eqz v2, :cond_6

    const-string v0, "com.miui.securitycenter_virusresult"

    goto :goto_2

    :cond_6
    instance-of p1, p1, Lqf/a$f;

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    move-object v0, v1

    :goto_2
    iget-object p1, p0, Lqf/a$a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lqf/a$b;

    if-eqz v2, :cond_a

    check-cast v1, Lqf/a$b;

    invoke-static {v1}, Lqf/a$b;->a(Lqf/a$b;)Lcom/miui/common/card/models/AdvCardModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {v1}, Lqf/a$b;->b(Lqf/a$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/common/card/models/AdvCardModel;->getEx()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/miui/common/card/models/AdvCardModel;->getTrackingStrategy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/miui/common/card/models/AdvCardModel;->getViewMonitorUrls()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/miui/common/card/models/AdvCardModel;->getClickMonitorUrls()[Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Lqf/a$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    instance-of v2, v1, Lqf/a$c;

    if-eqz v2, :cond_b

    check-cast v1, Lqf/a$c;

    invoke-static {v1}, Lqf/a$c;->a(Lqf/a$c;)Ll4/a;

    move-result-object v2

    invoke-static {v1}, Lqf/a$c;->b(Lqf/a$c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ll4/a;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ll4/a;->x()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ll4/a;->y()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ll4/a;->k()[Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Lqf/a$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    instance-of v2, v1, Lqf/a$d;

    if-eqz v2, :cond_c

    check-cast v1, Lqf/a$d;

    invoke-static {v1}, Lqf/a$d;->a(Lqf/a$d;)Lh3/b;

    move-result-object v2

    invoke-static {v1}, Lqf/a$d;->b(Lqf/a$d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lh3/b;->v()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lh3/b;->x()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lh3/b;->y()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lh3/b;->u()[Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Lqf/a$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    instance-of v2, v1, Lqf/a$e;

    if-eqz v2, :cond_d

    check-cast v1, Lqf/a$e;

    invoke-static {v1}, Lqf/a$e;->a(Lqf/a$e;)Lcom/miui/antivirus/result/b;

    move-result-object v2

    invoke-static {v1}, Lqf/a$e;->b(Lqf/a$e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/antivirus/result/b;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/miui/antivirus/result/b;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/miui/antivirus/result/b;->q()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/miui/antivirus/result/b;->k()[Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Lqf/a$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_d
    instance-of v2, v1, Lqf/a$f;

    if-eqz v2, :cond_8

    check-cast v1, Lqf/a$f;

    invoke-static {v1}, Lqf/a$f;->a(Lqf/a$f;)Lcom/miui/optimizemanage/optimizeresult/b;

    move-result-object v2

    invoke-static {v1}, Lqf/a$f;->b(Lqf/a$f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/optimizemanage/optimizeresult/b;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/miui/optimizemanage/optimizeresult/b;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/miui/optimizemanage/optimizeresult/b;->q()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/miui/optimizemanage/optimizeresult/b;->j()[Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Lqf/a$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v3, "ex"

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "adTrackInfo"

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_0

    const-string p2, "uniqueId"

    invoke-interface {v0, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p1, p3, p4, p5, p6}, Lqf/a;->b(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p2

    invoke-static {p1}, Lqf/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/analytics/StatManager;->getInstance()Lcom/miui/analytics/StatManager;

    move-result-object p3

    invoke-virtual {p3, p1, v0, p2}, Lcom/miui/analytics/StatManager;->adTrack(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lqf/a$a;->b([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
