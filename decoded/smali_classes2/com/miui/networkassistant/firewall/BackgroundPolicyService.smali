.class public Lcom/miui/networkassistant/firewall/BackgroundPolicyService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BackgroundPolicyService"

.field private static sInstance:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPolicyService:Lcom/miui/net/MiuiNetworkPolicyManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/miui/net/MiuiNetworkPolicyManager;

    invoke-direct {v0, p1}, Lcom/miui/net/MiuiNetworkPolicyManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->mPolicyService:Lcom/miui/net/MiuiNetworkPolicyManager;

    return-void
.end method

.method private getAppRestrictBackground(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v3, "pkgName = ? AND userId = ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    invoke-static {}, Lx4/z1;->y()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v4, v0

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/firewall/UserConfigure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "bgControl"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v0, p1

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/firewall/BackgroundPolicyService;
    .locals 2

    const-class v0, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->sInstance:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->sInstance:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    :cond_0
    sget-object p0, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->sInstance:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setAppRestrictBackground(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "BackgroundPolicyService"

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "userId"

    invoke-static {}, Lx4/z1;->y()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "pkgName"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bgControl"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/miui/networkassistant/firewall/UserConfigure;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "userTableupdate"

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, v3, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "setAppRestrictBackground exception"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p1}, Lcom/miui/analytics/AnalyticsUtil;->trackException(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "setAppRestrictBackground IllegalArgumentException"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public isAppRestrictBackground(Ljava/lang/String;I)Z
    .locals 1

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_M_OR_LATER:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->mPolicyService:Lcom/miui/net/MiuiNetworkPolicyManager;

    invoke-virtual {p1, p2}, Lcom/miui/net/MiuiNetworkPolicyManager;->isAppRestrictBackground(I)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->getAppRestrictBackground(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "restrictBg"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "noBg"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isRestrictBackground()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->mPolicyService:Lcom/miui/net/MiuiNetworkPolicyManager;

    invoke-virtual {v0}, Lcom/miui/net/MiuiNetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    return v0
.end method

.method public setAppRestrictBackground(IZ)V
    .locals 3

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_M_OR_LATER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->mPolicyService:Lcom/miui/net/MiuiNetworkPolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/miui/net/MiuiNetworkPolicyManager;->setAppRestrictBackground(IZ)V

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_1

    const-string p2, "restrictBg"

    goto :goto_0

    :cond_1
    const-string p2, "miuiAuto"

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-direct {p0, v2, p2}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->setAppRestrictBackground(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->mPolicyService:Lcom/miui/net/MiuiNetworkPolicyManager;

    invoke-virtual {v0, p1}, Lcom/miui/net/MiuiNetworkPolicyManager;->setRestrictBackground(Z)V

    return-void
.end method
