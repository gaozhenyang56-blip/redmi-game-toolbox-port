.class public final Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mGroupHeadUidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sGroupHeadUidMapInit:Z

.field private static sPreBgPolicyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPreFirewallWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->mGroupHeadUidMap:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->mGroupHeadUidMap:Ljava/util/HashMap;

    const-string v2, "com.android.providers.telephony"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->mGroupHeadUidMap:Ljava/util/HashMap;

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->mGroupHeadUidMap:Ljava/util/HashMap;

    const-string v2, "com.google.android.gsf"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->mGroupHeadUidMap:Ljava/util/HashMap;

    const-string v2, "com.android.providers.downloads.ui"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    sget-boolean v0, Lx4/w;->a:Z

    const-string v1, "com.airtelx.airtelkiosk"

    const-string v2, "com.payjoy.access"

    const-string v3, "com.payjoy.status"

    const-string v4, "com.payjoy.status.df"

    const-string v5, "com.kistpay.finance"

    const-string v6, "com.trustonic.telecoms.client.standard.dlc.playground"

    const-string v7, "com.trustonic.telecoms.standard.dlc"

    const-string v8, "com.trustonic.telecoms.standard.dpc"

    const-string v9, "com.trustonic.telecoms.setup"

    const-string v10, "com.trustonic.telecoms.xti.dpc"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    const-string v11, "config_bg_white_list"

    invoke-static {v11, v0}, Lx4/w;->b(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    const-string v11, "com.xiaomi.xmsf"

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    const-string v11, "com.miui.guardprovider"

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    const-string v11, "com.xiaomi.account"

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    const-string v11, "com.lbe.security.miui"

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    const-string v11, "com.miui.securityadd"

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    const-string v11, "com.miui.analytics"

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    const-string v11, "com.xiaomi.finddevice"

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    const-string v11, "com.miui.greenguard"

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    const-string v11, "com.miui.mishare.connectivity"

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    const-string v11, "com.google.android.networkstack.permissionconfig"

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    const-string v11, "com.google.android.networkstack"

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    const-string v11, "com.google.android.cellbroadcastservice"

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    const-string v11, "com.google.android.networkstack.tethering"

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    const-string v11, "com.android.networkstack"

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    const-string v11, "com.android.networkstack.tethering"

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    const-string v11, "com.android.networkstack.permissionconfig"

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    const-string v11, "com.android.captiveportallogin"

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    const-string v11, "com.google.android.captiveportallogin"

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lx4/w;->a:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    const-string v1, "config_firewall_white_list"

    invoke-static {v1, v0}, Lx4/w;->b(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lx4/y;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    const-string v5, "jp.netstar.familysmile"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lx4/y;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    const-string v5, "jp.softbank.mb.parentalcontrols"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    const-string v5, "jp.softbank.security"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPreBgPolicyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    return-object v0
.end method

.method public static getPreFirewallWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public static initGroupMap(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->mGroupHeadUidMap:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->initGroupMap(Landroid/content/Context;Ljava/util/Map;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sGroupHeadUidMapInit:Z

    return-void
.end method

.method private static initGroupMap(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-static {p0, v1}, Lcom/miui/networkassistant/utils/PackageUtil;->getUidByPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lx4/z1;->b(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static isGroupHead(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sGroupHeadUidMapInit:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->initGroupMap(Landroid/content/Context;)V

    :cond_0
    sget-object p1, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->mGroupHeadUidMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isGroupUid(ILandroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sGroupHeadUidMapInit:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->initGroupMap(Landroid/content/Context;)V

    :cond_0
    sget-object p1, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->mGroupHeadUidMap:Ljava/util/HashMap;

    invoke-static {p0}, Lx4/z1;->b(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isPreFirewallWhiteListPackage(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreFirewallWhiteList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isPrePolicyPackage(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->sPreBgPolicyList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
