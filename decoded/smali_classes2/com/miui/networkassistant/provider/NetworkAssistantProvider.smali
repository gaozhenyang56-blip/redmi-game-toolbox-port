.class public Lcom/miui/networkassistant/provider/NetworkAssistantProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field private static final BILL_PACKAGE_DETAIL_CODE:I = 0x100

.field public static final BILL_PACKAGE_DETAIL_STR:Ljava/lang/String; = "bill_detail"

.field private static final CALL_TIME_PACKAGE_DETAIL_CODE:I = 0x101

.field public static final CALL_TIME_PACKAGE_DETAIL_STR:Ljava/lang/String; = "calltime_detail"

.field public static final DATAUSAGE_NOTI_STATUS_STR:Ljava/lang/String; = "datausage_noti_status"

.field public static final DATAUSAGE_STATUS_DETAILED_STR:Ljava/lang/String; = "datausage_status_detailed"

.field public static final DATAUSAGE_STATUS_IMSI_STR:Ljava/lang/String; = "datausage_status/*"

.field public static final DATAUSAGE_STATUS_STR:Ljava/lang/String; = "datausage_status"

.field private static final DATA_USAGE_NOTI_STATUS_CODE:I = 0x31

.field private static final DATA_USAGE_STATUS_CODE:I = 0x30

.field private static final DATA_USAGE_STATUS_DETAILED_CODE:I = 0x104

.field private static final FAIL:I = 0x0

.field private static final FIREWALL_BACKGROUND_RESTRICT_STATUS_CODE:I = 0x27

.field public static final FIREWALL_BACKGROUND_RESTRICT_STR:Ljava/lang/String; = "firewall_background_restrict"

.field private static final FIREWALL_PACKAGENAME_CODE:I = 0x20

.field public static final FIREWALL_PACKAGENAME_STR:Ljava/lang/String; = "firewall/*"

.field private static final MOBILE_FIREWALL_PACKAGENAME_CODE:I = 0x23

.field public static final MOBILE_FIREWALL_PACKAGENAME_STR:Ljava/lang/String; = "mobile_firewall/*/*"

.field private static final MOBILE_RESTRICT_STATUS_CODE:I = 0x26

.field public static final MOBILE_RESTRICT_STR:Ljava/lang/String; = "mobile_restrict"

.field private static final NA_SETTINGS_INFO_STATUS_CODE:I = 0x40

.field public static final NA_SETTINGS_INFO_STATUS_STR:Ljava/lang/String; = "na_settings_info"

.field private static final SMS_CORRECTION_CODE:I = 0x102

.field public static final SMS_CORRECTION_STR:Ljava/lang/String; = "sms_correction"

.field private static final SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NAProvider"

.field private static final TEMP_MOBILE_FIREWALL_PACKAGENAME_CODE:I = 0x21

.field public static final TEMP_MOBILE_FIREWALL_PACKAGENAME_STR:Ljava/lang/String; = "temp_mobile_firewall/*/*"

.field private static final TEMP_WIFI_FIREWALL_PACKAGENAME_CODE:I = 0x22

.field public static final TEMP_WIFI_FIREWALL_PACKAGENAME_STR:Ljava/lang/String; = "temp_wifi_firewall/*"

.field private static final TETHERING_LIMIT_ENABLED_CODE:I = 0x103

.field public static final TETHERING_LIMIT_ENABLED_STR:Ljava/lang/String; = "tethering_limit"

.field private static final TRAFFIC_DISTRIBUTION_CODE:I = 0x10

.field private static final TRAFFIC_DISTRIBUTION_ID_CODE:I = 0x11

.field public static final TRAFFIC_DISTRIBUTION_ID_STR:Ljava/lang/String; = "traffic_distribution/#"

.field public static final TRAFFIC_DISTRIBUTION_STR:Ljava/lang/String; = "traffic_distribution"

.field private static final TRAFFIC_INQUIRE_BY_CONTROL_CENTER_CODE:I = 0x106

.field public static final TRAFFIC_INQUIRE_CONTROL_CENTER_STR:Ljava/lang/String; = "bill_traffic_inquire"

.field private static final TRAFFIC_LIMIT_STATUS_CODE:I = 0x105

.field public static final TRAFFIC_LIMIT_STATUS_STR:Ljava/lang/String; = "traffic_limit/*"

.field private static final TRAFFIC_PURCHASE_CODE:I = 0x60

.field private static final TRAFFIC_PURCHASE_CONFIG_CODE:I = 0x90

.field public static final TRAFFIC_PURCHASE_CONFIG_STR:Ljava/lang/String; = "traffic_purchase_config"

.field public static final TRAFFIC_PURCHASE_STATUS_DEFAULT_STR:Ljava/lang/String; = "na_traffic_purchase"

.field public static final TRAFFIC_PURCHASE_STATUS_STR:Ljava/lang/String; = "na_traffic_purchase/*/*"

.field private static final TRAFFIC_STATS_CODE:I = 0x50

.field public static final TRAFFIC_STATS_STR:Ljava/lang/String; = "na_traffic_stats"

.field public static final TRAFFIC_STATS_UID_STR:Ljava/lang/String; = "na_traffic_stats/*"

.field public static final TRAFFIC_USED_ALL_LIST_PARAM_STR:Ljava/lang/String; = "top_usage_app/*"

.field private static final TRAFFIC_USED_APP_LIST_CODE:I = 0x91

.field private static final WIFI_FIREWALL_PACKAGENAME_CODE:I = 0x24

.field public static final WIFI_FIREWALL_PACKAGENAME_STR:Ljava/lang/String; = "wifi_firewall/*"

.field private static final WLAN_RESTRICT_STATUS_CODE:I = 0x25

.field public static final WLAN_RESTRICT_STR:Ljava/lang/String; = "wlan_restrict"

.field private static sTrafficsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

.field private mFirewallServiceConn:Landroid/content/ServiceConnection;

.field private mIsRecord:Z

.field private mOpenHelper:Lcom/miui/networkassistant/provider/DBHelper;

.field private mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

.field private mTrafficManageConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.networkassistant.provider"

    const-string v2, "traffic_distribution"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "traffic_distribution/#"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "firewall/*"

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "temp_mobile_firewall/*/*"

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "temp_wifi_firewall/*"

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "mobile_firewall/*/*"

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "wifi_firewall/*"

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "wlan_restrict"

    const/16 v3, 0x25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "mobile_restrict"

    const/16 v3, 0x26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "firewall_background_restrict"

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "datausage_status"

    const/16 v3, 0x30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "datausage_status_detailed"

    const/16 v4, 0x104

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "datausage_noti_status"

    const/16 v4, 0x31

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "datausage_status/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "na_settings_info"

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "na_traffic_stats"

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "na_traffic_stats/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "na_traffic_purchase"

    const/16 v3, 0x60

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "na_traffic_purchase/*/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "traffic_purchase_config"

    const/16 v3, 0x90

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "top_usage_app/*"

    const/16 v3, 0x91

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "bill_detail"

    const/16 v3, 0x100

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "calltime_detail"

    const/16 v3, 0x101

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "sms_correction"

    const/16 v3, 0x102

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "tethering_limit"

    const/16 v3, 0x103

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "traffic_limit/*"

    const/16 v3, 0x105

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "bill_traffic_inquire"

    const/16 v3, 0x106

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sTrafficsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sTrafficsProjectionMap:Ljava/util/HashMap;

    const-string v1, "from_pkgname"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sTrafficsProjectionMap:Ljava/util/HashMap;

    const-string v1, "to_pkgname"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sTrafficsProjectionMap:Ljava/util/HashMap;

    const-string v1, "mobile_rxbytes"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sTrafficsProjectionMap:Ljava/util/HashMap;

    const-string v1, "mobile_txbytes"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sTrafficsProjectionMap:Ljava/util/HashMap;

    const-string v1, "wifi_rxbytes"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sTrafficsProjectionMap:Ljava/util/HashMap;

    const-string v1, "wifi_txbytes"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sTrafficsProjectionMap:Ljava/util/HashMap;

    const-string v1, "imsi"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sTrafficsProjectionMap:Ljava/util/HashMap;

    const-string v1, "storage_time"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mIsRecord:Z

    new-instance v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider$1;-><init>(Lcom/miui/networkassistant/provider/NetworkAssistantProvider;)V

    iput-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallServiceConn:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider$2;-><init>(Lcom/miui/networkassistant/provider/NetworkAssistantProvider;)V

    iput-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageConnection:Landroid/content/ServiceConnection;

    const-string v0, "NAProvider"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$002(Lcom/miui/networkassistant/provider/NetworkAssistantProvider;Lcom/miui/networkassistant/service/IFirewallBinder;)Lcom/miui/networkassistant/service/IFirewallBinder;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    return-object p1
.end method

.method static synthetic access$102(Lcom/miui/networkassistant/provider/NetworkAssistantProvider;Lcom/miui/networkassistant/service/ITrafficManageBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-object p1
.end method

.method private bindFirewallService()V
    .locals 5

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallServiceConn:Landroid/content/ServiceConnection;

    invoke-static {}, Lx4/z1;->A()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lx4/v;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method private bindTrafficManageService()V
    .locals 5

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Lx4/z1;->A()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lx4/v;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method private checkParams(Landroid/net/Uri;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getPackageNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private checkParams(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkParams(Landroid/net/Uri;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private checkSlotNum(I)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result p1

    :cond_0
    return p1
.end method

.method private constructCursorByRestrictPackages(Lcom/miui/networkassistant/provider/DataCursor;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/networkassistant/provider/DataCursor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/networkassistant/utils/UsageStateUtil;->getRecentApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    invoke-interface {v0, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    new-array v3, v3, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v5, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v5, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v2

    invoke-direct {v4, v3}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {p1, v4}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    new-array v4, v3, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v5, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v5, v0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v2

    invoke-direct {v1, v4}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {p1, v1}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private doQueryDB(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    sget-object v1, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x10

    const-string v3, "traffic_distribution"

    if-eq v1, v2, :cond_1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sTrafficsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown URI "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sTrafficsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p5, "_id desc"

    :cond_2
    move-object v7, p5

    iget-object p5, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez p5, :cond_3

    iget-object p5, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mOpenHelper:Lcom/miui/networkassistant/provider/DBHelper;

    invoke-virtual {p5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p5

    iput-object p5, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_3
    iget-object v1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object p2
.end method

.method private getPackageNameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    aput-object p1, v2, v3

    const-string p1, "%s#%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method private getSlotNum(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "NAProvider"

    const-string v1, "parse slot num exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getTrafficDetails(Lcom/miui/networkassistant/config/SimUserInfo;Landroid/content/Context;I)[Ljava/lang/String;
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v5

    const/4 v6, -0x1

    const-string v7, "query data usage "

    const-string v8, "NAProvider"

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v5, v6, :cond_0

    :try_start_0
    iget-object v5, v1, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCorrectedNormalMonthDataUsageUsed(I)J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormat(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v5

    invoke-interface {v0, v5}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCorrectedNormalMonthDataUsageUsed(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormatByControl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    invoke-static {v8, v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isNormalCardEnable()Z

    move-result v5

    const-wide/16 v11, 0x0

    if-eqz v5, :cond_3

    :try_start_1
    iget-object v5, v1, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCorrectedNormalMonthDataUsageUsed(I)J

    move-result-wide v5

    iget-object v13, v1, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v14

    invoke-interface {v13, v14}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCurrentMonthTotalPackage(I)J

    move-result-wide v13
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    cmp-long v11, v13, v11

    if-lez v11, :cond_1

    cmp-long v12, v5, v13

    if-ltz v12, :cond_1

    sub-long/2addr v5, v13

    :try_start_2
    invoke-static {v0, v5, v6}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormat(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormatByControl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    move v0, v9

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object v5, v0

    move v0, v9

    goto :goto_3

    :cond_1
    if-gtz v11, :cond_2

    :try_start_3
    invoke-static {v0, v5, v6}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormat(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormatByControl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    move v0, v3

    goto/16 :goto_5

    :catch_2
    move-exception v0

    move-object v5, v0

    move v0, v3

    goto :goto_3

    :cond_2
    cmp-long v11, v5, v13

    if-gez v11, :cond_7

    sub-long/2addr v13, v5

    :try_start_4
    invoke-static {v0, v13, v14}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormat(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v14}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormatByControl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    move v0, v10

    goto/16 :goto_5

    :catch_3
    move-exception v0

    move-object v5, v0

    move v0, v10

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v5, v0

    move/from16 v0, p3

    :goto_3
    invoke-static {v8, v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v5

    if-eqz v5, :cond_5

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getNotLimitedCardPackage()J

    move-result-wide v5

    iget-object v13, v1, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v14

    invoke-interface {v13, v14}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCorrectedNormalMonthDataUsageUsed(I)J

    move-result-wide v13
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    cmp-long v11, v5, v11

    if-lez v11, :cond_4

    cmp-long v11, v13, v5

    if-ltz v11, :cond_4

    sub-long/2addr v13, v5

    :try_start_6
    invoke-static {v0, v13, v14}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormat(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v14}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormatByControl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :cond_4
    cmp-long v5, v13, v5

    if-gez v5, :cond_7

    :try_start_7
    invoke-static {v0, v13, v14}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormat(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v14}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormatByControl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEnable()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v5

    :try_start_8
    iget-object v6, v1, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v6, v5}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getTodayDataUsageUsed(I)J

    move-result-wide v13

    iget-object v6, v1, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v6, v5}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCurrentMonthTotalPackage(I)J

    move-result-wide v5
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    cmp-long v11, v5, v11

    if-lez v11, :cond_6

    cmp-long v11, v13, v5

    if-ltz v11, :cond_6

    sub-long/2addr v13, v5

    :try_start_9
    invoke-static {v0, v13, v14}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormat(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v14}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormatByControl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    :cond_6
    cmp-long v11, v13, v5

    if-gez v11, :cond_7

    sub-long/2addr v5, v13

    :try_start_a
    invoke-static {v0, v5, v6}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormat(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormatByControl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_2

    :cond_7
    :goto_4
    move/from16 v0, p3

    :goto_5
    aget-object v5, v4, v9

    aput-object v5, v2, v9

    aget-object v4, v4, v10

    aput-object v4, v2, v10

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    :cond_8
    return-object v2
.end method

.method private queryBillPackageDetail(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 19

    if-eqz p1, :cond_7

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor;

    const-string v1, "package_total"

    const-string v2, "package_used"

    const-string v3, "package_remained"

    const-string v4, "slot_num"

    const-string v5, "package_setted"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x5

    const-wide/16 v7, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillPackageTotal()J

    move-result-wide v12

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isBillPackageEffective()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillPackageRemained()J

    move-result-wide v14

    goto :goto_0

    :cond_0
    const-wide/16 v14, -0x1

    :goto_0
    cmp-long v16, v12, v7

    if-lez v16, :cond_1

    sub-long v16, v12, v14

    move-wide/from16 v9, v16

    goto :goto_1

    :cond_1
    const-wide/16 v9, -0x1

    :goto_1
    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->hasOperatorAndCity()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v11

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    new-instance v7, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    new-array v8, v6, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v6, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v6, v12, v13}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    aput-object v6, v8, v2

    new-instance v6, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v6, v9, v10}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    aput-object v6, v8, v11

    new-instance v6, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v6, v14, v15}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    aput-object v6, v8, v5

    new-instance v6, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v6, v2}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    aput-object v6, v8, v4

    new-instance v6, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v6, v8, v3

    invoke-direct {v7, v8}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v0, v7}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    :cond_3
    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillPackageTotal()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isBillPackageEffective()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillPackageRemained()J

    move-result-wide v8

    goto :goto_3

    :cond_4
    const-wide/16 v8, -0x1

    :goto_3
    const-wide/16 v12, 0x0

    cmp-long v10, v6, v12

    if-lez v10, :cond_5

    sub-long v12, v6, v8

    goto :goto_4

    :cond_5
    const-wide/16 v12, -0x1

    :goto_4
    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->hasOperatorAndCity()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v11

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    new-instance v10, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v14, 0x5

    new-array v14, v14, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v15, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v15, v6, v7}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    aput-object v15, v14, v2

    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v2, v12, v13}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    aput-object v2, v14, v11

    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v2, v8, v9}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    aput-object v2, v14, v5

    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v2, v11}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    aput-object v2, v14, v4

    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v2, v14, v3

    invoke-direct {v10, v14}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v0, v10}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_6
    return-object v0
.end method

.method private queryCallTimePackageDetail(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 19

    if-eqz p1, :cond_5

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor;

    const-string v1, "package_total"

    const-string v2, "package_used"

    const-string v3, "package_remained"

    const-string v4, "slot_num"

    const-string v5, "package_setted"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x5

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getCallTimePackageTotal()J

    move-result-wide v12

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getCallTimePackageRemained()J

    move-result-wide v14

    cmp-long v16, v12, v9

    if-lez v16, :cond_0

    sub-long v16, v12, v14

    move-wide/from16 v7, v16

    goto :goto_0

    :cond_0
    const-wide/16 v7, -0x1

    :goto_0
    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->hasOperatorAndCity()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v11

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    new-instance v9, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    new-array v10, v6, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v6, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v6, v12, v13}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    aput-object v6, v10, v2

    new-instance v6, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v6, v7, v8}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    aput-object v6, v10, v11

    new-instance v6, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v6, v14, v15}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    aput-object v6, v10, v5

    new-instance v6, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v6, v2}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    aput-object v6, v10, v4

    new-instance v6, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v6, v10, v3

    invoke-direct {v9, v10}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v0, v9}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    :cond_2
    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getCallTimePackageTotal()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getCallTimePackageRemained()J

    move-result-wide v8

    const-wide/16 v12, 0x0

    cmp-long v10, v6, v12

    if-lez v10, :cond_3

    sub-long v12, v6, v8

    goto :goto_2

    :cond_3
    const-wide/16 v12, -0x1

    :goto_2
    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->hasOperatorAndCity()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v11

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    new-instance v10, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v14, 0x5

    new-array v14, v14, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v15, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v15, v6, v7}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    aput-object v15, v14, v2

    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v2, v12, v13}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    aput-object v2, v14, v11

    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v2, v8, v9}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    aput-object v2, v14, v5

    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v2, v11}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    aput-object v2, v14, v4

    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v2, v14, v3

    invoke-direct {v10, v14}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v0, v10}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_4
    return-object v0
.end method

.method private queryDataUsageNotiStatus(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 23

    move-object/from16 v1, p0

    const-string v0, "tmp.png"

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-boolean v3, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-static {v2, v3}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v5

    const/4 v7, 0x0

    const-string v8, ""

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v5, :cond_2

    invoke-static {v2}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->parseNotificationInfo(Landroid/content/Context;)Lcom/miui/networkassistant/model/VirtualNotiInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v7

    :cond_1
    invoke-virtual {v0}, Lcom/miui/networkassistant/model/VirtualNotiInfo;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/VirtualNotiInfo;->getAction()Ljava/lang/String;

    move-result-object v5

    const v7, 0x7f121814

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/VirtualNotiInfo;->getTodayUsedTraffic()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v4

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/VirtualNotiInfo;->getMonthUsedTraffic()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-virtual {v2, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/VirtualNotiInfo;->getAcitionDesc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/VirtualNotiInfo;->getIconUri()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_6

    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryDataUsageStatus(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v5

    check-cast v5, Lcom/miui/networkassistant/provider/DataCursor;

    if-nez v5, :cond_3

    return-object v7

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillPackageRemained()J

    move-result-wide v11

    new-instance v7, Landroid/content/Intent;

    const-string v13, "miui.intent.action.NETWORKASSISTANT_TRAFFIC_PURCHASE"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const-string v14, "bundle_key_purchase_from"

    const-string v15, "100003"

    invoke-virtual {v13, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "bundle_key_com"

    invoke-virtual {v7, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v13, 0x10000000

    invoke-virtual {v7, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v2}, Lmiui/provider/ExtraNetwork;->isTrafficPurchaseSupported(Landroid/content/Context;)Z

    move-result v13

    const-string v14, "total_limit"

    invoke-virtual {v5, v14}, Lcom/miui/networkassistant/provider/DataCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v5, v14}, Lcom/miui/networkassistant/provider/DataCursor;->getLong(I)J

    move-result-wide v14

    const-string v6, "month_used"

    invoke-virtual {v5, v6}, Lcom/miui/networkassistant/provider/DataCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/miui/networkassistant/provider/DataCursor;->getLong(I)J

    move-result-wide v9

    const-string v6, "today_used"

    invoke-virtual {v5, v6}, Lcom/miui/networkassistant/provider/DataCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/miui/networkassistant/provider/DataCursor;->getLong(I)J

    move-result-wide v5

    new-instance v4, Landroid/content/Intent;

    move-object/from16 v16, v8

    const-string v8, "miui.intent.action.NETWORKASSISTANT_ENTRANCE"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x14000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v8

    const-wide/high16 v18, -0x8000000000000000L

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    if-eqz v8, :cond_5

    const/4 v8, 0x2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {v2, v9, v10}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v3, v8

    const v5, 0x7f121813

    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f121816

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v8, [Ljava/lang/Object;

    long-to-double v9, v11

    div-double v9, v9, v20

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    cmp-long v5, v11, v18

    if-gtz v5, :cond_4

    move-object v2, v3

    move-object v5, v4

    move-object/from16 v3, v16

    const/16 v1, 0x64

    goto/16 :goto_4

    :cond_4
    move-object v5, v4

    const/16 v1, 0x64

    move-object/from16 v22, v3

    move-object v3, v2

    move-object/from16 v2, v22

    goto/16 :goto_4

    :cond_5
    const/4 v8, 0x1

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v13, :cond_6

    const v3, 0x7f121817

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    move-object v13, v2

    move-object v2, v3

    goto :goto_1

    :cond_6
    const v3, 0x7f121816

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v7, v8, [Ljava/lang/Object;

    move-object v13, v2

    long-to-double v1, v11

    div-double v1, v1, v20

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v7, v2

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    cmp-long v2, v11, v18

    if-gtz v2, :cond_7

    move-object/from16 v2, v16

    goto :goto_1

    :cond_7
    move-object v2, v1

    :goto_1
    sub-long v7, v14, v9

    const-wide/16 v11, 0x0

    cmp-long v1, v7, v11

    if-gtz v1, :cond_8

    const v1, 0x7f121815

    const/4 v3, 0x3

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v13, v5, v6}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v9, v5

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f060d42

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x1

    aput-object v3, v9, v11

    neg-long v5, v7

    invoke-static {v13, v5, v6}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x2

    aput-object v3, v9, v12

    invoke-virtual {v13, v1, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_8
    const/4 v11, 0x1

    const/4 v12, 0x2

    const v1, 0x7f121812

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v13, v5, v6}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {v13, v7, v8}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v11

    invoke-virtual {v13, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    long-to-double v5, v9

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v5, v7

    long-to-double v7, v14

    div-double/2addr v5, v7

    mul-double v5, v5, v20

    double-to-int v3, v5

    const/16 v5, 0x64

    rsub-int/lit8 v3, v3, 0x64

    if-le v3, v5, :cond_9

    move v3, v5

    :cond_9
    if-gez v3, :cond_a

    goto :goto_2

    :cond_a
    :goto_3
    move-object v5, v4

    move-object/from16 v22, v2

    move-object v2, v1

    move v1, v3

    move-object/from16 v3, v22

    goto :goto_4

    :cond_b
    move-object v13, v2

    const/4 v1, -0x1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v13, v5, v6}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v3, v5

    invoke-static {v13, v9, v10}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v3, v5

    const v2, 0x7f121813

    invoke-virtual {v13, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f121818

    invoke-virtual {v13, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    :goto_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v7, v16

    goto :goto_5

    :cond_c
    move-object v7, v3

    :goto_5
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v6, "na_files"

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1}, Lcom/miui/networkassistant/utils/NotiStatusIconHelper;->getIconByLevel(I)I

    move-result v1

    invoke-static {v4, v3, v0, v1}, Lcom/miui/networkassistant/utils/BitmapUtil;->saveDrawableResToFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "com.miui.networkassistant.fileprovider"

    invoke-static {v0, v3, v1}, Landroidx/core/content/FileProvider;->h(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.systemui"

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v0, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v1

    move-object/from16 v3, v17

    move-object/from16 v1, p0

    goto :goto_6

    :catch_0
    move-exception v0

    const-string v1, "NAProvider"

    const-string v3, "FileProvider Exception"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p0

    iget-boolean v3, v1, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mIsRecord:Z

    if-nez v3, :cond_d

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mIsRecord:Z

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/na_files/tmp.png"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exist file:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordThrowable(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_d
    move-object/from16 v8, v16

    move-object/from16 v3, v17

    :goto_6
    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor;

    const-string v4, "text1"

    const-string v6, "action1"

    const-string v9, "text2"

    const-string v10, "action2"

    const-string v11, "icon"

    filled-new-array {v4, v6, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    new-instance v4, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v9, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v9, v2}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v9, v6, v2

    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v2, v3}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v6, v3

    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v2, v7}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v6, v3

    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v2, v5}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v6, v3

    const/4 v2, 0x4

    new-instance v3, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v3, v8}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v3, v6, v2

    invoke-direct {v4, v6}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    return-object v0
.end method

.method private queryDataUsageStatus(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 16

    move-object/from16 v1, p0

    if-eqz p1, :cond_6

    iget-object v0, v1, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    :try_start_0
    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v3}, Lcom/miui/networkassistant/traffic/statistic/LeisureTrafficHelper;->isLeisureTime(Lcom/miui/networkassistant/config/SimUserInfo;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageTotal()J

    move-result-wide v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v9, v1, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v9, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCorrectedNormalAndLeisureMonthTotalUsed(I)[J

    move-result-object v9

    aget-wide v10, v9, v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :cond_1
    :try_start_2
    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v1, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v7, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCurrentMonthTotalPackage(I)J

    move-result-wide v7
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :cond_2
    move-wide v7, v5

    :goto_1
    :try_start_3
    iget-object v9, v1, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v9, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCorrectedNormalMonthDataUsageUsed(I)J

    move-result-wide v10
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    :try_start_4
    iget-object v9, v1, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v9, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getTodayDataUsageUsed(I)J

    move-result-wide v12
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    cmp-long v0, v7, v5

    if-ltz v0, :cond_3

    goto :goto_3

    :cond_3
    move-wide v7, v5

    :goto_3
    :try_start_5
    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageWarning()F

    move-result v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    long-to-float v5, v7

    mul-float/2addr v0, v5

    float-to-long v5, v0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-wide v12, v5

    goto :goto_5

    :catch_2
    move-exception v0

    move-wide v10, v5

    goto :goto_4

    :catch_3
    move-exception v0

    move-wide v7, v5

    move-wide v10, v7

    :goto_4
    move-wide v12, v10

    :goto_5
    const-string v9, "NAProvider"

    const-string v14, "query data usage "

    invoke-static {v9, v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v9, "securitycenter"

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/miui/networkassistant/traffic/purchase/CooperationManager;->isTrafficPurchaseAvailable(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;Z)Z

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->isNATipsEnable()Z

    move-result v0

    goto :goto_7

    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_5
    const/4 v0, 0x0

    :goto_7
    new-instance v3, Lcom/miui/networkassistant/provider/DataCursor;

    const-string v9, "total_limit"

    const-string v14, "month_used"

    const-string v15, "today_used"

    const-string v4, "month_warning"

    const-string v2, "purchase_tips_enable"

    filled-new-array {v9, v14, v15, v4, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v9, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v9, v7, v8}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    const/4 v7, 0x0

    aput-object v9, v4, v7

    new-instance v7, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v7, v10, v11}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    const/4 v8, 0x1

    aput-object v7, v4, v8

    const/4 v7, 0x2

    new-instance v8, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v8, v12, v13}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    aput-object v8, v4, v7

    const/4 v7, 0x3

    new-instance v8, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v8, v5, v6}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    aput-object v8, v4, v7

    const/4 v5, 0x4

    new-instance v6, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    invoke-direct {v2, v4}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v3, v2}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    goto :goto_8

    :cond_6
    const/4 v3, 0x0

    :goto_8
    return-object v3
.end method

.method private queryDataUsageStatusDetailed(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 29

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryDataUsageStatusDetailed packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NAProvider"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_8

    if-eqz p1, :cond_8

    iget-object v3, v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-nez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v3, Lcom/miui/networkassistant/provider/DataCursor;

    const-string v4, "total_limit"

    const-string v5, "month_used"

    const-string v6, "today_used"

    const-string v7, "sim_slot"

    const-string v8, "traffic_name"

    const-string v9, "traffic_value"

    const-string v10, "traffic_unit"

    const-string v11, "traffic_icon"

    const-string v12, "traffic_time"

    const-string v13, "click_action"

    const-string v14, "bill_name"

    const-string v15, "bill_value"

    const-string v16, "bill_unit"

    const-string v17, "bill_icon"

    const-string v18, "package_type"

    const-string v19, "active_slot_num"

    filled-new-array/range {v4 .. v19}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getCurrentMobileSlotReal()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-static {}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSimCount()I

    move-result v8

    const/16 v15, 0x9

    const/16 v16, 0x8

    const/16 v17, 0x7

    const/16 v18, 0x6

    const/16 v9, 0x10

    const/16 v19, 0x5

    const/16 v20, 0x4

    const/16 v21, 0x3

    const/16 v22, 0x2

    const/16 v23, 0x1

    if-ge v7, v8, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-virtual {v8}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v24

    if-nez v24, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v10, v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-static {v8, v10}, Lcom/miui/networkassistant/provider/NetworkAssistantProviderHelper;->getTrafficBaseInfo(Lcom/miui/networkassistant/config/SimUserInfo;Lcom/miui/networkassistant/service/ITrafficManageBinder;)[J

    move-result-object v10

    invoke-static {v1, v8, v10, v2}, Lcom/miui/networkassistant/provider/NetworkAssistantProviderHelper;->getTrafficTextInfo(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;[JLjava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    invoke-static {v1, v8, v2}, Lcom/miui/networkassistant/provider/NetworkAssistantProviderHelper;->getBillTextInfo(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    if-ne v5, v7, :cond_2

    move/from16 v27, v23

    goto :goto_1

    :cond_2
    move/from16 v27, v6

    :goto_1
    if-eqz v27, :cond_3

    move/from16 v28, v6

    goto :goto_2

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v28, v27

    :goto_2
    new-instance v11, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    new-array v9, v9, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v12, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-wide v13, v10, v6

    invoke-direct {v12, v13, v14}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    aput-object v12, v9, v6

    new-instance v12, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-wide v13, v10, v23

    invoke-direct {v12, v13, v14}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    aput-object v12, v9, v23

    new-instance v12, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-wide v13, v10, v22

    invoke-direct {v12, v13, v14}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    aput-object v12, v9, v22

    new-instance v10, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v10, v7}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    aput-object v10, v9, v21

    new-instance v10, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v12, v25, v6

    invoke-direct {v10, v12}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v10, v9, v20

    new-instance v10, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v12, v25, v23

    invoke-direct {v10, v12}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v10, v9, v19

    new-instance v10, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v12, v25, v22

    invoke-direct {v10, v12}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v10, v9, v18

    new-instance v10, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v12, v25, v21

    invoke-direct {v10, v12}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v10, v9, v17

    new-instance v10, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v12, v25, v20

    invoke-direct {v10, v12}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v10, v9, v16

    new-instance v10, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v12, v25, v19

    invoke-direct {v10, v12}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v10, v9, v15

    new-instance v10, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v12, v26, v6

    invoke-direct {v10, v12}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/16 v12, 0xa

    aput-object v10, v9, v12

    new-instance v10, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v12, v26, v23

    invoke-direct {v10, v12}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/16 v12, 0xb

    aput-object v10, v9, v12

    new-instance v10, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v12, v26, v22

    invoke-direct {v10, v12}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/16 v12, 0xc

    aput-object v10, v9, v12

    new-instance v10, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v12, v26, v21

    invoke-direct {v10, v12}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/16 v12, 0xd

    aput-object v10, v9, v12

    new-instance v10, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-virtual {v8}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v8

    invoke-direct {v10, v8}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    const/16 v8, 0xe

    aput-object v10, v9, v8

    new-instance v8, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v8, v5}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    const/16 v10, 0xf

    aput-object v8, v9, v10

    invoke-direct {v11, v9}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    move/from16 v8, v28

    invoke-interface {v4, v8, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_6

    invoke-static {v1, v2}, Lcom/miui/networkassistant/provider/NetworkAssistantProviderHelper;->getNoSimIcon(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    new-array v8, v9, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v9, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v9, v6}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    aput-object v9, v8, v6

    new-instance v9, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v9, v6}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    aput-object v9, v8, v23

    new-instance v9, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v9, v6}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    aput-object v9, v8, v22

    new-instance v9, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v9, v6}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    aput-object v9, v8, v21

    new-instance v9, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    const v10, 0x7f121ab9

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v20

    new-instance v9, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    const-string v11, "--"

    invoke-direct {v9, v11}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v19

    new-instance v9, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getMBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v18

    new-instance v9, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v12, v2, v6

    invoke-direct {v9, v12}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v17

    new-instance v9, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    const-string v12, "0"

    invoke-direct {v9, v12}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v16

    new-instance v9, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    const-string v12, "miui.intent.action.NETWORKASSISTANT_ENTRANCE"

    invoke-static {v12, v6}, Lcom/miui/networkassistant/provider/NetworkAssistantProviderHelper;->toUriIntent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v15

    new-instance v6, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/16 v9, 0xa

    aput-object v6, v8, v9

    new-instance v6, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v6, v11}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/16 v9, 0xb

    aput-object v6, v8, v9

    new-instance v6, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    const v9, 0x7f121ca9

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xc

    aput-object v6, v8, v1

    new-instance v1, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v2, v2, v23

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-object v1, v8, v2

    new-instance v1, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    const/16 v2, 0xe

    aput-object v1, v8, v2

    new-instance v1, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v1, v5}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    const/16 v2, 0xf

    aput-object v1, v8, v2

    invoke-direct {v7, v8}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    invoke-virtual {v3, v2}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    goto :goto_4

    :cond_7
    return-object v3

    :cond_8
    :goto_5
    const-string v1, "object have null"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private queryFirewallBackgroundRestrictPackage(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6

    new-instance p1, Lcom/miui/networkassistant/provider/DataCursor;

    const-string v0, "package_name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getFilteredAppInfosList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/networkassistant/model/AppInfo;

    iget v4, v3, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v4}, Lx4/z1;->b(I)I

    move-result v4

    const/16 v5, 0x2710

    if-lt v4, v5, :cond_1

    iget-object v4, v3, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPrePolicyPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, v3, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v0, v4, v5}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->isAppRestrictBackground(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, v3, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->constructCursorByRestrictPackages(Lcom/miui/networkassistant/provider/DataCursor;Ljava/util/List;)V

    return-object p1
.end method

.method private queryMobileRestrictPackage(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 2

    new-instance p1, Lcom/miui/networkassistant/provider/DataCursor;

    const-string v0, "package_name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v1, v0}, Lcom/miui/networkassistant/service/IFirewallBinder;->getMobileRestrictPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->constructCursorByRestrictPackages(Lcom/miui/networkassistant/provider/DataCursor;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method private queryMobileRule(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 8

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor;

    const-string v1, "package_name"

    const-string v2, "mobile_rule"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkParams(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getPackageNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkSlotNum(I)I

    move-result p1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v5, "queryMobileRule packageName:%s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "NAProvider"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v3, v1, p1}, Lcom/miui/networkassistant/service/IFirewallBinder;->getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object p1

    new-instance v3, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v7, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v7, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v4

    new-instance v1, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result p1

    invoke-direct {v1, p1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    aput-object v1, v6, v2

    invoke-direct {v3, v6}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "queryMobileRule"

    invoke-static {v5, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method private queryNASettingsInfoStatus(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 12

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor;

    const-string v3, "operator_setted"

    const-string v4, "correction_time"

    const-string v5, "traffic_saving_started"

    const-string v6, "show_status_bar_setted"

    const-string v7, "needed_traffic_purchase"

    const-string v8, "oversea_version"

    const-string v9, "traffic_saving_enabled"

    const-string v10, "auto_traffic_correction"

    const-string v11, "tc_diagnostic"

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->hasOperatorAndCity()Z

    move-result v3

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageCorrectedTime()J

    move-result-wide v4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "status_bar_show_network_assistant"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iget-object v7, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v7, p1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->isNeededPurchasePkg(I)Z

    move-result v7

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isSupportCorrection()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataRoaming()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionOn()Z

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v9

    :goto_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, p1}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_2

    move v3, v9

    :cond_2
    new-instance p1, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v11, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v11, v10, v0

    new-instance v3, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v3, v4, v5}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    aput-object v3, v10, v9

    const/4 v3, 0x2

    new-instance v4, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v4, v10, v3

    const/4 v3, 0x3

    new-instance v4, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v4, v6}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    aput-object v4, v10, v3

    const/4 v3, 0x4

    new-instance v4, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v4, v10, v3

    const/4 v3, 0x5

    new-instance v4, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v4, v10, v3

    const/4 v3, 0x6

    new-instance v4, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v4, v10, v3

    const/4 v3, 0x7

    new-instance v4, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v4, v10, v3

    const/16 v1, 0x8

    new-instance v3, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v3, v10, v1

    invoke-direct {p1, v10}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v2, p1}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "NAProvider"

    const-string v1, "queryNASettingsInfoStatus exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    return-object v2
.end method

.method private queryTempMobileRule(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 8

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor;

    const-string v1, "package_name"

    const-string v2, "temp_mobile_rule"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkParams(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getPackageNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkSlotNum(I)I

    move-result p1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v5, "queryTempMobileRule packageName:%s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "NAProvider"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v3, v1, p1}, Lcom/miui/networkassistant/service/IFirewallBinder;->getTempMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object p1

    new-instance v3, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v7, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v7, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v4

    new-instance v1, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result p1

    invoke-direct {v1, p1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    aput-object v1, v6, v2

    invoke-direct {v3, v6}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "queryTempMobileRule"

    invoke-static {v5, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method private queryTempWifiRule(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 8

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor;

    const-string v1, "package_name"

    const-string v2, "temp_wifi_rule"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkParams(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getPackageNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "queryTempWifiRule packageName:%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "NAProvider"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v2, p1}, Lcom/miui/networkassistant/service/IFirewallBinder;->getTempWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v2

    new-instance v5, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v7, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v7, p1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v3

    new-instance p1, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v2

    invoke-direct {p1, v2}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    aput-object p1, v6, v1

    invoke-direct {v5, v6}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v0, v5}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "queryTempWifiRule"

    invoke-static {v4, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method private queryTetheringLimitEnable(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 5

    if-eqz p1, :cond_0

    new-instance p1, Lcom/miui/networkassistant/provider/DataCursor;

    const-string v0, "tethering_limit_enabled"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getTetheringLimitEnabled()Z

    move-result v0

    new-instance v1, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    const/4 v3, 0x0

    new-instance v4, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {p1, v1}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private queryTopUsedAppList(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 12

    if-eqz p1, :cond_2

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor;

    const-string v3, "_id"

    const-string v4, "package_name"

    const-string v5, "traffic_used"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->getTodayDataUsageAppMapByDec(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    if-le v4, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    :goto_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v1

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    if-ge v4, p1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    new-instance v6, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v7, 0x3

    new-array v7, v7, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v8, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v8, v4}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    aput-object v8, v7, v1

    new-instance v8, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v8, v9}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v3

    const/4 v8, 0x2

    new-instance v9, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    aput-object v9, v7, v8

    invoke-direct {v6, v7}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v2, v6}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    :cond_3
    return-object v2
.end method

.method private queryTrafficDataAndStatus(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Lcom/miui/networkassistant/provider/DataCursor;

    const-string v5, "sim_slot"

    const-string v6, "traffic_type"

    const-string v7, "traffic_value"

    const-string v8, "traffic_unit"

    const-string v9, "bill_type"

    const-string v10, "bill_value"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    if-eqz p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v5

    invoke-static {v1, v6}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x2

    const-string v12, "bill_value"

    if-eqz v7, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    iget-object v7, v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-static {v5, v7}, Lcom/miui/networkassistant/provider/NetworkAssistantProviderHelper;->getTrafficBaseInfo(Lcom/miui/networkassistant/config/SimUserInfo;Lcom/miui/networkassistant/service/ITrafficManageBinder;)[J

    move-result-object v5

    aget-wide v13, v5, v11

    invoke-static {v1, v13, v14}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormat(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v6

    aput-object v7, v3, v6

    aget-wide v13, v5, v11

    invoke-static {v13, v14}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormatByControl(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v10

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v11

    :goto_0
    move v5, v9

    goto :goto_2

    :cond_0
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/miui/networkassistant/config/SimUserInfo;->isBillPackageEffective()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v9

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillPackageRemained()J

    move-result-wide v12

    long-to-float v3, v12

    div-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v12

    move v3, v6

    :goto_1
    invoke-direct {v0, v5, v1, v9}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getTrafficDetails(Lcom/miui/networkassistant/config/SimUserInfo;Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v5

    move v5, v3

    move-object/from16 v3, v17

    goto :goto_2

    :cond_2
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v11

    goto :goto_0

    :goto_2
    new-instance v7, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v13, 0x6

    new-array v14, v13, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v15, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v15, v13}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v15, v14, v6

    new-instance v13, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v15, v3, v11

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v13, v14, v10

    new-instance v13, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v15, v3, v6

    invoke-direct {v13, v15}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v13, v14, v11

    new-instance v13, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v15, v3, v10

    invoke-direct {v13, v15}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v13, v14, v2

    new-instance v13, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x4

    aput-object v13, v14, v15

    new-instance v13, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v13, v12}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x5

    aput-object v13, v14, v16

    invoke-direct {v7, v14}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v4, v7}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    sget-boolean v7, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v10}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v7

    invoke-static {v1, v10}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    iget-object v5, v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-static {v7, v5}, Lcom/miui/networkassistant/provider/NetworkAssistantProviderHelper;->getTrafficBaseInfo(Lcom/miui/networkassistant/config/SimUserInfo;Lcom/miui/networkassistant/service/ITrafficManageBinder;)[J

    move-result-object v5

    aget-wide v7, v5, v11

    invoke-static {v1, v7, v8}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormat(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v6

    aput-object v1, v3, v6

    aget-wide v7, v5, v11

    invoke-static {v7, v8}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormatByControl(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v10

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v11

    goto :goto_4

    :cond_3
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->isBillPackageEffective()Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v9

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillPackageRemained()J

    move-result-wide v12

    long-to-float v3, v12

    div-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v12

    move v3, v6

    :goto_3
    invoke-direct {v0, v7, v1, v9}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getTrafficDetails(Lcom/miui/networkassistant/config/SimUserInfo;Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v1

    move v9, v3

    move-object v3, v1

    goto :goto_4

    :cond_5
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v11

    move v9, v5

    :goto_4
    new-instance v1, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v7, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    new-instance v7, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v8, v3, v11

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v10

    new-instance v7, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v6, v3, v6

    invoke-direct {v7, v6}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v11

    new-instance v6, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    aget-object v3, v3, v10

    invoke-direct {v6, v3}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v2

    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v2, v5, v15

    new-instance v2, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v2, v12}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v2, v5, v16

    invoke-direct {v1, v5}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v4, v1}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    :cond_6
    return-object v4
.end method

.method private queryTrafficLimitStatus(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 10

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor;

    const-string v1, "limit_status"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getSlotNum(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->isNormalCardEnable()Z

    move-result v3

    const-string v5, "NAProvider"

    if-eqz v3, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v6

    invoke-interface {v3, v6}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCurrentMonthTotalPackage(I)J

    move-result-wide v6

    iget-object v3, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCorrectedNormalMonthDataUsageUsed(I)J

    move-result-wide v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_2

    cmp-long v3, v3, v6

    if-ltz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "query data usage "

    invoke-static {v5, v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move v3, v1

    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v4, p1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->isDailyTrafficLimited(I)Z

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_3

    move v3, v2

    goto :goto_2

    :catch_1
    move-exception p1

    const-string v4, "query daily limit usage "

    invoke-static {v5, v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    new-instance p1, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    new-array v2, v2, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v4, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v4, v3}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    aput-object v4, v2, v1

    invoke-direct {p1, v2}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    return-object v0
.end method

.method private queryTrafficPurchaseConfig(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 5

    if-eqz p1, :cond_0

    new-instance p1, Lcom/miui/networkassistant/provider/DataCursor;

    const-string v0, "first_enter_config"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getFirstEnterTrafficPurchaseDeclare()Z

    move-result v0

    new-instance v1, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    const/4 v3, 0x0

    new-instance v4, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {p1, v1}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private queryTrafficPurchaseStatus(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 5

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v3, "slotId"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getSlotNum(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    sget-boolean p1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor;

    const-string v3, "traffic_purchase_enabled"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v4, p1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->isNeededPurchasePkg(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v3}, Lcom/miui/networkassistant/traffic/statistic/LeisureTrafficHelper;->isLeisureTime(Lcom/miui/networkassistant/config/SimUserInfo;)Z

    move-result p1

    if-nez p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    new-instance v3, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    new-array v2, v2, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v4, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v1

    invoke-direct {v3, v2}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v1, "NAProvider"

    const-string v2, "queryTrafficPurchaseStatus"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method private queryTrafficStats(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v0

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v3

    :goto_0
    new-instance p1, Lcom/miui/networkassistant/provider/DataCursor;

    const-string v5, "total_tx_byte"

    const-string v6, "total_rx_byte"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {p1, v5}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    new-instance v5, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    const/4 v7, 0x0

    new-instance v8, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v8, v0, v1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    aput-object v8, v6, v7

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v0, v3, v4}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(J)V

    aput-object v0, v6, v2

    invoke-direct {v5, v6}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {p1, v5}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V

    move-object v0, p1

    :cond_2
    return-object v0
.end method

.method private queryWifiRule(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 8

    new-instance v0, Lcom/miui/networkassistant/provider/DataCursor;

    const-string v1, "package_name"

    const-string v2, "wifi_rule"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkParams(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getPackageNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "queryWifiRule packageName:%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "NAProvider"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v2, p1}, Lcom/miui/networkassistant/service/IFirewallBinder;->getWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v2

    new-instance v5, Lcom/miui/networkassistant/provider/DataCursor$DataRow;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    new-instance v7, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-direct {v7, p1}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v3

    new-instance p1, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;

    invoke-virtual {v2}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v2

    invoke-direct {p1, v2}, Lcom/miui/networkassistant/provider/DataCursor$DataEntry;-><init>(I)V

    aput-object p1, v6, v1

    invoke-direct {v5, v6}, Lcom/miui/networkassistant/provider/DataCursor$DataRow;-><init>([Lcom/miui/networkassistant/provider/DataCursor$DataEntry;)V

    invoke-virtual {v0, v5}, Lcom/miui/networkassistant/provider/DataCursor;->addRow(Lcom/miui/networkassistant/provider/DataCursor$DataRow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "queryWifiFirewallState"

    invoke-static {v4, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method private queryWlanRestrictPackage(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 1

    new-instance p1, Lcom/miui/networkassistant/provider/DataCursor;

    const-string v0, "package_name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/miui/networkassistant/provider/DataCursor;-><init>([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/miui/networkassistant/service/IFirewallBinder;->getWifiRestrictPackages()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->constructCursorByRestrictPackages(Lcom/miui/networkassistant/provider/DataCursor;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method private setMobileRuleByPkgName(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkParams(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getPackageNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mobile_rule"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "mobile_rule_slot"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkSlotNum(I)I

    move-result v2

    const-string v3, "source_package_name"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {p2, v3}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackSetMobileFirewallRule(Ljava/lang/String;Z)V

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const-string p2, "setMobileRuleByPkgName packageName:%s, slotnum:%s, isRestrict:%s, sourcePackage:%s"

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "NAProvider"

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v0, p1, p2, v2}, Lcom/miui/networkassistant/service/IFirewallBinder;->setMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "set mobile rule"

    invoke-static {v3, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private setNASettingsInfoStatus(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-eqz p1, :cond_2

    const-string p1, "show_status_bar_setted"

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "status_bar_show_network_assistant"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const-string p1, "auto_traffic_correction"

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-boolean p2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleDataUsageAutoCorrection(Z)Z

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0
.end method

.method private setTempMobileRuleByPkgName(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 7

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkParams(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getPackageNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "temp_mobile_rule_slot"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkSlotNum(I)I

    move-result v0

    const-string v2, "temp_mobile_rule"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "source_package_name"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "NAProvider"

    if-eqz v3, :cond_1

    const-string p1, "srcPkgName must not be empty"

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    aput-object v2, v3, v5

    const/4 v5, 0x3

    aput-object p2, v3, v5

    const-string v5, "setTempMobileRuleByPkgName packageName:%s, slotnum:%s, isRestrict:%s, srcPkgName:%s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    :goto_0
    iget-object v3, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v3, p1, v2, p2, v0}, Lcom/miui/networkassistant/service/IFirewallBinder;->setTempMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "set temp mobile rule"

    invoke-static {v4, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private setTempWifiRuleByPkgName(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkParams(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getPackageNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "temp_wifi_rule"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "source_package_name"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "NAProvider"

    if-eqz v2, :cond_1

    const-string p1, "srcPkgName must not be empty"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const/4 v4, 0x2

    aput-object p2, v2, v4

    const-string v4, "setTempWifiRuleByPkgName packageName:%s, isRestrict:%s, srcPkgName:%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v2, p1, v0, p2}, Lcom/miui/networkassistant/service/IFirewallBinder;->setTempWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "set temp wifi rule"

    invoke-static {v3, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private setTetheringLimitEnabled(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string p1, "tethering_limit_enabled"

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/config/CommonConfig;->setTetheringLimitEnabled(Z)Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setTrafficPurchaseConfig(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string p1, "first_enter_config"

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/networkassistant/config/CommonConfig;->setFirstEnterTrafficPurchaseDeclare(Z)Z

    move v1, v0

    :cond_0
    const-string p1, "slot_num"

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "traffic_alert"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method private setWifiRuleByPkgName(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->checkParams(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->getPackageNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "wifi_rule"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "source_package_name"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {p2, v2}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackSetWlanFirewallRule(Ljava/lang/String;Z)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const-string p2, "seWifiRuleByPkgName packageName:%s, isRestrict:%s, sourcePackage:%s"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "NAProvider"

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/service/IFirewallBinder;->setWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "set wifi rule"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private startCorrection(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 9

    const-string v0, "NAProvider"

    invoke-static {}, Lef/x;->z()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, -0x1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/miui/networkassistant/utils/BroadCastUtil;->sendCorrectionFailedToCarrier(Landroid/content/Context;IZ)V

    return v2

    :cond_0
    const-string v1, "sim_slot_num_tag"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->isBrandSetted()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isMiMobileOperator(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/CommonConfig;->isEnableToSendMsgToCorrect()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/miui/networkassistant/ui/activity/AskGrantAndExecuteActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "method"

    const-string v1, "update"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "contentValues"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_1
    iget-object v3, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    :try_start_0
    sget-object p1, Lcom/miui/networkassistant/provider/ProviderConstant;->channelString2Int:Ljava/util/HashMap;

    const-string v3, "from"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_2

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_2
    iget-object v3, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    const-string p1, "correction_type"

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface/range {v3 .. v8}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->startCorrectionWithChannel(IZIZI)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "startCorrection NullPointerException"

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "startCorrection RemoteException "

    :goto_0
    invoke-static {v0, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return v2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mOpenHelper:Lcom/miui/networkassistant/provider/DBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x10

    const-string v2, "traffic_distribution"

    if-eq v0, v1, :cond_3

    const/16 v1, 0x11

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown URI "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    :goto_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return p2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const-string p1, "vnd.android.cursor.item/vnd.traffic.provider"

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "vnd.android.cursor.dir/vnd.traffic.provider"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mOpenHelper:Lcom/miui/networkassistant/provider/DBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "traffic_distribution"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long p2, v0, v3

    if-lez p2, :cond_1

    sget-object p1, Lcom/miui/networkassistant/provider/ProviderConstant$TrafficDistributionColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object p1

    :cond_1
    new-instance p2, Landroid/database/SQLException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to insert row into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown URI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public onCreate()Z
    .locals 2

    const-string v0, "NAProvider"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->bindFirewallService()V

    invoke-direct {p0}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->bindTrafficManageService()V

    new-instance v0, Lcom/miui/networkassistant/provider/DBHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/provider/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mOpenHelper:Lcom/miui/networkassistant/provider/DBHelper;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_9

    const/16 v1, 0x11

    if-eq v0, v1, :cond_9

    const/16 p2, 0x30

    if-eq v0, p2, :cond_8

    const/16 p2, 0x31

    if-eq v0, p2, :cond_7

    const/16 p2, 0x40

    if-eq v0, p2, :cond_6

    const/16 p2, 0x50

    if-eq v0, p2, :cond_5

    const/16 p2, 0x60

    if-eq v0, p2, :cond_4

    const/16 p2, 0x90

    if-eq v0, p2, :cond_3

    const/16 p2, 0x91

    if-eq v0, p2, :cond_2

    const/16 p2, 0x100

    if-eq v0, p2, :cond_1

    const/16 p2, 0x101

    if-eq v0, p2, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown URI "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryTrafficDataAndStatus(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryTrafficLimitStatus(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryDataUsageStatusDetailed(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryTetheringLimitEnable(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryFirewallBackgroundRestrictPackage(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryMobileRestrictPackage(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryWlanRestrictPackage(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryWifiRule(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryMobileRule(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryTempWifiRule(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryTempMobileRule(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryCallTimePackageDetail(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryBillPackageDetail(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryTopUsedAppList(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryTrafficPurchaseConfig(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryTrafficPurchaseStatus(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryTrafficStats(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryNASettingsInfoStatus(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryDataUsageNotiStatus(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->queryDataUsageStatus(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-direct/range {p0 .. p5}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->doQueryDB(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x103
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mOpenHelper:Lcom/miui/networkassistant/provider/DBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x10

    const-string v2, "traffic_distribution"

    if-eq v0, v1, :cond_7

    const/16 v1, 0x11

    if-eq v0, v1, :cond_5

    const/16 p3, 0x40

    if-eq v0, p3, :cond_4

    const/16 p3, 0x90

    if-eq v0, p3, :cond_3

    const/16 p3, 0x102

    if-eq v0, p3, :cond_2

    const/16 p3, 0x103

    if-eq v0, p3, :cond_1

    packed-switch v0, :pswitch_data_0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown URI "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->setWifiRuleByPkgName(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result p2

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->setMobileRuleByPkgName(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result p2

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->setTempWifiRuleByPkgName(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result p2

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->setTempMobileRuleByPkgName(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->setTetheringLimitEnabled(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result p2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->startCorrection(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result p2

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->setTrafficPurchaseConfig(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result p2

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->setNASettingsInfoStatus(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result p2

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x29

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_6
    const-string p3, ""

    :goto_0
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/miui/networkassistant/provider/NetworkAssistantProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    :goto_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
