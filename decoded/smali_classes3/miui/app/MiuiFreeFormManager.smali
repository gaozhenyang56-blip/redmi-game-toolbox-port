.class public Lmiui/app/MiuiFreeFormManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    }
.end annotation


# static fields
.field public static final ACTION_FREEFORM_END_RESIZE:I = 0x7

.field public static final ACTION_FREEFORM_PINED:I = 0x9

.field public static final ACTION_FREEFORM_START_RESIZE:I = 0x6

.field public static final ACTION_FREEFORM_TO_FULLSCREEN:I = 0x3

.field public static final ACTION_FREEFORM_TO_MINIFREEFORM:I = 0x2

.field public static final ACTION_FREEFORM_UNPINED:I = 0xb

.field public static final ACTION_FREEFORM_UPDATE_CAPTION_VISIBILITY:I = 0x8

.field public static final ACTION_FULLSCREEN_TO_FREEFORM:I = 0x0

.field public static final ACTION_FULLSCREEN_TO_MINIFREEFORM:I = 0x1

.field public static final ACTION_MINIFREEFORM_PINED:I = 0xa

.field public static final ACTION_MINIFREEFORM_TO_FREEFORM:I = 0x4

.field public static final ACTION_MINIFREEFORM_TO_FULLSCREEN:I = 0x5

.field public static final ACTION_MINI_FREEFORM_UNPINED:I = 0xc

.field public static final ACTION_REMOVE_FLOATING_PIN_WINDOW:I = 0xd

.field public static final BACKGROUND_PIN:I = 0x2

.field public static final FOREGROUND_PIN:I = 0x1

.field public static final GESTURE_WINDOWING_MODE_FREEFORM:I = 0x0

.field public static final GESTURE_WINDOWING_MODE_SMALL_FREEFORM:I = 0x1

.field public static final GESTURE_WINDOWING_MODE_UNDEFINED:I = -0x1

.field private static final IMiuiFreeFormManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lmiui/app/IMiuiFreeFormManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIDEBAR_TIP_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiuiFreeFormManager"

.field public static final UNPIN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/app/MiuiFreeFormManager$1;

    invoke-direct {v0}, Lmiui/app/MiuiFreeFormManager$1;-><init>()V

    sput-object v0, Lmiui/app/MiuiFreeFormManager;->IMiuiFreeFormManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getActivityTaskManagerService()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static actionToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "ACTION_REMOVE_FLOATING_PIN_WINDOW"

    return-object p0

    :pswitch_1
    const-string p0, "ACTION_MINI_FREEFORM_UNPINED"

    return-object p0

    :pswitch_2
    const-string p0, "ACTION_FREEFORM_UNPINED"

    return-object p0

    :pswitch_3
    const-string p0, "ACTION_MINIFREEFORM_PINED"

    return-object p0

    :pswitch_4
    const-string p0, "ACTION_FREEFORM_PINED"

    return-object p0

    :pswitch_5
    const-string p0, "ACTION_FREEFORM_UPDATE_CAPTION_VISIBILITY"

    return-object p0

    :pswitch_6
    const-string p0, "ACTION_FREEFORM_END_RESIZE"

    return-object p0

    :pswitch_7
    const-string p0, "ACTION_FREEFORM_START_RESIZE"

    return-object p0

    :pswitch_8
    const-string p0, "ACTION_MINIFREEFORM_TO_FULLSCREEN"

    return-object p0

    :pswitch_9
    const-string p0, "ACTION_MINIFREEFORM_TO_FREEFORM"

    return-object p0

    :pswitch_a
    const-string p0, "ACTION_FREEFORM_TO_FULLSCREEN"

    return-object p0

    :pswitch_b
    const-string p0, "ACTION_FREEFORM_TO_MINIFREEFORM"

    return-object p0

    :pswitch_c
    const-string p0, "ACTION_FULLSCREEN_TO_MINIFREEFORM"

    return-object p0

    :pswitch_d
    const-string p0, "ACTION_FULLSCREEN_TO_FREEFORM"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getActivityTaskManagerService()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityTaskManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static getAllFreeFormStackInfosOnDisplay(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAllPinedFreeFormStackInfosOnDisplay(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFreeFormStackInfoByActivity(Landroid/app/Activity;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFreeFormStackInfoByStackId(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFreeFormStackInfoByView(Landroid/view/View;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMaxMiuiFreeFormStackCountForFlashBack(Ljava/lang/String;Z)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static getMiuiFreeformStackPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "freeform_package_name"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMiuiFreeformStackShowState(Landroid/content/Context;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public static getMiuiFreeformVersion()I
    .locals 1

    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method private static getService()Lmiui/app/IMiuiFreeFormManager;
    .locals 1

    :try_start_0
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->IMiuiFreeFormManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/IMiuiFreeFormManager;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getShowGuideSideBar()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static hidePinFloatingWindow(I)V
    .locals 0

    return-void
.end method

.method public static isSupportPin()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static registerFreeformCallback(Lmiui/app/IFreeformCallback;)V
    .locals 0

    return-void
.end method

.method public static removeFreeFormTipView(I)V
    .locals 0

    return-void
.end method

.method public static showFreeFormTipView(IIII)V
    .locals 0

    return-void
.end method

.method public static unPinFloatingWindow(Landroid/graphics/Rect;IFFZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static unregisterFreeformCallback(Lmiui/app/IFreeformCallback;)V
    .locals 0

    return-void
.end method

.method public static updatePinFloatingWindowPos(Landroid/graphics/Rect;I)V
    .locals 0

    return-void
.end method
