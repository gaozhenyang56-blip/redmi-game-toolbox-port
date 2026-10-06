.class public Lcom/miui/permission/PermissionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permission/PermissionManager$ArrayUtils;
    }
.end annotation


# static fields
.field public static final ACTION_ACCEPT:I = 0x3

.field public static final ACTION_BLOCK:I = 0x4

.field public static final ACTION_DEFAULT:I = 0x0

.field public static final ACTION_FOREGROUND:I = 0x6

.field public static final ACTION_NONBLOCK:I = 0x5

.field public static final ACTION_PROMPT:I = 0x2

.field public static final ACTION_REJECT:I = 0x1

.field public static final ACTION_VIRTUAL:I = 0x7

.field public static final DISPLAY_CLIPBOARD:I = 0x5

.field public static final DISPLAY_ORDER_MEDIA:I = 0x2

.field public static final DISPLAY_ORDER_NOTE_RECORD:I = 0x7

.field public static final DISPLAY_ORDER_OTHER:I = 0x4

.field public static final DISPLAY_ORDER_PHONE:I = 0x3

.field public static final DISPLAY_ORDER_SENSITIVE:I = 0x1

.field public static final DISPLAY_ORDER_SETTINGS:I = 0x6

.field public static final FLAG_EXCLUDE_DEVICE_OWNER:I = 0x10

.field public static final FLAG_GRANT_ONTTIME:I = 0x4

.field public static final FLAG_GRANT_THREESEC:I = 0x8

.field public static final FLAG_KILL_PROCESS:I = 0x2

.field public static final GET_APP_COUNT:I = 0x1

.field public static final GROUP_AUDIO:I = 0x2000

.field public static final GROUP_CALENDAR:I = 0x20

.field public static final GROUP_CALL_LOG:I = 0x10

.field public static final GROUP_CAMERA:I = 0x400

.field public static final GROUP_CHARGES:I = 0x1

.field public static final GROUP_CLIPBOARD:I = 0x20000

.field public static final GROUP_CONNECT_DEVICE:I = 0x40

.field public static final GROUP_CONTACT:I = 0x8

.field public static final GROUP_FILE:I = 0x4000

.field public static final GROUP_IMAGE_VIDEO:I = 0x1000

.field public static final GROUP_LOCATION:I = 0x200

.field public static final GROUP_MEDIA:I = 0x80

.field public static final GROUP_MICROPHONE:I = 0x800

.field public static final GROUP_NEARBY_DEVICE:I = 0x100

.field public static final GROUP_NONE:I = 0x1

.field public static final GROUP_NOTE:I = 0x100000

.field public static final GROUP_OTHER:I = 0x10000

.field public static final GROUP_PHONE:I = 0x4

.field public static final GROUP_PRIVACY:I = 0x2

.field public static final GROUP_RECORD:I = 0x80000

.field public static final GROUP_SENSITIVE_PRIVACY:I = 0x10

.field public static final GROUP_SETTINGS:I = 0x8

.field public static final GROUP_SETTINGS_RELATIVE:I = 0x40000

.field public static final GROUP_SMS:I = 0x2

.field public static final GROUP_SPORT_HEALTHY:I = 0x8000

.field public static final PERM_ID_ACTIVITY_RECOGNITION:J = 0x2000000000L

.field public static final PERM_ID_ADD_VOICEMAIL:J = 0x1000000000000L

.field public static final PERM_ID_AUDIO_RECORDER:J = 0x20000L

.field public static final PERM_ID_AUTOSTART:J = 0x4000L

.field public static final PERM_ID_BACKGROUND_LOCATION:J = 0x2000000000000000L

.field public static final PERM_ID_BACKGROUND_START_ACTIVITY:J = 0x100000000000000L

.field public static final PERM_ID_BLUR_LOCATION:J = 0x200000000L

.field public static final PERM_ID_BODY_SENSORS:J = 0x400000000000L

.field public static final PERM_ID_BOOT_COMPLETED:J = 0x8000000L

.field public static final PERM_ID_BT_CONNECTIVITY:J = 0x400000L

.field public static final PERM_ID_CALENDAR:J = 0x1000000L

.field public static final PERM_ID_CALLLOG:J = 0x10L

.field public static final PERM_ID_CALLPHONE:J = 0x2L

.field public static final PERM_ID_CLIPBOARD:J = 0x4000000000000000L

.field public static final PERM_ID_CONTACT:J = 0x8L

.field public static final PERM_ID_DEAMON_NOTIFICATION:J = 0x1000000000000000L

.field public static final PERM_ID_DISABLE_KEYGUARD:J = 0x800000L

.field public static final PERM_ID_EXTERNAL_STORAGE:J = 0x200000000000L

.field public static final PERM_ID_GALLERY_RESTRICTION:J = 0x1000000000L

.field public static final PERM_ID_GET_ACCOUNTS:J = 0x800000000000L

.field public static final PERM_ID_GET_INSTALLED_APPS:J = 0x200000000000000L

.field public static final PERM_ID_GET_TASKS:J = 0x40000000000000L

.field public static final PERM_ID_INSTALL_PACKAGE:J = 0x10000L

.field public static final PERM_ID_INSTALL_SHORTCUT:J = 0x10000000000000L

.field public static final PERM_ID_LIVE_WALL_PAPER:J = 0x4000000L

.field public static final PERM_ID_LOCATION:J = 0x20L

.field public static final PERM_ID_MEDIA_VOLUME:J = 0x8000000000L

.field public static final PERM_ID_MMSDB:J = 0x40000L

.field public static final PERM_ID_MOBILE_CONNECTIVITY:J = 0x100000L

.field public static final PERM_ID_NEARBY_DEVICES:J = 0x100000000L

.field public static final PERM_ID_NETWIFI:J = 0x100L

.field public static final PERM_ID_NFC:J = 0x8000000000000L

.field public static final PERM_ID_NOTIFICATION:J = 0x8000L

.field public static final PERM_ID_OPERATOR_GET_PHONE_NUMBER:J = 0x400000000L

.field public static final PERM_ID_PHONEINFO:J = 0x40L

.field public static final PERM_ID_PROCESS_OUTGOING_CALLS:J = 0x4000000000000L

.field public static final PERM_ID_READCALLLOG:J = 0x40000000L

.field public static final PERM_ID_READCONTACT:J = 0x80000000L

.field public static final PERM_ID_READMMS:J = 0x20000000L

.field public static final PERM_ID_READSMS:J = 0x10000000L

.field public static final PERM_ID_READ_CLIPBOARD:J = 0x4000000000L

.field public static final PERM_ID_READ_NOTE:J = 0x400L

.field public static final PERM_ID_READ_NOTIFICATION_SMS:J = 0x20000000000000L

.field public static final PERM_ID_READ_RECORD:J = 0x800L

.field public static final PERM_ID_REAL_READ_CALENDAR:J = 0x40000000000L

.field public static final PERM_ID_REAL_READ_CALL_LOG:J = 0x80000000000L

.field public static final PERM_ID_REAL_READ_CONTACTS:J = 0x20000000000L

.field public static final PERM_ID_REAL_READ_PHONE_STATE:J = 0x100000000000L

.field public static final PERM_ID_REAL_READ_SMS:J = 0x10000000000L

.field public static final PERM_ID_RECEIVE_SMS:J = 0x80L

.field public static final PERM_ID_ROOT:J = 0x200L

.field public static final PERM_ID_SENDMMS:J = 0x80000L

.field public static final PERM_ID_SENDSMS:J = 0x1L

.field public static final PERM_ID_SERVICE_FOREGROUND:J = 0x400000000000000L

.field public static final PERM_ID_SETTINGS:J = 0x2000L

.field public static final PERM_ID_SHAKE:J = 0x800000000000000L

.field public static final PERM_ID_SHOW_WHEN_LOCKED:J = 0x80000000000000L

.field public static final PERM_ID_SMSDB:J = 0x4L

.field public static final PERM_ID_SOCIALITY_RESTRICTION:J = 0x800000000L

.field public static final PERM_ID_SYSTEMALERT:J = 0x2000000L

.field public static final PERM_ID_UDEVICEID:J = 0x800000000000000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PERM_ID_USE_SIP:J = 0x2000000000000L

.field public static final PERM_ID_VIDEO_RECORDER:J = 0x1000L

.field public static final PERM_ID_WAKELOCK:J = 0x4000000L

.field public static final PERM_ID_WIFI_CONNECTIVITY:J = 0x200000L

.field public static final PERM_ID_WRITE_CALENDAR:J = 0x800000L

.field public static final TAG:Ljava/lang/String; = "PermissionManager"

.field public static final TYPE_MEDIA:I = 0x4

.field public static final TYPE_NONE:I = 0x1

.field public static final TYPE_OTHERS:I = 0x10

.field public static final TYPE_PHONE:I = 0x8

.field public static final TYPE_SENSITIVE:I = 0x2

.field public static final doNotUseVirtualPermission:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final hidePartVirtualPermission:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sActionToMode:[I

.field private static sEffectivePermissions:J

.field private static sInstance:Lcom/miui/permission/PermissionManager;

.field public static virtualMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/permission/PermissionManager;->sActionToMode:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/permission/PermissionManager;->doNotUseVirtualPermission:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/miui/permission/PermissionManager;->hidePartVirtualPermission:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/miui/permission/PermissionManager;->virtualMap:Ljava/util/Map;

    invoke-static {}, Lcom/miui/permission/support/util/MiuiCommonUtil;->overMiuiTwelve()Z

    move-result v2

    const-wide/32 v3, 0x40000000

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v2, v4, :cond_0

    sget-object v2, Lcom/miui/permission/PermissionManager;->virtualMap:Ljava/util/Map;

    const-wide/32 v4, 0x10000000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide v5, 0x10000000000L

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/miui/permission/PermissionManager;->virtualMap:Ljava/util/Map;

    const-wide v4, 0x80000000L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide v5, 0x20000000000L

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/miui/permission/PermissionManager;->virtualMap:Ljava/util/Map;

    const-wide/32 v4, 0x1000000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide v5, 0x40000000000L

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/miui/permission/PermissionManager;->virtualMap:Ljava/util/Map;

    const-wide v4, 0x80000000000L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/miui/permission/PermissionManager;->virtualMap:Ljava/util/Map;

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide v5, 0x100000000000L

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.miui.fmservice"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.android.incallui"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.miui.yellowpage"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/miui/permission/PermissionManager;->sEffectivePermissions:J

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x5
        0x0
        0x3
        0x3
        0x4
        0x0
        0x1
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permission/PermissionManager;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/permission/PermissionManager;IILjava/lang/String;IIZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/miui/permission/PermissionManager;->setModeNow(IILjava/lang/String;IIZ)V

    return-void
.end method

.method public static actionToMode(I)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/miui/permission/PermissionManager;->sActionToMode:[I

    const/4 v0, 0x3

    aget p0, p0, v0

    return p0

    :cond_0
    sget-object v0, Lcom/miui/permission/PermissionManager;->sActionToMode:[I

    aget p0, v0, p0

    return p0
.end method

.method public static calculatePermissionAction(JJJJJJJ)I
    .locals 18

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    const-wide/16 v4, 0x0

    const-wide/16 v12, 0x0

    invoke-static/range {v0 .. v17}, Lcom/miui/permission/PermissionManager;->calculatePermissionAction(JJJJJJJJJ)I

    move-result v0

    return v0
.end method

.method public static calculatePermissionAction(JJJJJJJJJ)I
    .locals 20

    invoke-static {}, Lcom/miui/permission/PermissionManager;->getDefaultAction()I

    move-result v0

    and-long v1, p10, p0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x6

    const/4 v15, 0x3

    if-eqz v1, :cond_0

    :goto_0
    move v0, v15

    goto :goto_4

    :cond_0
    and-long v7, p12, p0

    cmp-long v1, v7, v3

    if-eqz v1, :cond_1

    :goto_1
    move v0, v6

    goto :goto_4

    :cond_1
    and-long v7, p14, p0

    cmp-long v1, v7, v3

    if-eqz v1, :cond_2

    :goto_2
    move v0, v5

    goto :goto_4

    :cond_2
    and-long v7, p16, p0

    cmp-long v1, v7, v3

    if-eqz v1, :cond_3

    :goto_3
    move v0, v2

    goto :goto_4

    :cond_3
    and-long v7, p2, p0

    cmp-long v1, v7, v3

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    and-long v7, p4, p0

    cmp-long v1, v7, v3

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    and-long v6, p6, p0

    cmp-long v1, v6, v3

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    and-long v5, p8, p0

    cmp-long v1, v5, v3

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    :goto_4
    sget-object v1, Lcom/miui/permission/PermissionManager;->virtualMap:Ljava/util/Map;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/miui/permission/PermissionManager;->virtualMap:Ljava/util/Map;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move/from16 v19, v0

    move v0, v15

    move-wide/from16 v15, p14

    move-wide/from16 v17, p16

    invoke-static/range {v1 .. v18}, Lcom/miui/permission/PermissionManager;->calculatePermissionAction(JJJJJJJJJ)I

    move-result v1

    if-eq v1, v0, :cond_9

    const/4 v0, 0x7

    return v0

    :cond_8
    move/from16 v19, v0

    :cond_9
    return v19
.end method

.method public static calculatePermissionActionWithReal(JJJJJJJJJ)I
    .locals 10

    invoke-static {}, Lcom/miui/permission/PermissionManager;->getDefaultAction()I

    move-result v0

    and-long v1, p10, p0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x6

    const/4 v7, 0x3

    if-eqz v1, :cond_0

    :goto_0
    move v0, v7

    goto :goto_4

    :cond_0
    and-long v8, p12, p0

    cmp-long v1, v8, v3

    if-eqz v1, :cond_1

    :goto_1
    move v0, v6

    goto :goto_4

    :cond_1
    and-long v8, p14, p0

    cmp-long v1, v8, v3

    if-eqz v1, :cond_2

    :goto_2
    move v0, v5

    goto :goto_4

    :cond_2
    and-long v8, p16, p0

    cmp-long v1, v8, v3

    if-eqz v1, :cond_3

    :goto_3
    move v0, v2

    goto :goto_4

    :cond_3
    and-long v8, p2, p0

    cmp-long v1, v8, v3

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    and-long v7, p4, p0

    cmp-long v1, v7, v3

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    and-long v6, p6, p0

    cmp-long v1, v6, v3

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    and-long v5, p8, p0

    cmp-long v1, v5, v3

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    :goto_4
    return v0
.end method

.method public static final getDefaultAction()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;
    .locals 2

    const-class v0, Lcom/miui/permission/PermissionManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/permission/PermissionManager;->sInstance:Lcom/miui/permission/PermissionManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/permission/PermissionManager;

    invoke-direct {v1, p0}, Lcom/miui/permission/PermissionManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/permission/PermissionManager;->sInstance:Lcom/miui/permission/PermissionManager;

    :cond_0
    sget-object p0, Lcom/miui/permission/PermissionManager;->sInstance:Lcom/miui/permission/PermissionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isExistInClipboardPermissionList(Ljava/lang/Long;)Z
    .locals 1

    sget-object v0, Lcom/miui/permission/StaticGroup;->mClipboardPermissionList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isExistInMcallAndcontactpermissionlist(Ljava/lang/Long;)Z
    .locals 1

    sget-object v0, Lcom/miui/permission/StaticGroup;->mCallandContactPermissionList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isExistInMsmsAndmmspermissionlist(Ljava/lang/Long;)Z
    .locals 1

    sget-object v0, Lcom/miui/permission/StaticGroup;->mSMSandMMSPermissionList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isExistInStoragePermissionList(Ljava/lang/Long;)Z
    .locals 1

    sget-object v0, Lcom/miui/permission/StaticGroup;->mStoragePermissionList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private setModeNow(IILjava/lang/String;IIZ)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "extra_uid"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "extra_pkg"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra_mode"

    invoke-virtual {v0, p1, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "extra_flags"

    invoke-virtual {v0, p1, p5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "extra_support_runtime"

    invoke-virtual {v0, p1, p6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :try_start_0
    iget-object p1, p0, Lcom/miui/permission/PermissionManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object p2, Lcom/miui/permission/PermissionContract;->CONTENT_URI:Landroid/net/Uri;

    const/16 p3, 0x9

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setMode error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PermissionManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public calculatePermission(JJ)J
    .locals 2

    invoke-virtual {p0}, Lcom/miui/permission/PermissionManager;->getEffectivePermissions()J

    move-result-wide v0

    xor-long/2addr p3, p1

    and-long/2addr p1, p3

    and-long/2addr p1, v0

    return-wide p1
.end method

.method public calculatePermissionAction(JJJJJJJJ)Ljava/util/HashMap;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJJJJJ)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v17, p13

    move-wide/from16 v19, p15

    const-wide/16 v5, 0x0

    const-wide/16 v15, 0x0

    invoke-virtual/range {v0 .. v20}, Lcom/miui/permission/PermissionManager;->calculatePermissionAction(JJJJJJJJJJ)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public calculatePermissionAction(JJJJJJJJJJ)Ljava/util/HashMap;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJJJJJJJ)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p11

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/permission/PermissionManager;->calculatePermission(JJ)J

    move-result-wide v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x40

    if-ge v4, v5, :cond_1

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    and-long v7, v1, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    move-wide v7, v5

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move-wide/from16 v15, p9

    move-wide/from16 v17, p13

    move-wide/from16 v19, p15

    move-wide/from16 v21, p17

    move-wide/from16 v23, p19

    invoke-static/range {v7 .. v24}, Lcom/miui/permission/PermissionManager;->calculatePermissionAction(JJJJJJJJJ)I

    move-result v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public calculatePermissionActionWithReal(JJJJJJJJJJ)Ljava/util/HashMap;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJJJJJJJ)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p11

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/permission/PermissionManager;->calculatePermission(JJ)J

    move-result-wide v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x40

    if-ge v4, v5, :cond_1

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    and-long v7, v1, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    move-wide v7, v5

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move-wide/from16 v15, p9

    move-wide/from16 v17, p13

    move-wide/from16 v19, p15

    move-wide/from16 v21, p17

    move-wide/from16 v23, p19

    invoke-static/range {v7 .. v24}, Lcom/miui/permission/PermissionManager;->calculatePermissionActionWithReal(JJJJJJJJJ)I

    move-result v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public calculatePermissionCount(JJ)I
    .locals 4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/permission/PermissionManager;->calculatePermission(JJ)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->bitCount(J)I

    move-result p3

    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v0, 0x0

    const/16 v2, 0x1d

    if-lt p4, v2, :cond_0

    const-wide/16 v2, 0x20

    and-long/2addr v2, p1

    cmp-long p4, v2, v0

    if-eqz p4, :cond_0

    const-wide/high16 v2, 0x2000000000000000L

    and-long/2addr v2, p1

    cmp-long p4, v2, v0

    if-eqz p4, :cond_0

    add-int/lit8 p3, p3, -0x1

    :cond_0
    invoke-static {}, Lcom/miui/permission/support/util/MiuiCommonUtil;->getMiuiVersion()I

    move-result p4

    const/16 v2, 0xb

    if-lt p4, v2, :cond_2

    const-wide v2, 0x1000000000L

    and-long/2addr v2, p1

    cmp-long p4, v2, v0

    if-eqz p4, :cond_1

    add-int/lit8 p3, p3, -0x1

    :cond_1
    const-wide v2, 0x800000000L

    and-long/2addr p1, v2

    cmp-long p1, p1, v0

    if-eqz p1, :cond_2

    add-int/lit8 p3, p3, -0x1

    :cond_2
    return p3
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/miui/permission/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/permission/PermissionManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/permission/PermissionContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "extra_data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllPermissions(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/miui/permission/PermissionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/permission/PermissionManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/permission/PermissionContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "extra_data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getEffectivePermissions()J
    .locals 4

    sget-wide v0, Lcom/miui/permission/PermissionManager;->sEffectivePermissions:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/permission/PermissionManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/permission/PermissionContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "extra_data"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/miui/permission/PermissionManager;->sEffectivePermissions:J

    :cond_0
    sget-wide v0, Lcom/miui/permission/PermissionManager;->sEffectivePermissions:J

    return-wide v0
.end method

.method public getPermissionForId(J)Lcom/miui/permission/PermissionInfo;
    .locals 3

    iget-object v0, p0, Lcom/miui/permission/PermissionManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/permission/PermissionContract;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p2, "extra_data"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/miui/permission/PermissionInfo;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public isAppBehaviorRecordEnable()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/permission/PermissionManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "key_app_behavior_record_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public setAppBehaviorRecordEnable(Z)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/permission/PermissionManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/permission/PermissionContract;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public varargs setApplicationPermission(JIIILandroid/os/Bundle;[Ljava/lang/String;)V
    .locals 10

    new-instance v9, Lcom/miui/permission/PermissionManager$2;

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/miui/permission/PermissionManager$2;-><init>(Lcom/miui/permission/PermissionManager;JIIILandroid/os/Bundle;[Ljava/lang/String;)V

    invoke-static {v9}, Lcom/miui/permission/support/util/ConcurrentUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs setApplicationPermission(JIII[Ljava/lang/String;)V
    .locals 9

    new-instance v8, Lcom/miui/permission/PermissionManager$1;

    move-object v0, v8

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/miui/permission/PermissionManager$1;-><init>(Lcom/miui/permission/PermissionManager;JIII[Ljava/lang/String;)V

    invoke-static {v8}, Lcom/miui/permission/support/util/ConcurrentUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs setApplicationPermission(JII[Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/miui/permission/PermissionManager;->setApplicationPermission(JIII[Ljava/lang/String;)V

    return-void
.end method

.method public varargs setApplicationPermission(JI[Ljava/lang/String;)V
    .locals 7

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/miui/permission/PermissionManager;->setApplicationPermission(JIII[Ljava/lang/String;)V

    return-void
.end method

.method public varargs setApplicationPermissionNow(JIIILandroid/os/Bundle;[Ljava/lang/String;)V
    .locals 1

    if-nez p6, :cond_0

    new-instance p6, Landroid/os/Bundle;

    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v0, "extra_permission"

    invoke-virtual {p6, v0, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "extra_action"

    invoke-virtual {p6, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "extra_package"

    invoke-virtual {p6, p1, p7}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "extra_flags"

    invoke-virtual {p6, p1, p5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "extra_user_id"

    invoke-virtual {p6, p1, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object p1, p0, Lcom/miui/permission/PermissionManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object p2, Lcom/miui/permission/PermissionContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 p3, 0x6

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4, p6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public varargs setApplicationPermissionNow(JIII[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_permission"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "extra_action"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "extra_package"

    invoke-virtual {v0, p1, p6}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "extra_flags"

    invoke-virtual {v0, p1, p5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "extra_user_id"

    invoke-virtual {v0, p1, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object p1, p0, Lcom/miui/permission/PermissionManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object p2, Lcom/miui/permission/PermissionContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 p3, 0x6

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public varargs setApplicationPermissionNow(JII[Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/miui/permission/PermissionManager;->setApplicationPermissionNow(JIII[Ljava/lang/String;)V

    return-void
.end method

.method public varargs setApplicationPermissionNow(JI[Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/permission/PermissionManager;->setApplicationPermissionNow(JII[Ljava/lang/String;)V

    return-void
.end method

.method public setMode(IILjava/lang/String;IIZ)V
    .locals 9

    new-instance v8, Lcom/miui/permission/PermissionManager$3;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/miui/permission/PermissionManager$3;-><init>(Lcom/miui/permission/PermissionManager;IILjava/lang/String;IIZ)V

    invoke-static {v8}, Lcom/miui/permission/support/util/ConcurrentUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMode(IILjava/lang/String;IZ)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/miui/permission/PermissionManager;->setMode(IILjava/lang/String;IIZ)V

    return-void
.end method

.method public setModeNow(IILjava/lang/String;IZ)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/miui/permission/PermissionManager;->setModeNow(IILjava/lang/String;IIZ)V

    return-void
.end method

.method public supportAlwaysAllow(JLjava/lang/String;)Z
    .locals 8

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x1000

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/permission/support/util/MiuiCommonUtil;->overMiuiTwelve()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-wide/32 v2, 0x20000

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastR()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-wide v2, 0x4000000000L

    cmp-long v0, p1, v2

    if-nez v0, :cond_3

    invoke-static {}, Lcom/miui/permission/support/util/MiuiCommonUtil;->overMiui15()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return v1

    :cond_3
    const-wide/16 v2, 0x20

    cmp-long v0, p1, v2

    const-wide v2, 0x400000000000L

    const/4 v4, 0x1

    if-nez v0, :cond_4

    invoke-static {}, Lcom/miui/permission/support/util/MiuiCommonUtil;->overMiuiTwelve()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastQ()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    cmp-long v5, p1, v2

    if-nez v5, :cond_c

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastT()Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_5
    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/miui/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x1000

    invoke-virtual {v6, p3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    if-nez v5, :cond_6

    return v4

    :cond_6
    if-nez v0, :cond_9

    iget-object p1, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p2, 0x1d

    if-lt p1, p2, :cond_7

    iget-object p1, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string p2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p1, p2}, Lcom/miui/permission/PermissionManager$ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    move v1, v4

    :cond_8
    return v1

    :cond_9
    cmp-long p1, p1, v2

    if-nez p1, :cond_c

    iget-object p1, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p2, 0x21

    if-lt p1, p2, :cond_a

    iget-object p1, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string p2, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-static {p1, p2}, Lcom/miui/permission/PermissionManager$ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    move v1, v4

    :cond_b
    return v1

    :cond_c
    return v4
.end method

.method public supportCloseBehaviorRecord()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.lbe.security.miui"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "supportCloseBehaviorRecord"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_1
    :goto_1
    return v1
.end method

.method public updateData()V
    .locals 4

    iget-object v0, p0, Lcom/miui/permission/PermissionManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/permission/PermissionContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
