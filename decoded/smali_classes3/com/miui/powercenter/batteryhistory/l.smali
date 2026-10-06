.class public Lcom/miui/powercenter/batteryhistory/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/batteryhistory/l$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:J

.field private c:J

.field private d:J

.field private e:Lcom/miui/powercenter/batteryhistory/i$a;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/miui/powercenter/batteryhistory/w;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/os/HandlerThread;

.field private m:Landroid/os/Handler;

.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private p:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->k:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/l;->a:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "BatteryHistorySource"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/l;->l:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Lcom/miui/powercenter/batteryhistory/l$a;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/miui/powercenter/batteryhistory/l$a;-><init>(Lcom/miui/powercenter/batteryhistory/l;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/l;->m:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/miui/powercenter/batteryhistory/l;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/l;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/powercenter/batteryhistory/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/l;->p()V

    return-void
.end method

.method static synthetic c(Lcom/miui/powercenter/batteryhistory/l;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/l;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/powercenter/batteryhistory/l;Lcom/miui/powercenter/batteryhistory/i$a;)Lcom/miui/powercenter/batteryhistory/i$a;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/l;->e:Lcom/miui/powercenter/batteryhistory/i$a;

    return-object p1
.end method

.method static synthetic e(Lcom/miui/powercenter/batteryhistory/l;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/l;->g:Ljava/util/List;

    return-object p1
.end method

.method private h(Z)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_batteryhistory_forceinvalid"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/l;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/l;->n()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "checkInvalid"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/l;->n()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "checkReset"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private j(J)V
    .locals 8

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->i:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p1, 0xc

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const-wide/32 v1, 0x36ee80

    if-nez p2, :cond_1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/l;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;

    iput-wide v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->startUTCTime:J

    iget-object v5, p0, Lcom/miui/powercenter/batteryhistory/l;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_2

    int-to-long v5, p2

    iput-wide v5, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->minLastItemHold:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "last item min hold : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lid/b;->a(Ljava/lang/String;)V

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "histogram time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->startUTCTime:J

    invoke-static {v6, v7}, Lcom/miui/powercenter/batteryhistory/n;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lid/b;->a(Ljava/lang/String;)V

    sub-long/2addr v3, v1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private k()V
    .locals 11

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->j:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->e:Lcom/miui/powercenter/batteryhistory/i$a;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/l;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/l;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    :cond_2
    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/l;->j:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;

    move v6, v2

    :goto_1
    iget-object v7, p0, Lcom/miui/powercenter/batteryhistory/l;->e:Lcom/miui/powercenter/batteryhistory/i$a;

    iget-object v7, v7, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    iget-object v7, p0, Lcom/miui/powercenter/batteryhistory/l;->e:Lcom/miui/powercenter/batteryhistory/i$a;

    iget-object v7, v7, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/powercenter/batteryhistory/u;

    iget-wide v7, v7, Lcom/miui/powercenter/batteryhistory/u;->a:J

    iget-wide v9, v4, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;->shutDownTime:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_3

    iget-wide v7, v4, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;->shutDownDuration:J

    add-long/2addr v0, v7

    iput v6, v4, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;->shutDownIndex:I

    iput-wide v0, v4, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;->shutDownPlusTime:J

    move v4, v5

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_2
    if-nez v4, :cond_5

    const-string v4, "correctHistoryLineData not find error"

    invoke-static {v4}, Lid/b;->a(Ljava/lang/String;)V

    :cond_5
    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/l;->e:Lcom/miui/powercenter/batteryhistory/i$a;

    iget-object v4, v4, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v6, v4, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->j:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/powercenter/batteryhistory/l;->s(Ljava/util/List;)V

    :goto_4
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_b

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;

    iget v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;->shutDownIndex:I

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/l;->e:Lcom/miui/powercenter/batteryhistory/i$a;

    iget-object v3, v3, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/l;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_9

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/l;->j:Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;

    iget v3, v3, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;->shutDownIndex:I

    :cond_9
    if-ltz v1, :cond_a

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/l;->e:Lcom/miui/powercenter/batteryhistory/i$a;

    iget-object v4, v4, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_a

    :goto_5
    if-ge v1, v3, :cond_a

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/l;->e:Lcom/miui/powercenter/batteryhistory/i$a;

    iget-object v4, v4, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/powercenter/batteryhistory/u;

    iget-wide v6, v4, Lcom/miui/powercenter/batteryhistory/u;->a:J

    iget-wide v8, v0, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;->shutDownPlusTime:J

    add-long/2addr v6, v8

    iput-wide v6, v4, Lcom/miui/powercenter/batteryhistory/u;->a:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    :goto_6
    return-void
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/l;->n()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "getBatteryHistogram"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "key_batteryhistory_histogram"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->i:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/powercenter/batteryhistory/l;->r(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 6

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/l;->n()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "getBatteryHistory"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "key_batteryhistory_firsttime"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/powercenter/batteryhistory/l;->b:J

    const-string v1, "key_batteryhistory_lasttime"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/powercenter/batteryhistory/l;->c:J

    const-string v1, "key_batteryhistory_resettime"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/powercenter/batteryhistory/l;->d:J

    const-string v1, "key_batteryhistory_firsthistory"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/powercenter/batteryhistory/l;->g:Ljava/util/List;

    const-string v1, "key_batteryhistory_lasthistory"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->h:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHistoryInfo database mHistoryFirstTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/powercenter/batteryhistory/l;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",mHistoryLastTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/powercenter/batteryhistory/l;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",mHistoryResetTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/powercenter/batteryhistory/l;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lid/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private n()Landroid/net/Uri;
    .locals 9

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    const-string v1, "content://com.miui.powercenter.batteryhistory"

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Lx4/z1;->t()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "isRecoveryMode"

    invoke-static {v1}, Lid/b;->a(Ljava/lang/String;)V

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lx4/z1;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_1
    :try_start_0
    const-class v1, Landroid/content/ContentProvider;

    const-class v2, Landroid/net/Uri;

    const-string v3, "maybeAddUserId"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/net/Uri;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-static {v1, v2, v3, v5, v4}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private o()V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/l;->n()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "getBatteryShutDown"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "key_batteryhistory_shutdown"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->j:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private p()V
    .locals 13

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const-string v0, "loadHistoryFullData to origin 1"

    invoke-static {v0}, Lid/b;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/l;->q()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/l;->m()V

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/l;->l()V

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/l;->o()V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/l;->g:Ljava/util/List;

    if-eqz v2, :cond_16

    iget-wide v2, p0, Lcom/miui/powercenter/batteryhistory/l;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    goto/16 :goto_5

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/n;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->e()V

    :cond_3
    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->t()V

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->f()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->i()Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/l;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    :cond_4
    invoke-static {}, Lcom/miui/powercenter/batteryhistory/i;->d()Lcom/miui/powercenter/batteryhistory/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/powercenter/batteryhistory/i;->a()Lcom/miui/powercenter/batteryhistory/i$a;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/powercenter/batteryhistory/l;->e:Lcom/miui/powercenter/batteryhistory/i$a;

    iget-object v3, v3, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_5

    iput-wide v4, p0, Lcom/miui/powercenter/batteryhistory/l;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->g:Ljava/util/List;

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->i:Ljava/util/List;

    const-string v0, "loadHistoryFullData to origin 3"

    invoke-static {v0}, Lid/b;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/l;->q()V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, v7}, Lcom/miui/powercenter/batteryhistory/l;->h(Z)V

    return-void

    :cond_5
    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/l;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_6

    return-void

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadHistoryFullData mHistoryResetTime ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/miui/powercenter/batteryhistory/l;->d:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lid/b;->a(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "historyItemList first:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/powercenter/batteryhistory/u;

    iget-wide v8, v6, Lcom/miui/powercenter/batteryhistory/u;->a:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",historyItemList last:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/powercenter/batteryhistory/u;

    iget-wide v8, v6, Lcom/miui/powercenter/batteryhistory/u;->a:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",size:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lid/b;->a(Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lid/a;->h()Z

    move-result v4

    iget-wide v8, p0, Lcom/miui/powercenter/batteryhistory/l;->d:J

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/l;->a:Landroid/content/Context;

    invoke-static {v4}, Lid/a;->c(Landroid/content/Context;)J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-eqz v4, :cond_8

    :goto_0
    move v4, v7

    goto :goto_1

    :cond_8
    move v4, v5

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/l;->e:Lcom/miui/powercenter/batteryhistory/i$a;

    iget-object v4, v4, Lcom/miui/powercenter/batteryhistory/i$a;->b:Lcom/miui/powercenter/batteryhistory/u;

    iget-wide v10, v4, Lcom/miui/powercenter/batteryhistory/u;->a:J

    cmp-long v4, v8, v10

    if-eqz v4, :cond_8

    goto :goto_0

    :goto_1
    if-eqz v4, :cond_a

    const-string v0, "loadHistoryFullData to origin 4"

    invoke-static {v0}, Lid/b;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/l;->q()V

    invoke-direct {p0, v7}, Lcom/miui/powercenter/batteryhistory/l;->h(Z)V

    return-void

    :cond_a
    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/l;->e:Lcom/miui/powercenter/batteryhistory/i$a;

    iget v4, v4, Lcom/miui/powercenter/batteryhistory/i$a;->e:I

    if-lez v4, :cond_b

    const-string v0, "loadHistoryFullData to origin 8"

    invoke-static {v0}, Lid/b;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/l;->q()V

    return-void

    :cond_b
    move v4, v5

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, -0x1

    if-ge v4, v6, :cond_d

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/powercenter/batteryhistory/u;

    invoke-virtual {v6}, Lcom/miui/powercenter/batteryhistory/u;->b()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/miui/powercenter/batteryhistory/l;->b:J

    cmp-long v6, v9, v11

    if-ltz v6, :cond_c

    goto :goto_3

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_d
    move v4, v8

    :goto_3
    iget-object v6, p0, Lcom/miui/powercenter/batteryhistory/l;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_e

    return-void

    :cond_e
    if-ne v4, v8, :cond_f

    const-string v0, "loadHistoryFullData to origin 5"

    invoke-static {v0}, Lid/b;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/l;->q()V

    invoke-direct {p0, v7}, Lcom/miui/powercenter/batteryhistory/l;->h(Z)V

    return-void

    :cond_f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v3, v4, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/l;->e:Lcom/miui/powercenter/batteryhistory/i$a;

    iput-object v3, v4, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/l;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_10

    return-void

    :cond_10
    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/l;->g:Ljava/util/List;

    invoke-static {v2, v4}, Lid/a;->b(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/powercenter/batteryhistory/l;->f:Ljava/util/List;

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/l;->h:Ljava/util/List;

    invoke-static {v2, v4}, Lid/a;->b(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    new-instance v4, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;

    invoke-direct {v4}, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;-><init>()V

    iput v5, v4, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->type:I

    iget-wide v5, p0, Lcom/miui/powercenter/batteryhistory/l;->c:J

    iput-wide v5, v4, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->startTime:J

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/powercenter/batteryhistory/u;

    invoke-virtual {v3}, Lcom/miui/powercenter/batteryhistory/u;->b()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->endTime:J

    iput-object v2, v4, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->batteryDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    iget-wide v5, v4, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->totalConsume:D

    iget-wide v8, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    add-double/2addr v5, v8

    iput-wide v5, v4, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->totalConsume:D

    iget v5, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_12

    iget-wide v5, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    iput-wide v5, v4, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->screenUsageTime:J

    goto :goto_4

    :cond_12
    if-nez v5, :cond_11

    iget-wide v5, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    iput-wide v5, v4, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->idleUsageTime:J

    goto :goto_4

    :cond_13
    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/l;->i:Ljava/util/List;

    if-nez v2, :cond_14

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/powercenter/batteryhistory/l;->i:Ljava/util/List;

    :cond_14
    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/l;->i:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/l;->i:Ljava/util/List;

    invoke-static {v2}, Lid/a;->i(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v0, "loadHistoryFullData to origin 6"

    invoke-static {v0}, Lid/b;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/l;->q()V

    invoke-direct {p0, v7}, Lcom/miui/powercenter/batteryhistory/l;->h(Z)V

    return-void

    :cond_15
    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/l;->k()V

    invoke-direct {p0, v0, v1}, Lcom/miui/powercenter/batteryhistory/l;->j(J)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "BatteryHistorySource load finished"

    invoke-static {v0}, Lid/b;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/l;->t()V

    return-void

    :cond_16
    :goto_5
    const-string v0, "loadHistoryFullData to origin 2"

    invoke-static {v0}, Lid/b;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/l;->q()V

    return-void
.end method

.method private q()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->i:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->e:Lcom/miui/powercenter/batteryhistory/i$a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/i;->d()Lcom/miui/powercenter/batteryhistory/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/i;->a()Lcom/miui/powercenter/batteryhistory/i$a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->e:Lcom/miui/powercenter/batteryhistory/i$a;

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->e:Lcom/miui/powercenter/batteryhistory/i$a;

    iget-object v0, v0, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/l;->e:Lcom/miui/powercenter/batteryhistory/i$a;

    iget v2, v1, Lcom/miui/powercenter/batteryhistory/i$a;->e:I

    if-lez v2, :cond_1

    if-ge v2, v0, :cond_1

    iget-object v3, v1, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    invoke-interface {v3, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->f:Ljava/util/List;

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->t()V

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->i()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/l;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/l;->i()V

    :cond_2
    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/l;->t()V

    return-void
.end method

.method private r(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->startTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",endTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->endTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",shutdownDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->shutdownDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",startUTCTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->startUTCTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lid/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "BatteryHistoryManager"

    const-string v1, "logGramDatabase error:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private s(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logShutDown mShutdownItems.size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/l;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "historyItemList.size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/l;->e:Lcom/miui/powercenter/batteryhistory/i$a;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lid/b;->a(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logShutDown shutDownIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;->shutDownIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",shutDownTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;->shutDownTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",shutDownDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;->shutDownDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryShutdownItem;->shutDownPlusTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lid/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "BatteryHistoryManager"

    const-string v1, "logShutDown error:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private t()V
    .locals 5

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->f:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->f:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->i:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->i:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/batteryhistory/w;

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/l;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/l;->e:Lcom/miui/powercenter/batteryhistory/i$a;

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/l;->f:Ljava/util/List;

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/l;->i:Ljava/util/List;

    invoke-interface {v1, v2, v3, v4}, Lcom/miui/powercenter/batteryhistory/w;->a(Lcom/miui/powercenter/batteryhistory/i$a;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->m:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->m:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/miui/powercenter/batteryhistory/l;->e:Lcom/miui/powercenter/batteryhistory/i$a;

    iput-object v1, p0, Lcom/miui/powercenter/batteryhistory/l;->g:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public u(Lcom/miui/powercenter/batteryhistory/w;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->k:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->e:Lcom/miui/powercenter/batteryhistory/i$a;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/l;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/l;->i:Ljava/util/List;

    invoke-interface {p1, v0, v1, v2}, Lcom/miui/powercenter/batteryhistory/w;->a(Lcom/miui/powercenter/batteryhistory/i$a;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public v(Lcom/miui/powercenter/batteryhistory/w;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/l;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
