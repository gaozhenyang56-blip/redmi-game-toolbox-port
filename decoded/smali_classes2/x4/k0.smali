.class public Lx4/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field public static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lx4/k0;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lx4/k0;->a:Ljava/lang/String;

    invoke-static {}, Lx4/k0;->l()Z

    move-result v0

    sput-boolean v0, Lx4/k0;->b:Z

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 9

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_4

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    const/16 v1, 0x2e

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    sub-int/2addr v5, v4

    aget-object v1, v1, v5

    move v4, v3

    move v5, v4

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v7

    const/16 v8, 0x30

    if-lt v7, v8, :cond_3

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v6

    const/16 v7, 0x39

    if-gt v6, v7, :cond_3

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    sub-int/2addr v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "FunctionUtils"

    const-string v3, "getMiuiVersion error"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-object v2
.end method

.method public static b()Z
    .locals 2

    const-string v0, "ro.radio.noril"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static c()Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method public static d()Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method public static e()Z
    .locals 3

    :try_start_0
    const-class v0, Lmiui/os/Build;

    const-string v1, "IS_MIUI_LITE_VERSION"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "FunctionUtils"

    const-string v1, "reflect failed when get is low memory device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "#Intent;action=com.miui.powercenter.SUPERPOWER_SAVE_NEW;end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lpg/i;->F(Landroid/content/Context;)Z

    move-result v2

    goto/16 :goto_3

    :cond_0
    const-string v1, "#Intent;action=miui.intent.action.KIDMODE_ENTRANCE;end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcf/a;->c(Landroid/content/Context;)Z

    move-result v2

    goto/16 :goto_3

    :cond_1
    const-string v1, "#Intent;action=miui.intent.action.PRIVATE_SPACE_SETTING;end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lx4/k0;->n()Z

    move-result v2

    goto/16 :goto_3

    :cond_2
    const-string v1, "#Intent;action=miui.intent.action.XSPACE_SETTING;end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lx4/k0;->k()Z

    move-result v2

    goto/16 :goto_3

    :cond_3
    const-string v1, "#Intent;action=com.miui.gamebooster.action.ACCESS_MAINACTIVITY;S.jump_target=gamebox;end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lk6/b;->b(Landroid/content/Context;)Z

    move-result v2

    goto/16 :goto_3

    :cond_4
    const-string v1, "#Intent;action=miui.intent.action.QUICK_REPLY_SETTINGS;end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    invoke-static {}, Lf7/b;->n()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lk6/c;->a()Z

    move-result p0

    if-eqz p0, :cond_5

    goto/16 :goto_3

    :cond_5
    move v2, v3

    goto/16 :goto_3

    :cond_6
    const-string v1, "#Intent;component=com.miui.cloudservice/com.miui.cloudservice.ui.MiCloudFindDeviceStatusActivity;end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "#Intent;action=miui.powercenter.intent.action.BOOT_SHUTDOWN_ONTIME;end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "#Intent;component=com.android.phone/com.android.phone.settings.CallRecordSetting;end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_1

    :cond_7
    const-string v1, "#Intent;action=com.miui.gamebooster.action.VIDEOBOX_SETTINGS_ALL;end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lj8/s;->f()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lc5/a;->a()Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_3

    :cond_8
    const-string v1, "#Intent;action=miui.intent.action.PRIVACY_SETTINGS;end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lx4/k0;->m()Z

    move-result v2

    goto/16 :goto_3

    :cond_9
    const-string v1, "#Intent;action=miui.intent.action.XMAN_MAIN;end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-boolean p0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    goto/16 :goto_2

    :cond_a
    const-string v1, "#Intent;action=miui.intent.action.ZMAN_SECURITY_SHARE_SETTING;end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-boolean v2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    goto/16 :goto_3

    :cond_b
    const-string v1, "#Intent;action=com.miui.cleaner.intent.action.GARBAGE_POWER_ACCELERATION;S.enterWay=sc;end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Ldb/g;->g()Z

    move-result v2

    goto/16 :goto_3

    :cond_c
    const-string v1, "#Intent;action=com.miui.contentextension.action.TAPLUS_SETTINGS;end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-boolean p0, Lmiui/os/Build;->IS_TABLET:Z

    goto/16 :goto_2

    :cond_d
    const-string v1, "#Intent;action=miui.intent.action.APP_PREDICT_GUIDE_DIALOG_ONCE;package=com.miui.securitycenter;end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Ljg/a;->j()Z

    move-result v2

    goto/16 :goto_3

    :cond_e
    const-string v1, "#Intent;action=miui.intent.action.APP_PREDICT_GUIDE_DIALOG_ALWAYS;package=com.miui.securitycenter;end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Ljg/a;->g()Z

    move-result v2

    goto/16 :goto_3

    :cond_f
    const-string v1, "#Intent;action=miui.intent.action.SIM_LOCK_CHOOSE;end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/miui/simlock/c;->l()Z

    move-result v2

    goto/16 :goto_3

    :cond_10
    const-string v1, "#Intent;action=miui.intent.action.green_guard_activity_new;end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Lx4/z1;->r()Z

    move-result p0

    if-eqz p0, :cond_5

    sget-boolean p0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p0, :cond_5

    goto/16 :goto_3

    :cond_11
    const-string v1, "#Intent;component=com.android.settings/.SubSettings;S.%3Asettings%3Ashow_fragment=com.android.settings.emergency.ui.SosSettings;end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isVoiceCapable()Z

    move-result v2

    goto/16 :goto_3

    :cond_12
    const-string v1, "#Intent;action=miui.intent.action.HB_MAIN_ACTIVITY;end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-boolean p0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p0, :cond_5

    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p0, :cond_5

    goto/16 :goto_3

    :cond_13
    const-string v1, "#Intent;action=miui.intent.action.SET_FIREWALL;end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    :goto_0
    invoke-static {}, Lx4/k0;->b()Z

    move-result v2

    goto/16 :goto_3

    :cond_14
    const-string v1, "#Intent;action=miui.intent.action.NETWORKASSISTANT_ENTRANCE;end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_0

    :cond_15
    const-string v1, "#Intent;action=miui.intent.action.MANAGE_PRIVACY_APPS;end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {}, Lx4/z1;->y()I

    move-result p0

    invoke-static {v0, p0}, Lcom/miui/appmanager/AppManageUtils;->h0(Landroid/content/Context;I)Z

    move-result v2

    goto :goto_3

    :cond_16
    const-string v0, "#Intent;action=com.miui.dock.ACTION_DOCK_SETTINGS;end"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lc5/a;->a()Z

    move-result v2

    goto :goto_3

    :cond_17
    const-string v0, "#Intent;action=com.miui.gamebooster.action.ACCESS_FRONT_ASSISTANT;end"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p0

    invoke-virtual {p0}, Lw5/f;->f0()Z

    move-result v2

    goto :goto_3

    :cond_18
    const-string v0, "#Intent;action=miui.intent.action.GARBAGE_APP_RESET;end"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lx4/k0;->j()Z

    move-result v2

    goto :goto_3

    :cond_19
    const-string v0, "#Intent;action=miui.intent.action.EARTHQUAKE_WARNING_MAIN_ID;end"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p0, :cond_5

    const-string p0, "ID"

    invoke-static {p0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_1a
    const-string v0, "#Intent;action=miui.intent.action.PRIVACY_INPUT_MODE_ACTIVITY;end"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    sget-boolean v2, Lcom/miui/permcenter/o;->z:Z

    goto :goto_3

    :cond_1b
    :goto_1
    invoke-static {}, Lx4/z1;->v()Z

    move-result p0

    :goto_2
    xor-int/2addr v2, p0

    :cond_1c
    :goto_3
    return v2
.end method

.method public static g()Z
    .locals 2

    sget v0, Lgl/a;->B:I

    sget v1, Lgl/a;->E:I

    invoke-static {v0, v1}, Lgl/a;->l(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static h()Z
    .locals 1

    invoke-static {}, Lx4/k0;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lgl/a;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static i()Z
    .locals 1

    invoke-static {}, Lx4/t;->r()Z

    move-result v0

    return v0
.end method

.method public static j()Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static k()Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method private static l()Z
    .locals 4

    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Ldb/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.miui.has_security_keyboard"

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    const-string v3, "com.miui.securityinputmethod"

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const-string v0, "MiuiInputSettings"

    const-string v2, "com.miui.securityinputmethod not installed"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method public static m()Z
    .locals 2

    invoke-static {}, Lx4/t;->h()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static n()Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method
