.class public Lcom/miui/simlock/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/content/Intent;

.field public static c:Z

.field public static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "sim_lock_enable"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/simlock/c;->a:Landroid/net/Uri;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.securitycenter"

    const-string v2, "com.miui.simlock.SimLockMonitorNormalService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/miui/simlock/c;->b:Landroid/content/Intent;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Landroid/content/Context;IIZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/simlock/c;->n(Ljava/lang/String;Landroid/content/Context;IIZ)V

    return-void
.end method

.method public static b(Landroid/content/Context;Lmiuix/appcompat/app/ActionBar;)V
    .locals 3

    invoke-static {}, Lx4/t;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    const/4 v2, 0x1

    if-lt p0, v0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    :goto_2
    return-void
.end method

.method public static c(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I
    .locals 7

    const-class v0, Ljava/lang/String;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-static {p0, p1}, Lfg/j;->a(Landroid/telephony/TelephonyManager;I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    const/4 p1, -0x1

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x1e

    const-string v3, "SimLock"

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-le v1, v2, :cond_1

    :try_start_1
    const-string v1, "changeIccLockPin"

    new-array v2, v5, [Ljava/lang/Class;

    aput-object v0, v2, v6

    aput-object v0, v2, v4

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p2, v0, v6

    aput-object p3, v0, v4

    invoke-static {p0, v1, v2, v0}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SimLockUtils::changeIccLockPassword::pinResult = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/miui/simlock/c;->j(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string p3, "getAttemptsRemaining"

    const/4 v0, 0x0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p0, p2, p3, v0, v1}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    const-string v1, "changeIccLockPassword"

    new-array v2, v5, [Ljava/lang/Class;

    aput-object v0, v2, v6

    aput-object v0, v2, v4

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p2, v0, v6

    aput-object p3, v0, v4

    invoke-static {p0, v1, v2, v0}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SimLockUtils::changeIccLockPassword::result = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return p1
.end method

.method public static d(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    const-string p0, "miui.intent.action.SIM_LOCK_CHOOSE"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v1

    const-string v2, "miui.intent.action.SIM_LOCK_START"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "slot_id"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1216b5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static e(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    const-string p0, "miui.intent.action.SIM_LOCK_CHOOSE"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v1

    const-string v2, "miui.intent.action.SIM_LOCK_START"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "slot_id"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/miui/simlock/c;->g(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static g(Landroid/content/Context;I)Z
    .locals 3

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-static {p0, p1}, Lfg/j;->a(Landroid/telephony/TelephonyManager;I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "isIccLockEnabled"

    new-array v1, p1, [Ljava/lang/Class;

    new-array v2, p1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p0, "SimLock"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimLockUtils::isIccLockEnabled::result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return p1
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p0

    return p0
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    return p0
.end method

.method private static j(Ljava/lang/Object;)Z
    .locals 5

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getResult"

    const/4 v4, 0x0

    invoke-static {p0, v0, v3, v4, v2}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v2, "android.telephony.PinResult"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "PIN_RESULT_TYPE_SUCCESS"

    invoke-static {v2, v3, v0}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static k(Landroid/content/Context;I)Z
    .locals 5

    invoke-static {p0}, Lcom/miui/simlock/c;->i(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lcom/miui/simlock/c;->m(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim_lock_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    invoke-static {p0, p1}, Lcom/miui/simlock/a;->b(Landroid/content/Context;I)Lcom/miui/simlock/a$c;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/miui/simlock/a$c;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/simlock/a$c;->g()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/simlock/a$c;->e()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    return v1

    :cond_1
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/simlock/a;->b(Landroid/content/Context;I)Lcom/miui/simlock/a$c;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/simlock/a$c;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/miui/simlock/a$c;->g()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/miui/simlock/a$c;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    return v1

    :cond_3
    :goto_0
    return v4
.end method

.method public static l()Z
    .locals 4

    invoke-static {}, Ldb/c;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_1

    return v1

    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lx4/z1;->y()I

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "ruan"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "dizi"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {}, Lcom/miui/permcenter/o;->o()Z

    move-result v0

    if-nez v0, :cond_5

    move v1, v2

    :cond_5
    return v1

    :cond_6
    return v2
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic n(Ljava/lang/String;Landroid/content/Context;IIZ)V
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "SimLock"

    if-eqz p0, :cond_c

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/miui/simlock/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    new-instance v6, Lcom/miui/simlock/c$a;

    invoke-direct {v6}, Lcom/miui/simlock/c$a;-><init>()V

    invoke-virtual {v6}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    if-ne v7, v1, :cond_2

    const/16 v7, 0xa

    if-ne v2, v7, :cond_2

    move v10, v6

    goto :goto_1

    :cond_2
    const/16 v7, 0xc

    if-ne v2, v7, :cond_3

    if-eqz v11, :cond_3

    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/simlock/a$c;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/miui/simlock/a$c;->f()Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    :cond_3
    move v10, v5

    :goto_1
    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    if-ne v5, v1, :cond_5

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v5

    invoke-static {v0, v5}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getPhoneNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-nez v5, :cond_4

    move-object v7, v6

    goto :goto_2

    :cond_4
    const-string v7, "+86"

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    :goto_2
    new-instance v15, Lcom/miui/simlock/a$c;

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v15

    move-object v5, v14

    move-object/from16 v6, p0

    move/from16 v9, p4

    invoke-direct/range {v4 .. v10}, Lcom/miui/simlock/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    if-eqz v11, :cond_1

    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/simlock/a$c;

    invoke-interface {v12, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/simlock/a$c;

    if-eqz v11, :cond_8

    invoke-virtual {v2}, Lcom/miui/simlock/a$c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/simlock/a$c;

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_9

    invoke-virtual {v4, v2}, Lcom/miui/simlock/a$c;->a(Lcom/miui/simlock/a$c;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_9
    move v6, v5

    goto :goto_3

    :cond_a
    if-eqz v6, :cond_b

    const-string v0, "SimLockManager::savePin::the pin is same with saved"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    invoke-static {v0, v12}, Lcom/miui/simlock/a;->h(Landroid/content/Context;Ljava/util/Map;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SimLockManager::saveSimPin::Read saved sim data error"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_c
    :goto_5
    const-string v0, "SimLockManager::savePin::the pin is empty"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static o(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Lcom/miui/simlock/c;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-static {p0, v3}, Lcom/miui/simlock/c;->g(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/miui/simlock/SimLockManager;->p8(Landroid/content/Context;)Lcom/miui/simlock/SimLockManager;

    move-result-object v3

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/miui/simlock/SimLockManager;->A8(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public static p(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static q(Landroid/content/Context;Ljava/lang/String;IZI)V
    .locals 8

    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lfg/k;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    move v4, p2

    move v5, p4

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lfg/k;-><init>(Ljava/lang/String;Landroid/content/Context;IIZ)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static r(Landroid/content/Context;ZILjava/lang/String;)I
    .locals 8

    const-class v0, Ljava/lang/String;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-static {p0, p2}, Lfg/j;->a(Landroid/telephony/TelephonyManager;I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    const/4 p2, -0x1

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x1e

    const-string v3, "SimLock"

    const-string v4, "setIccLockEnabled"

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-le v1, v2, :cond_1

    :try_start_1
    new-array v1, v6, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v7

    aput-object v0, v1, v5

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v7

    aput-object p3, v0, v5

    invoke-static {p0, v4, v1, v0}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SimLockUtils::setIccLockState::pinResult = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/miui/simlock/c;->j(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p2, 0x7fffffff

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string p3, "getAttemptsRemaining"

    const/4 v0, 0x0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p0, p1, p3, v0, v1}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_1
    new-array v1, v6, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v7

    aput-object v0, v1, v5

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v7

    aput-object p3, v0, v5

    invoke-static {p0, v4, v1, v0}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "SimLockUtils::setIccLockState::result = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return p2
.end method

.method public static s(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/miui/simlock/c;->d(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static t(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/miui/simlock/c;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/miui/simlock/SimLockManager;->p8(Landroid/content/Context;)Lcom/miui/simlock/SimLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/simlock/SimLockManager;->J8()V

    return-void
.end method

.method public static u(ILjava/lang/String;)[I
    .locals 7

    const-class v0, Ljava/lang/String;

    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "phone"

    aput-object v6, v5, v4

    const-string v6, "checkService"

    invoke-static {v1, v6, v3, v5}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    const-string v3, "com.android.internal.telephony.ITelephony$Stub"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v5, v4

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v4

    const-string v1, "asInterface"

    invoke-static {v3, v1, v5, v6}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    aput-object v0, v5, v2

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v4

    aput-object p1, v0, v2

    const-string p0, "supplyPinReportResultForSubscriber"

    invoke-static {v1, p0, v5, v0}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public static v(ILjava/lang/String;Ljava/lang/String;)[I
    .locals 7

    const-class v0, Ljava/lang/String;

    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "phone"

    aput-object v6, v5, v4

    const-string v6, "checkService"

    invoke-static {v1, v6, v3, v5}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    const-string v3, "com.android.internal.telephony.ITelephony$Stub"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v5, v4

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v4

    const-string v1, "asInterface"

    invoke-static {v3, v1, v5, v6}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    aput-object v0, v5, v2

    const/4 v6, 0x2

    aput-object v0, v5, v6

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v4

    aput-object p1, v0, v2

    aput-object p2, v0, v6

    const-string p0, "supplyPukReportResultForSubscriber"

    invoke-static {v1, p0, v5, v0}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method
