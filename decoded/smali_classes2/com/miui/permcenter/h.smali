.class public Lcom/miui/permcenter/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/h$c;,
        Lcom/miui/permcenter/h$b;
    }
.end annotation


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/miui/permcenter/h;->a:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/miui/permcenter/h;->b:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "config.cmpassport.com"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "onekey.cmpassport.com"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "www.cmpassport.com"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "rcs.cmpassport.com"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "opencloud.wostore.cn"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "auth.wosms.cn"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "enrichgw.10010.com"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "id6.me"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "open.e.189.cn"

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v7, 0x7

    invoke-virtual {v0, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v8, 0x14

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v9, 0x6

    invoke-virtual {v0, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v10, 0x9

    invoke-virtual {v0, v10, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v11, 0x5

    invoke-virtual {v0, v11, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v12, 0xb

    invoke-virtual {v0, v12, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "10.0.0.172"

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1, v10, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "10.0.0.200"

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1, v12, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0

    invoke-static {p0}, Lcom/miui/permcenter/h;->c(Z)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->isSupportGetPhoneNumberOperator()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/permcenter/h;->d(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/permcenter/h;->e(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/permcenter/h;->c(Z)V

    :cond_0
    invoke-static {}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->isSupportManageMmsByBpf()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/miui/permcenter/h$c;

    invoke-direct {v2, p0}, Lcom/miui/permcenter/h$c;-><init>(Landroid/content/Context;)V

    const-string p0, "MIUI:10004"

    invoke-virtual {v0, p0, v1, v2}, Landroid/app/AppOpsManager;->startWatchingMode(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    :cond_1
    return-void
.end method

.method private static c(Z)V
    .locals 6

    invoke-static {}, Lxc/l;->c()V

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    const-string v1, "OperatorAddressManager"

    if-nez v0, :cond_0

    const-string p0, "subscription info is null!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getMcc()I

    move-result v2

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getMnc()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current mcc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mnc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x1cc

    if-ne v2, v4, :cond_7

    sget-object v2, Lcom/miui/permcenter/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-static {}, Lxc/k;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lxc/l;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_6

    invoke-static {}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->isSupportManageMmsByBpf()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v1

    invoke-virtual {v1}, Li4/a;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Lx4/z1;->b(I)I

    move-result v3

    const/16 v4, 0x2710

    if-lt v3, v4, :cond_3

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lx4/f1;->L(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/16 v3, 0x2714

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v3, v4, v5}, Landroid/app/AppOpsManagerCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;IILjava/lang/String;)I

    move-result v3

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-static {v2, v3, v0}, Lcom/miui/permcenter/h;->f(IZLmiui/telephony/SubscriptionInfo;)V

    goto :goto_1

    :cond_6
    return-void

    :cond_7
    :goto_3
    const-string p0, "invalid mcc network!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 6

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/miui/permcenter/h$b;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/miui/permcenter/h$b;-><init>(Lcom/miui/permcenter/h$a;)V

    invoke-static {}, Lxc/b0;->c()Lxc/b0;

    move-result-object v0

    invoke-virtual {v0}, Lxc/b0;->d()Landroid/os/Handler;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .locals 3

    const-string v0, "mi_lab_operator_get_number_enable"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v1, Lcom/miui/permcenter/h$a;

    invoke-static {}, Lxc/b0;->c()Lxc/b0;

    move-result-object v2

    invoke-virtual {v2}, Lxc/b0;->d()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/permcenter/h$a;-><init>(Landroid/os/Handler;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static f(IZLmiui/telephony/SubscriptionInfo;)V
    .locals 3

    invoke-static {}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->isSupportManageMmsByBpf()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object p2

    invoke-virtual {p2}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;

    move-result-object p2

    :cond_1
    const-string v0, "OperatorAddressManager"

    if-nez p2, :cond_2

    const-string p0, "subscription info is null!"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p2}, Lmiui/telephony/SubscriptionInfo;->getMcc()I

    move-result v1

    invoke-virtual {p2}, Lmiui/telephony/SubscriptionInfo;->getMnc()I

    move-result p2

    const/16 v2, 0x1cc

    if-ne v1, v2, :cond_5

    sget-object v1, Lcom/miui/permcenter/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/miui/permcenter/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "security"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    const-string p2, "clear"

    goto :goto_0

    :cond_4
    const-string p1, "80"

    :goto_0
    invoke-virtual {v0, p0, p2, p1}, Lmiui/security/SecurityManager;->updateIpBlockUidRule(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    const-string p0, "invalid mcc network!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
