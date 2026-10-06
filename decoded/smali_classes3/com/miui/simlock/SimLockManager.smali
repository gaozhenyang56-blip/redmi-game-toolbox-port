.class public Lcom/miui/simlock/SimLockManager;
.super Lcom/miui/simlock/ISimLockManager$Stub;
.source "SourceFile"


# static fields
.field private static volatile s:Lcom/miui/simlock/SimLockManager;


# instance fields
.field private final a:Landroid/content/Context;

.field private k:Z

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/simlock/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lfg/e;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile p:Lcom/miui/simlock/b$b;

.field private q:Z

.field private final r:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/simlock/ISimLockManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/simlock/SimLockManager;->k:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/simlock/SimLockManager;->m:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/simlock/SimLockManager;->n:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/simlock/SimLockManager;->o:Ljava/util/Map;

    sget-object v0, Lcom/miui/simlock/b$b;->b:Lcom/miui/simlock/b$b;

    iput-object v0, p0, Lcom/miui/simlock/SimLockManager;->p:Lcom/miui/simlock/b$b;

    new-instance v0, Lcom/miui/simlock/SimLockManager$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/simlock/SimLockManager$a;-><init>(Lcom/miui/simlock/SimLockManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/simlock/SimLockManager;->r:Landroid/os/Handler;

    iput-object p1, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-static {p1}, Lvb/a;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/simlock/SimLockManager;->q:Z

    invoke-direct {p0, p1}, Lcom/miui/simlock/SimLockManager;->r8(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/simlock/SimLockManager;->l:Ljava/util/Map;

    return-void
.end method

.method private B8(Lfg/e;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p1, Lfg/e;->b:I

    if-ltz v0, :cond_0

    iget p1, p1, Lfg/e;->c:I

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic C8(Ljava/lang/String;IIZ)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "SimLock-Manager"

    if-eqz p1, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v4, v0, Lcom/miui/simlock/SimLockManager;->l:Ljava/util/Map;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, v0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/miui/simlock/SimLockManager;->r8(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/simlock/SimLockManager;->l:Ljava/util/Map;

    :cond_2
    iget-object v4, v0, Lcom/miui/simlock/SimLockManager;->o:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/telephony/SubscriptionInfo;

    iget-object v6, v0, Lcom/miui/simlock/SimLockManager;->o:Ljava/util/Map;

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v0, Lcom/miui/simlock/SimLockManager;->o:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    if-ne v7, v1, :cond_5

    const/16 v7, 0xa

    if-ne v2, v7, :cond_5

    move v10, v6

    goto :goto_2

    :cond_5
    const/16 v7, 0xc

    if-ne v2, v7, :cond_6

    iget-object v7, v0, Lcom/miui/simlock/SimLockManager;->l:Ljava/util/Map;

    if-eqz v7, :cond_6

    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/simlock/a$c;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/miui/simlock/a$c;->f()Z

    move-result v7

    if-eqz v7, :cond_6

    move v5, v6

    :cond_6
    move v10, v5

    :goto_2
    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    if-ne v5, v1, :cond_8

    iget-object v5, v0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getPhoneNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-nez v5, :cond_7

    move-object v7, v6

    goto :goto_3

    :cond_7
    const-string v7, "+86"

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    :goto_3
    new-instance v14, Lcom/miui/simlock/a$c;

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v14

    move-object v5, v13

    move-object/from16 v6, p1

    move/from16 v9, p4

    invoke-direct/range {v4 .. v10}, Lcom/miui/simlock/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    iget-object v4, v0, Lcom/miui/simlock/SimLockManager;->l:Ljava/util/Map;

    if-eqz v4, :cond_4

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/miui/simlock/SimLockManager;->l:Ljava/util/Map;

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/simlock/a$c;

    invoke-interface {v11, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_9
    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/simlock/a$c;

    iget-object v4, v0, Lcom/miui/simlock/SimLockManager;->l:Ljava/util/Map;

    if-eqz v4, :cond_b

    invoke-virtual {v2}, Lcom/miui/simlock/a$c;->c()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/simlock/a$c;

    goto :goto_5

    :cond_b
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_c

    invoke-virtual {v4, v2}, Lcom/miui/simlock/a$c;->a(Lcom/miui/simlock/a$c;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_c
    move v6, v5

    goto :goto_4

    :cond_d
    if-eqz v6, :cond_e

    const-string v1, "SimLockManager::savePin::the pin is same with saved"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget-object v1, v0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-static {v1, v11}, Lcom/miui/simlock/a;->h(Landroid/content/Context;Ljava/util/Map;)V

    iput-object v11, v0, Lcom/miui/simlock/SimLockManager;->l:Ljava/util/Map;

    return-void

    :cond_f
    :goto_6
    const-string v1, "SimLockManager::savePin::the pin is empty"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private D8(II)Z
    .locals 6

    const-string v0, "SimLock-Manager"

    iget-object v1, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-static {v1, p2}, Lfg/f;->a(Landroid/telephony/TelephonyManager;I)I

    move-result v1

    :try_start_0
    invoke-static {v1}, Lr1/a;->a(I)Lr1/a;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sim state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lr1/a;->a:Lr1/a;

    :goto_0
    iget-object v2, p0, Lcom/miui/simlock/SimLockManager;->n:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfg/e;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    new-instance v2, Lfg/e;

    invoke-direct {v2, v1, p2, p1}, Lfg/e;-><init>(Lr1/a;II)V

    iget-object v4, p0, Lcom/miui/simlock/SimLockManager;->n:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    iget-object v4, v2, Lfg/e;->a:Lr1/a;

    const/4 v5, 0x0

    if-eq v4, v1, :cond_1

    iput-object v1, v2, Lfg/e;->a:Lr1/a;

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    if-nez v4, :cond_3

    iget v2, v2, Lfg/e;->c:I

    if-eq v2, p1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v5

    :cond_3
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimLockManager::refreshSimState::subId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " slotId = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " state = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " changed = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private E8(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/simlock/SimLockManager;->p:Lcom/miui/simlock/b$b;

    sget-object v1, Lcom/miui/simlock/b$b;->a:Lcom/miui/simlock/b$b;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/simlock/SimLockManager;->p:Lcom/miui/simlock/b$b;

    sget-object v1, Lcom/miui/simlock/b$b;->c:Lcom/miui/simlock/b$b;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/miui/simlock/b$b;->b:Lcom/miui/simlock/b$b;

    iput-object p1, p0, Lcom/miui/simlock/SimLockManager;->p:Lcom/miui/simlock/b$b;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method private I8()V
    .locals 3

    :try_start_0
    const-string v0, "com.miui.securitycenter.bootaware"

    invoke-static {}, Lcom/miui/analytics/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    const-class v2, Lcom/miui/simlock/activity/SuccessDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/miui/simlock/c;->d:Z

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    const-class v2, Lcom/miui/simlock/activity/SuccessDialogNormalActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimLockManager::startSuccessDialogActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimLock-Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private L8()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/simlock/SimLockManager;->o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    iget-object v2, p0, Lcom/miui/simlock/SimLockManager;->o:Ljava/util/Map;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/simlock/SimLockManager;->o:Ljava/util/Map;

    return-object v0
.end method

.method private M8(Lfg/e;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "SimLock-Manager"

    invoke-direct/range {p0 .. p1}, Lcom/miui/simlock/SimLockManager;->B8(Lfg/e;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, v1, Lfg/e;->a:Lr1/a;

    sget-object v4, Lr1/a;->d:Lr1/a;

    if-ne v3, v4, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    iget v1, v1, Lfg/e;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-virtual {v0, v2}, Lcom/miui/simlock/SimLockManager;->H8(Ljava/util/ArrayList;)V

    return-void

    :cond_1
    sget-object v4, Lr1/a;->c:Lr1/a;

    if-eq v3, v4, :cond_2

    return-void

    :cond_2
    iget v3, v1, Lfg/e;->b:I

    invoke-virtual {v0, v3}, Lcom/miui/simlock/SimLockManager;->A8(I)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    iget v1, v1, Lfg/e;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_3
    iget v3, v1, Lfg/e;->b:I

    invoke-virtual {v0, v3}, Lcom/miui/simlock/SimLockManager;->q8(I)Lcom/miui/simlock/a$c;

    move-result-object v3

    :try_start_0
    iget v4, v1, Lfg/e;->c:I

    invoke-virtual {v3}, Lcom/miui/simlock/a$c;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/simlock/c;->u(ILjava/lang/String;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v6, v4, v5

    const/4 v7, 0x1

    if-nez v6, :cond_7

    invoke-direct {v0, v5}, Lcom/miui/simlock/SimLockManager;->E8(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "VerifyPinWithSaved success but hide dialog for satellite state enable."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v3, v0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/simlock/c;->h(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    iput-boolean v7, v0, Lcom/miui/simlock/SimLockManager;->k:Z

    goto/16 :goto_1

    :cond_5
    iget-object v3, v0, Lcom/miui/simlock/SimLockManager;->m:Ljava/util/Set;

    iget v4, v1, Lfg/e;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/miui/simlock/SimLockManager;->r:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/miui/simlock/SimLockManager;->r:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    iget-object v3, v0, Lcom/miui/simlock/SimLockManager;->r:Landroid/os/Handler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :cond_7
    if-ne v6, v7, :cond_8

    iget-object v6, v0, Lcom/miui/simlock/SimLockManager;->l:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/miui/simlock/a$c;->c()Ljava/lang/String;

    move-result-object v8

    new-instance v15, Lcom/miui/simlock/a$c;

    invoke-virtual {v3}, Lcom/miui/simlock/a$c;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/miui/simlock/a$c;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lcom/miui/simlock/a$c;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Lcom/miui/simlock/a$c;->b()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v3}, Lcom/miui/simlock/a$c;->f()Z

    move-result v16

    move-object v9, v15

    move-object v5, v15

    move/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/miui/simlock/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/miui/simlock/a$c;->e()Ljava/lang/String;

    move-result-object v3

    iget v5, v1, Lfg/e;->c:I

    const/16 v6, 0xc

    invoke-virtual {v0, v3, v5, v7, v6}, Lcom/miui/simlock/SimLockManager;->F8(Ljava/lang/String;IZI)V

    new-instance v3, Ljava/util/ArrayList;

    iget v5, v1, Lfg/e;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3}, Lcom/miui/simlock/SimLockManager;->H8(Ljava/util/ArrayList;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SimLockManager::verifyPinWithSaved fail, result[0] = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget v5, v4, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", result[1] = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimLockManager::verifyPinWithSaved fail, subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lfg/e;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lfg/e;->b:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    return-void
.end method

.method public static p8(Landroid/content/Context;)Lcom/miui/simlock/SimLockManager;
    .locals 2

    sget-object v0, Lcom/miui/simlock/SimLockManager;->s:Lcom/miui/simlock/SimLockManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/simlock/SimLockManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/simlock/SimLockManager;->s:Lcom/miui/simlock/SimLockManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/simlock/SimLockManager;

    invoke-direct {v1, p0}, Lcom/miui/simlock/SimLockManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/simlock/SimLockManager;->s:Lcom/miui/simlock/SimLockManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/simlock/SimLockManager;->s:Lcom/miui/simlock/SimLockManager;

    return-object p0
.end method

.method private r8(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/simlock/a$c;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/miui/simlock/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/miui/simlock/SimLockManager$b;

    invoke-direct {v1, p0}, Lcom/miui/simlock/SimLockManager$b;-><init>(Lcom/miui/simlock/SimLockManager;)V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "SimLock-Manager"

    const-string v1, "SimLockManager::getSavedSimData::Read saved sim data error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic v1(Lcom/miui/simlock/SimLockManager;Ljava/lang/String;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/simlock/SimLockManager;->C8(Ljava/lang/String;IIZ)V

    return-void
.end method

.method private y8()Z
    .locals 5

    iget-object v0, p0, Lcom/miui/simlock/SimLockManager;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    iget-object v2, p0, Lcom/miui/simlock/SimLockManager;->n:Ljava/util/Map;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfg/e;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lfg/e;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v2, v4}, Lcom/miui/simlock/c;->g(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/simlock/SimLockManager;->m:Ljava/util/Set;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    :goto_0
    return v3

    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public A8(I)Z
    .locals 5

    iget-object v0, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/simlock/c;->i(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/simlock/c;->m(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim_lock_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "SimLock-Manager"

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/simlock/SimLockManager;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfg/e;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lfg/e;->a:Lr1/a;

    sget-object v1, Lr1/a;->d:Lr1/a;

    if-ne v0, v1, :cond_1

    return v4

    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/simlock/SimLockManager;->q8(I)Lcom/miui/simlock/a$c;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/simlock/a$c;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/miui/simlock/a$c;->g()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/miui/simlock/a$c;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimLockManager::simBindEnable true for slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_2
    return v4

    :cond_3
    :goto_0
    const-string p1, "SimLockManager::isSimBindEnable::The prerequisites are not met"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public F8(Ljava/lang/String;IZI)V
    .locals 7

    new-instance v6, Lfg/g;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lfg/g;-><init>(Lcom/miui/simlock/SimLockManager;Ljava/lang/String;IIZ)V

    invoke-static {v6}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public G8()V
    .locals 12

    iget-object v0, p0, Lcom/miui/simlock/SimLockManager;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/miui/simlock/SimLockManager;->q8(I)Lcom/miui/simlock/a$c;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/miui/simlock/a$c;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    const-class v3, Lcom/miui/simlock/SimLockNotificationService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "notification_extra"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    const/high16 v3, 0xc000000

    invoke-static {v2, v1, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    iget-object v4, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12167e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12167d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x271a

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static/range {v4 .. v11}, Lfg/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;ZZZ)V

    :cond_2
    return-void
.end method

.method public H8(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sim_lock_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.securitycenter.bootaware"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/simlock/c;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    const-class v3, Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/simlock/SimLockManager;->n:Ljava/util/Map;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfg/e;

    iget-object v1, v1, Lfg/e;->a:Lr1/a;

    sget-object v3, Lr1/a;->c:Lr1/a;

    const-string v4, "pin_state"

    if-ne v1, v3, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SimLockManager::startSimPinActivity::slotIds = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from process: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SimLock-Manager"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "slot_ids"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    const-class v3, Lcom/miui/simlock/SimLockNotificationService;

    invoke-direct {p1, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    const-string v3, "notification_extra"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    const/high16 v3, 0xc000000

    invoke-static {v1, v2, p1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    iget-object v4, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f12167c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f12167b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2766

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static/range {v4 .. v11}, Lfg/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;ZZZ)V

    iget-object p1, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public J8()V
    .locals 6

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/SubscriptionInfo;

    iget-object v4, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/miui/simlock/c;->g(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/miui/simlock/SimLockManager;->A8(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :cond_2
    invoke-static {v1}, Lfg/i;->b(I)V

    invoke-static {v2}, Lfg/i;->a(I)V

    return-void
.end method

.method public K8()V
    .locals 1

    iget-object v0, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lvb/a;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/simlock/SimLockManager;->q:Z

    return-void
.end method

.method public o8()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/simlock/SimLockManager;->y8()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/simlock/SimLockManager;->I8()V

    :cond_0
    return-void
.end method

.method public q8(I)Lcom/miui/simlock/a$c;
    .locals 2

    iget-object v0, p0, Lcom/miui/simlock/SimLockManager;->o:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/simlock/SimLockManager;->l:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/simlock/a$c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/simlock/a;->b(Landroid/content/Context;I)Lcom/miui/simlock/a$c;

    move-result-object p1

    return-object p1
.end method

.method public s8()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lfg/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/simlock/SimLockManager;->n:Ljava/util/Map;

    return-object v0
.end method

.method public t8(ILcom/miui/simlock/b$b;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle SATELLITE_STATE_CHANGE, slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", state "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimLock-Manager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/miui/simlock/SimLockManager;->p:Lcom/miui/simlock/b$b;

    iget-object p1, p0, Lcom/miui/simlock/SimLockManager;->p:Lcom/miui/simlock/b$b;

    sget-object p2, Lcom/miui/simlock/b$b;->a:Lcom/miui/simlock/b$b;

    const-string v1, "sim_lock_enable"

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, -0x1

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    invoke-static {v1, p2}, Lr4/a;->n(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "temp enable sec sim lock for satellite enable."

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/simlock/SimLockManager;->p:Lcom/miui/simlock/b$b;

    sget-object p2, Lcom/miui/simlock/b$b;->b:Lcom/miui/simlock/b$b;

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    invoke-static {v1, p1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {v1, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "disable sec sim lock for satellite close."

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public u8(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/simlock/SimLockManager;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/miui/simlock/SimLockManager;->H8(Ljava/util/ArrayList;)V

    return-void
.end method

.method public v8(IILr1/a;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SimLockManager::handleSimStateChange::subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " slotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SimLock-Manager"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid subId in handleSimStateChange:: mSimExist = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/miui/simlock/SimLockManager;->q:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/miui/simlock/SimLockManager;->r8(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/simlock/SimLockManager;->l:Ljava/util/Map;

    sget-object v4, Lr1/a;->b:Lr1/a;

    if-ne v3, v4, :cond_4

    iget-object v4, v0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-static {v4}, Lvb/a;->b(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, v0, Lcom/miui/simlock/SimLockManager;->q:Z

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/miui/simlock/SimLockManager;->m:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    iget-object v4, v0, Lcom/miui/simlock/SimLockManager;->n:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfg/e;

    iget v7, v6, Lfg/e;->b:I

    if-ne v7, v2, :cond_0

    sget-object v7, Lr1/a;->b:Lr1/a;

    iput-object v7, v6, Lfg/e;->a:Lr1/a;

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/content/Intent;

    iget-object v6, v0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    const-class v7, Lcom/miui/simlock/activity/SimLockSettingActivity;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v6, v0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    const/high16 v7, 0xc000000

    const/4 v8, 0x0

    invoke-static {v6, v8, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    iget-object v4, v0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    const/16 v6, 0x271a

    invoke-static {v4, v6}, Lfg/h;->a(Landroid/content/Context;I)V

    iget-object v4, v0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    const/16 v6, 0x2766

    invoke-static {v4, v6}, Lfg/h;->a(Landroid/content/Context;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SimLockManager::handleSimStateChange mSubscriptionInfos size:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/miui/simlock/SimLockManager;->o:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/miui/simlock/SimLockManager;->o:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v0, v8}, Lcom/miui/simlock/SimLockManager;->E8(Z)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v4, "Hide SIM_LOCK_PULL_OUT_NOTIFICATION for satellite state enable."

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v6}, Lcom/miui/simlock/SimLockManager;->A8(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v9, v0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121684

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v4, v0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121683

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2710

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-static/range {v9 .. v16}, Lfg/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;ZZZ)V

    :cond_4
    :goto_1
    sget-object v4, Lr1/a;->b:Lr1/a;

    if-eq v3, v4, :cond_5

    iget-object v4, v0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    const/16 v5, 0x2710

    invoke-static {v4, v5}, Lfg/h;->a(Landroid/content/Context;I)V

    :cond_5
    iget-object v4, v0, Lcom/miui/simlock/SimLockManager;->n:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfg/e;

    if-nez v4, :cond_6

    new-instance v4, Lfg/e;

    invoke-direct {v4, v3, v2, v1}, Lfg/e;-><init>(Lr1/a;II)V

    iget-object v1, v0, Lcom/miui/simlock/SimLockManager;->n:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    iput-object v3, v4, Lfg/e;->a:Lr1/a;

    iput v1, v4, Lfg/e;->c:I

    iput v2, v4, Lfg/e;->b:I

    :goto_2
    invoke-direct {v0, v4}, Lcom/miui/simlock/SimLockManager;->M8(Lfg/e;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/simlock/SimLockManager;->K8()V

    return-void
.end method

.method public w8()V
    .locals 5

    const-string v0, "SimLock-Manager"

    const-string v1, "handleSimSubscriptionInfoChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/simlock/SimLockManager;->L8()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/miui/simlock/SimLockManager;->D8(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/miui/simlock/SimLockManager;->n:Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfg/e;

    invoke-direct {p0, v2}, Lcom/miui/simlock/SimLockManager;->M8(Lfg/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public x8()V
    .locals 5

    iget-object v0, p0, Lcom/miui/simlock/SimLockManager;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/simlock/SimLockManager;->o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/miui/simlock/SimLockManager;->n:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfg/e;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lfg/e;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/miui/simlock/SimLockManager;->A8(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/miui/simlock/SimLockManager;->k:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/miui/simlock/SimLockManager;->I8()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/miui/simlock/SimLockManager;->H8(Ljava/util/ArrayList;)V

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/simlock/SimLockManager;->k:Z

    return-void
.end method

.method public z8()Z
    .locals 6

    iget-object v0, p0, Lcom/miui/simlock/SimLockManager;->l:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/simlock/SimLockManager;->l:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/simlock/a;->c(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/simlock/c;->i(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/simlock/c;->m(Landroid/content/Context;)Z

    move-result v3

    iget-object v4, p0, Lcom/miui/simlock/SimLockManager;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sim_lock_enable"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/simlock/a$c;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/miui/simlock/a$c;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/miui/simlock/a$c;->g()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/miui/simlock/a$c;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_4
    return v1

    :cond_5
    :goto_1
    const-string v0, "SimLock-Manager"

    const-string v2, "SimLockManager::isSimBindEnable::The prerequisites are not met"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return v1
.end method
