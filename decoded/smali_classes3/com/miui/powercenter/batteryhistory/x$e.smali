.class Lcom/miui/powercenter/batteryhistory/x$e;
.super Lcom/miui/powercenter/batteryhistory/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/batteryhistory/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/x;


# direct methods
.method private constructor <init>(Lcom/miui/powercenter/batteryhistory/x;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/x$e;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/batteryhistory/x;Lcom/miui/powercenter/batteryhistory/x$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/x$e;-><init>(Lcom/miui/powercenter/batteryhistory/x;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/powercenter/batteryhistory/i$a;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/powercenter/batteryhistory/i$a;",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/x$e;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {p2, p1}, Lcom/miui/powercenter/batteryhistory/x;->l(Lcom/miui/powercenter/batteryhistory/x;Lcom/miui/powercenter/batteryhistory/i$a;)Lcom/miui/powercenter/batteryhistory/i$a;

    new-instance p2, Lcom/miui/powercenter/batteryhistory/v;

    invoke-direct {p2}, Lcom/miui/powercenter/batteryhistory/v;-><init>()V

    iput-object p1, p2, Lcom/miui/powercenter/batteryhistory/v;->b:Lcom/miui/powercenter/batteryhistory/i$a;

    iput-object p3, p2, Lcom/miui/powercenter/batteryhistory/v;->c:Ljava/util/List;

    iget-object p3, p0, Lcom/miui/powercenter/batteryhistory/x$e;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {p3}, Lcom/miui/powercenter/batteryhistory/x;->m(Lcom/miui/powercenter/batteryhistory/x;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/x$e;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/x;->m(Lcom/miui/powercenter/batteryhistory/x;)Z

    move-result p1

    if-nez p1, :cond_e

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/batteryhistory/u;

    invoke-virtual {p1}, Lcom/miui/powercenter/batteryhistory/u;->b()J

    move-result-wide v3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/batteryhistory/u;

    invoke-virtual {p1}, Lcom/miui/powercenter/batteryhistory/u;->b()J

    move-result-wide v5

    sub-long v3, v5, v3

    const-wide/32 v7, 0xa4cb800

    cmp-long p1, v3, v7

    const-string v3, "LevelViewHolder"

    if-lez p1, :cond_8

    sub-long/2addr v5, v7

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/x$e;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/x;->m(Lcom/miui/powercenter/batteryhistory/x;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/powercenter/batteryhistory/u;

    invoke-virtual {v7}, Lcom/miui/powercenter/batteryhistory/u;->b()J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-lez v7, :cond_2

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/powercenter/batteryhistory/u;

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lcom/miui/powercenter/batteryhistory/x$e;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {p3}, Lcom/miui/powercenter/batteryhistory/x;->m(Lcom/miui/powercenter/batteryhistory/x;)Z

    move-result p3

    if-eqz p3, :cond_4

    return-void

    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "begin result remove duplicate size "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/powercenter/batteryhistory/u;

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/batteryhistory/u;

    iget-byte v1, v1, Lcom/miui/powercenter/batteryhistory/u;->c:B

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/powercenter/batteryhistory/u;

    iget-byte v4, v4, Lcom/miui/powercenter/batteryhistory/u;->c:B

    if-eq v1, v4, :cond_5

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/powercenter/batteryhistory/u;

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/batteryhistory/u;

    iget-byte v1, v1, Lcom/miui/powercenter/batteryhistory/u;->c:B

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/batteryhistory/u;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "end result remove duplicate size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p2, Lcom/miui/powercenter/batteryhistory/v;->a:Ljava/util/List;

    goto/16 :goto_3

    :cond_8
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/x$e;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/x;->m(Lcom/miui/powercenter/batteryhistory/x;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "begin historyItemList remove duplicate size "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/powercenter/batteryhistory/u;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/batteryhistory/u;

    iget-byte v1, v1, Lcom/miui/powercenter/batteryhistory/u;->c:B

    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_b

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/powercenter/batteryhistory/u;

    iget-byte v4, v4, Lcom/miui/powercenter/batteryhistory/u;->c:B

    if-eq v1, v4, :cond_a

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/powercenter/batteryhistory/u;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/batteryhistory/u;

    iget-byte v1, v1, Lcom/miui/powercenter/batteryhistory/u;->c:B

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_c

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/powercenter/batteryhistory/u;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "end historyItemList remove duplicate size "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p2, Lcom/miui/powercenter/batteryhistory/v;->a:Ljava/util/List;

    :goto_3
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/x$e;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/x;->m(Lcom/miui/powercenter/batteryhistory/x;)Z

    move-result p1

    if-eqz p1, :cond_d

    return-void

    :cond_d
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lcom/miui/powercenter/batteryhistory/x$e$a;

    invoke-direct {p3, p0, p2}, Lcom/miui/powercenter/batteryhistory/x$e$a;-><init>(Lcom/miui/powercenter/batteryhistory/x$e;Lcom/miui/powercenter/batteryhistory/v;)V

    goto/16 :goto_5

    :cond_e
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/x$e;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/x;->m(Lcom/miui/powercenter/batteryhistory/x;)Z

    move-result p1

    if-eqz p1, :cond_f

    return-void

    :cond_f
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p2, Lcom/miui/powercenter/batteryhistory/v;->a:Ljava/util/List;

    new-instance p1, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p1, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p3

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {p3, v3, p1, v4}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_12

    const/4 p3, -0x1

    const-string v3, "level"

    invoke-virtual {p1, v3, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    const-string v3, "plugged"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "status"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_10

    const/4 v0, 0x5

    if-ne p1, v0, :cond_11

    :cond_10
    if-eqz v3, :cond_11

    goto :goto_4

    :cond_11
    move v2, v1

    :goto_4
    new-instance v0, Lcom/miui/powercenter/batteryhistory/u;

    invoke-direct {v0}, Lcom/miui/powercenter/batteryhistory/u;-><init>()V

    int-to-byte p3, p3

    iput-byte p3, v0, Lcom/miui/powercenter/batteryhistory/u;->c:B

    int-to-byte v3, v3

    iput-byte v3, v0, Lcom/miui/powercenter/batteryhistory/u;->f:B

    int-to-byte p1, p1

    iput-byte p1, v0, Lcom/miui/powercenter/batteryhistory/u;->d:B

    iput-boolean v2, v0, Lcom/miui/powercenter/batteryhistory/u;->k:Z

    iput-byte v1, v0, Lcom/miui/powercenter/batteryhistory/u;->b:B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lcom/miui/powercenter/batteryhistory/u;->a:J

    iget-object v4, p2, Lcom/miui/powercenter/batteryhistory/v;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/powercenter/batteryhistory/u;

    invoke-direct {v0}, Lcom/miui/powercenter/batteryhistory/u;-><init>()V

    iput-byte p3, v0, Lcom/miui/powercenter/batteryhistory/u;->c:B

    iput-byte v3, v0, Lcom/miui/powercenter/batteryhistory/u;->f:B

    iput-byte p1, v0, Lcom/miui/powercenter/batteryhistory/u;->d:B

    iput-boolean v2, v0, Lcom/miui/powercenter/batteryhistory/u;->k:Z

    iput-byte v1, v0, Lcom/miui/powercenter/batteryhistory/u;->b:B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/powercenter/batteryhistory/u;->a:J

    iget-object p1, p2, Lcom/miui/powercenter/batteryhistory/v;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lcom/miui/powercenter/batteryhistory/x$e$b;

    invoke-direct {p3, p0, p2}, Lcom/miui/powercenter/batteryhistory/x$e$b;-><init>(Lcom/miui/powercenter/batteryhistory/x$e;Lcom/miui/powercenter/batteryhistory/v;)V

    :goto_5
    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
