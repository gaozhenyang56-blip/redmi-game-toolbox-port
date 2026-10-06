.class public Lcom/miui/permission/PermissionContract$Method;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permission/PermissionContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permission/PermissionContract$Method$GetPermissionFlags;,
        Lcom/miui/permission/PermissionContract$Method$ReadClipboardTipSetting;,
        Lcom/miui/permission/PermissionContract$Method$SavePermissionDescription;,
        Lcom/miui/permission/PermissionContract$Method$SendPermissionRecord;,
        Lcom/miui/permission/PermissionContract$Method$SetMode;,
        Lcom/miui/permission/PermissionContract$Method$GetEffectivePermissions;,
        Lcom/miui/permission/PermissionContract$Method$SetApplicationPermission;,
        Lcom/miui/permission/PermissionContract$Method$GetUsingPermissionList;,
        Lcom/miui/permission/PermissionContract$Method$GetNotRecordList;,
        Lcom/miui/permission/PermissionContract$Method$GetPermissionForId;,
        Lcom/miui/permission/PermissionContract$Method$GetAllPermissions;,
        Lcom/miui/permission/PermissionContract$Method$GetAllPermissionGroups;,
        Lcom/miui/permission/PermissionContract$Method$Flag;
    }
.end annotation


# static fields
.field public static final ADD_NOT_RECORD_LIST:I = 0xb

.field public static final GET_ALL_PERMISSIONS:I = 0x4

.field public static final GET_ALL_PERMISSION_GROUPS:I = 0x3

.field public static final GET_EFFECTIVE_PERMISSIONS:I = 0x7

.field public static final GET_NOT_RECORD_LIST:I = 0xa

.field public static final GET_PERMISSION_FOR_NAME_DESC:I = 0x13

.field public static final GET_PERMSSION_FOR_ID:I = 0xc

.field public static final GET_PERMSSION_STATE:I = 0x11

.field public static final GET_USING_LOCATION_LIST:I = 0xd

.field public static final READ_CLIPBOARD_TIP_SETTING:I = 0x10

.field public static final SEND_PERMISSION_RECORD:I = 0xf

.field public static final SEND_WAKEPATH_PERMISSION_RECORD:I = 0xe

.field public static final SET_APPLICATION_PERMISSION:I = 0x6

.field public static final SET_APP_BEHAVIOR_RECORD_ENABLE:I = 0x12

.field public static final SET_MODE:I = 0x9

.field public static final UPDATE_DATA:I = 0x5

.field public static final WRITE_WAKE_PATH_WHITE_LIST:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
