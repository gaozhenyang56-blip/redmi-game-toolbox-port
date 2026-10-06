.class public Lmiui/cloud/util/SyncAutoSettingUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEVICE_FEATURE_EXEMPT_MASTER_SYNC_AUTO:Ljava/lang/String; = "exempt_master_sync_auto"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getXiaomiGlobalSyncAutomatically()Z
    .locals 1

    const-string v0, "exempt_master_sync_auto"

    invoke-static {v0}, Lmiui/cloud/util/DeviceFeatureUtils;->hasDeviceFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method
