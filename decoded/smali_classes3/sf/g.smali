.class public Lsf/g;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
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
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lsf/i;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lsf/i;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsf/g;->a:Ljava/lang/ref/WeakReference;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lsf/g;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 6

    invoke-static {}, Lef/d0;->a()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xb

    if-lt v0, v3, :cond_2

    new-instance v0, Le3/d;

    invoke-direct {v0, p0}, Le3/d;-><init>(Landroid/content/Context;)V

    const-wide/32 v3, 0x5265c00

    invoke-static {v3, v4}, Lcom/miui/appmanager/AppManageUtils;->N(J)Ljava/lang/String;

    move-result-object p0

    const-string v5, "app_manager_click_time"

    invoke-static {v5, p0}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v4}, Lcom/miui/appmanager/AppManageUtils;->N(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-gtz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    const-string v3, "app_manager_click"

    invoke-static {v3, v2}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0}, Le3/d;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private c(Landroid/content/Context;Lsf/i;)Z
    .locals 9

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->k(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->s()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->f()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-lez v0, :cond_2

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    const-wide/16 v7, 0x64

    mul-long/2addr v3, v7

    div-long/2addr v3, v1

    invoke-static {p1}, Lpf/i;->c(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v7, 0x1e

    cmp-long p1, v3, v7

    if-gez p1, :cond_1

    cmp-long p1, v0, v5

    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Lx4/x1;->c(J)I

    move-result p1

    const/4 v0, 0x7

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p2, Lsf/i;->t:Z

    :cond_2
    iget-boolean p1, p2, Lsf/i;->t:Z

    return p1
.end method

.method private d(Landroid/content/Context;Lsf/i;)Z
    .locals 12

    invoke-static {}, Llb/g;->f()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Leg/g;->c()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljb/f;

    iget-boolean v6, v5, Ljb/f;->e:Z

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v5, v5, Ljb/f;->d:J

    add-long/2addr v3, v5

    goto :goto_0

    :cond_2
    invoke-static {}, Lx4/t;->m()J

    move-result-wide v5

    const-wide v7, 0x80000000L

    cmp-long p1, v5, v7

    const/4 v7, 0x0

    if-lez p1, :cond_3

    move p1, v0

    goto :goto_1

    :cond_3
    move p1, v7

    :goto_1
    const-wide/16 v8, 0x400

    if-eqz p1, :cond_4

    move-wide v10, v8

    goto :goto_2

    :cond_4
    const-wide/16 v10, 0x1f4

    :goto_2
    mul-long/2addr v10, v8

    mul-long/2addr v10, v8

    invoke-static {v10, v11}, Lpf/g;->c(J)J

    move-result-wide v8

    cmp-long p1, v3, v8

    if-gez p1, :cond_5

    goto :goto_3

    :cond_5
    move v0, v7

    :goto_3
    cmp-long p1, v5, v1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    const-wide/16 v1, 0x64

    mul-long/2addr v3, v1

    div-long v1, v3, v5

    :goto_4
    iput-wide v1, p2, Lsf/i;->r:J

    :cond_7
    return v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lsf/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsf/i;

    iget-object v1, p0, Lsf/g;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz p1, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lsf/i;->j()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-static {v1, v0, v2, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    const-string v5, "level"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "scale"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    mul-int/lit8 v5, v5, 0x64

    div-int/2addr v5, v2

    iput v5, p1, Lsf/i;->f:I

    const/16 v2, 0xa

    if-le v5, v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iput-boolean v2, p1, Lsf/i;->g:Z

    invoke-static {v1}, Lme/w;->L(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p1, Lsf/i;->i:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/i;->d()Lcom/miui/powercenter/batteryhistory/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/powercenter/batteryhistory/i;->c()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/powercenter/batteryhistory/b;->e(Landroid/content/Context;Ljava/util/List;)Lcom/miui/powercenter/batteryhistory/b$a;

    move-result-object v2

    iget-wide v5, v2, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    const v2, 0x7f120dc3

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lme/b0;->q(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-virtual {v1, v2, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p1, Lsf/i;->h:Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/o;->a(Landroid/content/Context;)J

    move-result-wide v5

    invoke-static {}, Lme/w;->c0()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1212a9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v1, v5, v6, v3}, Lme/b0;->p(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v1, v5, v6, v8}, Lme/b0;->p(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v3

    invoke-static {v2, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const v2, 0x7f120dc1

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lme/b0;->q(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-virtual {v1, v2, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    :goto_2
    invoke-static {v1}, Lef/x;->B(Landroid/content/Context;)Z

    move-result v2

    xor-int/2addr v2, v3

    iput-boolean v2, p1, Lsf/i;->d:Z

    invoke-static {v1}, Lef/x;->e(Landroid/content/Context;)J

    move-result-wide v5

    iput-wide v5, p1, Lsf/i;->e:J

    invoke-static {v1}, Lx4/c1;->d(Landroid/content/Context;)Lx4/c1$a;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-wide v5, v2, Lx4/c1$a;->b:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-ltz v9, :cond_6

    iget-wide v9, v2, Lx4/c1$a;->a:J

    cmp-long v7, v9, v7

    if-lez v7, :cond_6

    iget-wide v7, v2, Lx4/c1$a;->c:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_5

    move v4, v3

    :cond_5
    iput-boolean v4, p1, Lsf/i;->m:Z

    iput-boolean v3, p1, Lsf/i;->n:Z

    sub-long/2addr v9, v5

    iput-wide v9, p1, Lsf/i;->o:J

    :cond_6
    iget-boolean v2, v2, Lx4/c1$a;->d:Z

    iput-boolean v2, p1, Lsf/i;->p:Z

    :cond_7
    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/securityscan/scanner/ScoreManager;->A()Z

    move-result v2

    iput-boolean v2, p1, Lsf/i;->j:Z

    invoke-static {v1}, Lsf/g;->b(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p1, Lsf/i;->k:Z

    invoke-static {v1}, Lm2/a;->h(Landroid/content/Context;)Z

    move-result v2

    xor-int/2addr v2, v3

    iput-boolean v2, p1, Lsf/i;->l:Z

    invoke-direct {p0, v1, p1}, Lsf/g;->d(Landroid/content/Context;Lsf/i;)Z

    move-result v2

    iput-boolean v2, p1, Lsf/i;->q:Z

    invoke-direct {p0, v1, p1}, Lsf/g;->c(Landroid/content/Context;Lsf/i;)Z

    move-result v1

    iput-boolean v1, p1, Lsf/i;->t:Z

    :cond_8
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lsf/g;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected e(Ljava/lang/Void;)V
    .locals 8

    iget-object p1, p0, Lsf/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsf/i;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lsf/i;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsf/i$d;

    iget-boolean v2, p1, Lsf/i;->d:Z

    iget-wide v3, p1, Lsf/i;->e:J

    invoke-interface {v1, v2, v3, v4}, Lsf/i$d;->onGarbageChange(ZJ)V

    iget-boolean v3, p1, Lsf/i;->m:Z

    iget-boolean v4, p1, Lsf/i;->n:Z

    iget-wide v5, p1, Lsf/i;->o:J

    iget-boolean v7, p1, Lsf/i;->p:Z

    move-object v2, v1

    invoke-interface/range {v2 .. v7}, Lsf/i$d;->onNetworkAssistChange(ZZJZ)V

    iget-boolean v3, p1, Lsf/i;->i:Z

    iget v4, p1, Lsf/i;->f:I

    iget-boolean v5, p1, Lsf/i;->g:Z

    const/4 v6, 0x1

    iget-object v7, p1, Lsf/i;->h:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Lsf/i$d;->onPowerCenterChange(ZIZILjava/lang/String;)V

    iget-boolean v2, p1, Lsf/i;->j:Z

    invoke-interface {v1, v2}, Lsf/i$d;->onSecurityScanChange(Z)V

    iget-boolean v2, p1, Lsf/i;->k:Z

    invoke-interface {v1, v2}, Lsf/i$d;->onAppManagerChange(Z)V

    iget-boolean v2, p1, Lsf/i;->l:Z

    invoke-interface {v1, v2}, Lsf/i$d;->onAntiSpamChange(Z)V

    iget-boolean v2, p1, Lsf/i;->q:Z

    iget-wide v3, p1, Lsf/i;->r:J

    invoke-interface {v1, v2, v3, v4}, Lsf/i$d;->onOptimizemanageChange(ZJ)V

    iget-boolean v2, p1, Lsf/i;->t:Z

    invoke-interface {v1, v2}, Lsf/i$d;->onDeepCleanChange(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lsf/i;->w:Z

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lsf/g;->e(Ljava/lang/Void;)V

    return-void
.end method
