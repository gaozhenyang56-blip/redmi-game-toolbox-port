.class public Lde/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lde/j;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x14
        0xa
        -0x1
    .end array-data
.end method

.method private static A(Landroid/content/Context;)V
    .locals 1

    const-string v0, "performance_mode"

    invoke-static {p0, v0}, Lde/j;->B(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static B(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Ldb/c;->d()Z

    move-result v0

    if-nez v0, :cond_8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object v0

    invoke-virtual {v0}, Lde/i;->I()I

    move-result v0

    if-ltz v0, :cond_8

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-static {p1, v0}, Lde/j;->u(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    const-string v2, "text_bitmap"

    const-string v3, "save_mode"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    const p1, 0x7f1212f8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_3
    const-string v3, "performance_mode"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lpg/i;->H()Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f12109a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lpg/i;->G()Z

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SystemUI is Support textAndVideo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PowerNoticeUtils"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_4

    new-instance v2, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;

    invoke-direct {v2}, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;-><init>()V

    new-instance v3, Lcom/miui/powercenter/bean/StatusBarGuideParams$TextParams;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, p1, v5}, Lcom/miui/powercenter/bean/StatusBarGuideParams$TextParams;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v2, v3}, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;->setLeftText(Lcom/miui/powercenter/bean/StatusBarGuideParams$TextParams;)Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;

    move-result-object v2

    new-instance v3, Lcom/miui/powercenter/bean/StatusBarGuideParams$IconParams;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android.resource://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f11000b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/miui/powercenter/bean/StatusBarGuideParams$IconParams;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;->setRightIcon(Lcom/miui/powercenter/bean/StatusBarGuideParams$IconParams;)Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;->create()Lcom/miui/powercenter/bean/StatusBarGuideParams;

    move-result-object v2

    const-string v3, "text_video"

    goto :goto_2

    :cond_4
    const v0, 0x7f080999

    goto :goto_1

    :cond_5
    const p1, 0x7f12109b

    goto/16 :goto_0

    :cond_6
    const-string p1, ""

    :goto_1
    move-object v3, v2

    move-object v2, v4

    :goto_2
    if-nez v2, :cond_7

    new-instance v2, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;

    invoke-direct {v2}, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;-><init>()V

    new-instance v5, Lcom/miui/powercenter/bean/StatusBarGuideParams$TextParams;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v5, p1, v1}, Lcom/miui/powercenter/bean/StatusBarGuideParams$TextParams;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v2, v5}, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;->setLeftText(Lcom/miui/powercenter/bean/StatusBarGuideParams$TextParams;)Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;

    move-result-object p1

    new-instance v1, Lcom/miui/powercenter/bean/StatusBarGuideParams$IconParams;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/miui/powercenter/bean/StatusBarGuideParams$IconParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;->setRightIcon(Lcom/miui/powercenter/bean/StatusBarGuideParams$IconParams;)Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;->create()Lcom/miui/powercenter/bean/StatusBarGuideParams;

    move-result-object v2

    :cond_7
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "strong_toast_category"

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "status_bar_strong_toast"

    const-string v1, "show_custom_strong_toast"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "param"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "strong_toast_action"

    invoke-static {p0, v0, p1}, Lde/j;->D(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    :goto_3
    return-void
.end method

.method private static C(Landroid/content/Context;)V
    .locals 1

    const-string v0, "save_mode"

    invoke-static {p0, v0}, Lde/j;->B(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static D(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x21
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "params :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerNoticeUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setStatus"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Landroid/os/Bundle;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p1, v2, v7

    aput-object p2, v2, v8

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static E(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "EXTREME_POWER_MODE_ENABLE"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static F(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "POWER_SAVE_MODE_OPEN"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static G(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "POWER_SAVE_GUIDE_ENABLE"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static H(Landroid/net/Uri;)V
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_sounds_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0, p0, v2}, Lde/j;->I(Landroid/content/Context;Landroid/net/Uri;I)V

    :cond_0
    return-void
.end method

.method public static I(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 1

    new-instance v0, Lde/j$a;

    invoke-direct {v0, p0, p1, p2}, Lde/j$a;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    invoke-static {v0}, Lde/t;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static J(I)I
    .locals 2

    sget-object v0, Lde/j;->a:[I

    const/4 v1, 0x1

    aget v1, v0, v1

    if-ge p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    aget v1, v0, p0

    :goto_0
    return v1
.end method

.method public static K(Landroid/content/Context;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f1210cd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/powercenter/charge/ChargeFeatureActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "super_power_setting_enterway"

    const-string v4, "enter_superpower_notification"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v3, 0x0

    const/high16 v4, 0x4000000

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Lw4/b$b;

    invoke-direct {v3, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120379

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.miui.powercenter.high"

    invoke-virtual {v0, v5, v4}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v0

    const v4, 0x7f0807ed

    invoke-virtual {v0, v4}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v0

    sget-boolean v5, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v5, :cond_1

    const v4, 0x7f0807ee

    :cond_1
    invoke-virtual {v0, v4}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v0

    const v4, 0x7f1210ce

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v1}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lw4/b$b;->d(Z)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v2}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object p0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lw4/b$b;->i(Z)Lw4/b$b;

    invoke-virtual {v3}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    invoke-static {}, Lhd/a;->j0()V

    const-string p0, "PowerNoticeUtils"

    const-string v0, "show wireless charge  notification "

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static L(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTREME_POWER_SAVE_MODE_OPEN"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "IS_NOTIFY"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "SOURCE"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://com.miui.powerkeeper.configure"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "changeExtremePowerMode"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PowerNoticeUtils"

    const-string p2, "setExtremeSaveMode error"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static M(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "POWER_SAVE_GUIDE_ENABLE"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static N(Landroid/content/Context;)V
    .locals 8

    const v0, 0x7f1212a1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v2, 0x7f0807d0

    if-eqz v1, :cond_0

    const v1, 0x7f0807d1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    new-instance v3, Lw4/b$b;

    invoke-direct {v3, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120fd9

    invoke-virtual {v3, v4}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f12037a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.miui.powercenter.low"

    invoke-virtual {v5, v7, v6}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v5

    invoke-virtual {v5, v0}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object v0

    const v1, 0x7f120fd8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v4, 0x4000000

    invoke-static {p0, v2, v0, v4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v3, v0}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/powerui/PowerReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.miui.powercenter.powerui_18W_REVERSE_CHARGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v3, p0}, Lw4/b$b;->b(Landroid/app/PendingIntent;)Lw4/b$b;

    invoke-virtual {v3}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    return-void
.end method

.method public static O(Landroid/content/Context;)V
    .locals 10

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/nightcharge/ChargerProtectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v3, 0x7f080899

    if-eqz v2, :cond_0

    const v2, 0x7f08089a

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    new-instance v4, Lw4/b$b;

    invoke-direct {v4, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v5

    const-wide v6, 0x3fe99999a0000000L    # 0.800000011920929

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f121052

    invoke-virtual {v4, v6}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f12037a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.miui.powercenter.low"

    invoke-virtual {v7, v9, v8}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v7

    invoke-virtual {v7, v3}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object v0

    const v2, 0x7f121055

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v1

    invoke-virtual {p0, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lw4/b$b;->l(I)Lw4/b$b;

    invoke-virtual {v4}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    return-void
.end method

.method public static P(Landroid/content/Context;)V
    .locals 8

    invoke-static {}, Lde/j;->v()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v2, 0x7f080dfa

    if-eqz v1, :cond_0

    const v1, 0x7f08089a

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    new-instance v3, Lw4/b$b;

    invoke-direct {v3, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1210d3

    invoke-virtual {v3, v4}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120379

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.miui.powercenter.high"

    invoke-virtual {v5, v7, v6}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v5

    const v6, 0x7f121000

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object v5

    invoke-virtual {v5, v0}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object v5

    invoke-virtual {v5, v0}, Lw4/b$b;->b(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    const v1, 0x7f1210d2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lw4/b$b;->i(Z)Lw4/b$b;

    invoke-virtual {v3}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    return-void
.end method

.method public static Q(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f130455

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1210c7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "35%"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1210c6

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1204d8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12108f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    new-instance v0, Lde/j$c;

    invoke-direct {v0, p0}, Lde/j$c;-><init>(Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public static R(Landroid/content/Context;)V
    .locals 7

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/powerui/PowerReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.miui.powercenter.CAR_HIGH_TEMP_PROTECT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Lw4/b$b;

    invoke-direct {v1, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1210c7

    invoke-virtual {v1, v3}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120379

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.miui.powercenter.high"

    invoke-virtual {v4, v6, v5}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v4

    invoke-virtual {v4, v0}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object v0

    const v4, 0x7f08086a

    invoke-virtual {v0, v4}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    const v3, 0x7f1210c6

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "35%"

    aput-object v6, v5, v2

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v4}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v4}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v4}, Lw4/b$b;->t(Z)Lw4/b$b;

    invoke-virtual {v1}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    return-void
.end method

.method public static S(Landroid/content/Context;)V
    .locals 6

    new-instance v0, Lw4/b$b;

    invoke-direct {v0, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lw4/b$b;->l(I)Lw4/b$b;

    :cond_0
    invoke-static {p0}, Lme/q;->v(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "charge_usbwet"

    invoke-static {p0, v1}, Lod/c;->h(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/powercenter/powerui/PowerPortDampActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f1212ad

    invoke-virtual {v0, v2}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120379

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.miui.powercenter.high"

    invoke-virtual {v3, v5, v4}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v3

    const v4, 0x7f0808a2

    invoke-virtual {v3, v4}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v3

    sget-boolean v5, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v5, :cond_2

    const v4, 0x7f0808a3

    :cond_2
    invoke-virtual {v3, v4}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v3

    invoke-virtual {v3, v1}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object v1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v1

    const v2, 0x7f1212ac

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v1}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v1}, Lw4/b$b;->t(Z)Lw4/b$b;

    invoke-virtual {v0}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    return-void
.end method

.method public static T(Landroid/content/Context;I)V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/PowerMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "enter_homepage_way"

    const-string v2, "LowBatteryNotification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v2, Lw4/b$b;

    invoke-direct {v2, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const v3, 0x7f120eed

    invoke-virtual {v2, v3}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f12037a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.miui.powercenter.low"

    invoke-virtual {v4, v6, v5}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v4

    const v5, 0x7f08089f

    invoke-virtual {v4, v5}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v4

    sget-boolean v6, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v6, :cond_0

    const v5, 0x7f0808a0

    :cond_0
    invoke-virtual {v4, v5}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v4

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lw4/b$b;->i(Z)Lw4/b$b;

    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    const p1, 0x7f120eee

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120ef0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    int-to-float p1, p1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr p1, v4

    float-to-double v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v2, p0}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    invoke-virtual {v2}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    invoke-static {}, Lhd/a;->o0()V

    return-void
.end method

.method public static U(Landroid/content/Context;)V
    .locals 9

    const v0, 0x7f120452

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v2, 0x7f08082b

    if-eqz v1, :cond_0

    const v1, 0x7f08089a

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    new-instance v3, Lw4/b$b;

    invoke-direct {v3, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const v4, 0x7f12104f

    invoke-virtual {v3, v4}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120379

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.miui.powercenter.high"

    invoke-virtual {v5, v7, v6}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v5

    invoke-virtual {v5, v0}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100094

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v5, v8

    invoke-virtual {v1, v2, v6, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lw4/b$b;->t(Z)Lw4/b$b;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/powerui/PowerReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.miui.powercenter.powerui.CANCEL_EXTREME_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-static {p0, v8, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v3, p0}, Lw4/b$b;->b(Landroid/app/PendingIntent;)Lw4/b$b;

    invoke-virtual {v3}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    return-void
.end method

.method public static V(Landroid/content/Context;)V
    .locals 13

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "reminder_type"

    const-string v2, "OUT_OF_POSITION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p0}, Lx4/g;->d(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v4, 0x7f12108f

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v6, 0x7f080899

    if-eqz v5, :cond_0

    const v5, 0x7f08089a

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    new-instance v7, Lw4/b$b;

    invoke-direct {v7, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const v8, 0x7f1210cc

    const v9, 0x7f12109f

    if-eqz v1, :cond_1

    move v10, v8

    goto :goto_1

    :cond_1
    move v10, v9

    :goto_1
    invoke-virtual {v7, v10}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v10

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f120379

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.miui.powercenter.high"

    invoke-virtual {v10, v12, v11}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v10

    invoke-virtual {v10, v4}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object v4

    invoke-virtual {v4, v6}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v4

    invoke-virtual {v4, v5}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v4

    invoke-virtual {v4, v0}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object v0

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v8, v9

    :goto_2
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    if-eqz v1, :cond_3

    const v1, 0x7f1210cb

    goto :goto_3

    :cond_3
    const v1, 0x7f12109e

    :goto_3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw4/b$b;->t(Z)Lw4/b$b;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/powerui/PowerReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.miui.powercenter.CANCEL_WIRELESS_CHARGE_NOTIFI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v7, p0}, Lw4/b$b;->b(Landroid/app/PendingIntent;)Lw4/b$b;

    invoke-virtual {v7}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    return-void
.end method

.method public static W(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f130455

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f121063

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121061

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1204d8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lde/j$b;

    invoke-direct {v1}, Lde/j$b;-><init>()V

    invoke-virtual {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public static X(Landroid/content/Context;)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/powerui/PowerReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.miui.powercenter.HIGH_FPS_VIDEO_SHOW_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v2, 0x7f080899

    if-eqz v1, :cond_0

    const v1, 0x7f08089a

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    new-instance v3, Lw4/b$b;

    invoke-direct {v3, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const v4, 0x7f121063

    invoke-virtual {v3, v4}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120379

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.miui.powercenter.high"

    invoke-virtual {v5, v7, v6}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v5

    invoke-virtual {v5, v0}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    const v1, 0x7f121062

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lw4/b$b;->t(Z)Lw4/b$b;

    invoke-virtual {v3}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    return-void
.end method

.method public static Y(Landroid/content/Context;)V
    .locals 8

    const v0, 0x7f12105d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v2, 0x7f080899

    if-eqz v1, :cond_0

    const v1, 0x7f08089a

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    new-instance v3, Lw4/b$b;

    invoke-direct {v3, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const v4, 0x7f121060

    invoke-virtual {v3, v4}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120379

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.miui.powercenter.high"

    invoke-virtual {v5, v7, v6}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v5

    invoke-virtual {v5, v0}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    const v1, 0x7f12105f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw4/b$b;->t(Z)Lw4/b$b;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/powerui/PowerReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.miui.powercenter.powerui.CANCEL_TEMP_NOTIFI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v3, p0}, Lw4/b$b;->b(Landroid/app/PendingIntent;)Lw4/b$b;

    invoke-virtual {v3}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    return-void
.end method

.method public static Z(Landroid/content/Context;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/powercenter/nightcharge/ChargerProtectActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v3, 0x0

    const/high16 v4, 0x4000000

    invoke-static {v0, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/miui/powercenter/powerui/PowerReceiver;

    invoke-direct {v5, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "com.miui.powercenter.ACTION_INTELLECT_CHARGE_PROTECT"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v6, 0x7f1210c4

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v8, 0x7f080899

    if-eqz v7, :cond_0

    const v7, 0x7f08089a

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v9

    const-wide v10, 0x3fe99999a0000000L    # 0.800000011920929

    invoke-virtual {v9, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f120379

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "MODE_HIGH_TEMP"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const v13, 0x7f1210af

    const-string v15, "protect_mode"

    const/4 v14, 0x1

    const-string v16, "com.miui.powercenter.high"

    if-eqz v12, :cond_1

    new-array v1, v14, [Ljava/lang/Object;

    aput-object v9, v1, v3

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f12037a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v16, "com.miui.powercenter.low"

    move-object/from16 v9, v16

    goto :goto_2

    :cond_1
    const-string v11, "MODE_NAVIGATION"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const v1, 0x7f1210b0

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v9, v12, v3

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string v9, "MODE_NIGHT"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lmd/h;->F()Lmd/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmd/h;->H(Landroid/content/Context;)I

    move-result v1

    invoke-static {}, Lgd/c;->L()I

    move-result v11

    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v11, v1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v11, v1}, Lme/b0;->k(II)Ljava/lang/String;

    move-result-object v1

    const v11, 0x7f1210b1

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v1, v12, v3

    invoke-virtual {v0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    const-string v1, ""

    :goto_1
    move-object/from16 v9, v16

    const v13, 0x7f1210b7

    :goto_2
    invoke-static {v0, v3, v5, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v4, Lw4/b$b;

    invoke-direct {v4, v0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v13}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v5

    invoke-virtual {v5, v2}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object v2

    invoke-virtual {v2, v6}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object v2

    invoke-virtual {v2, v3}, Lw4/b$b;->b(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object v2

    invoke-virtual {v2, v8}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v2

    invoke-virtual {v2, v7}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v2

    const v3, 0x7f1210b7

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v14}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v14}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v14}, Lw4/b$b;->t(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v14}, Lw4/b$b;->s(Z)Lw4/b$b;

    invoke-virtual {v4}, Lw4/b$b;->a()Lw4/b;

    move-result-object v0

    invoke-virtual {v0}, Lw4/b;->I()V

    return-void
.end method

.method private static a(ILjava/lang/String;)Lcom/miui/powercenter/bean/StatusBarGuideParams;
    .locals 5

    new-instance v0, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;

    invoke-direct {v0}, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;-><init>()V

    new-instance v1, Lcom/miui/powercenter/bean/StatusBarGuideParams$IconParams;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://com.miui.securitycenter/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "mp4"

    const-string v4, "raw"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/miui/powercenter/bean/StatusBarGuideParams$IconParams;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;->setLeftIcon(Lcom/miui/powercenter/bean/StatusBarGuideParams$IconParams;)Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;

    move-result-object p0

    new-instance v0, Lcom/miui/powercenter/bean/StatusBarGuideParams$TextParams;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/miui/powercenter/bean/StatusBarGuideParams$TextParams;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;->setRightText(Lcom/miui/powercenter/bean/StatusBarGuideParams$TextParams;)Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;->create()Lcom/miui/powercenter/bean/StatusBarGuideParams;

    move-result-object p0

    return-object p0
.end method

.method public static a0(Landroid/content/Context;I)V
    .locals 10

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/PowerMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "enter_homepage_way"

    const-string v2, "LowBatteryNotification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {p1}, Lde/j;->J(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120f09

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v7

    int-to-float p1, p1

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr p1, v8

    float-to-double v8, p1

    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v1

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v6, 0x7f08089f

    if-eqz v3, :cond_0

    const v3, 0x7f0808a0

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    new-instance v7, Lw4/b$b;

    invoke-direct {v7, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v4}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v4

    const v8, 0x7f120ee9

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "batteryNoticeNew"

    invoke-virtual {v4, v9, v8}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v4

    invoke-virtual {v4, v6}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v4

    invoke-virtual {v4, v3}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v3

    invoke-virtual {v3, p1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object p1

    invoke-virtual {p1, v5}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object p1

    invoke-virtual {p1, v5}, Lw4/b$b;->i(Z)Lw4/b$b;

    invoke-static {p0}, Lde/j;->E(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0}, Lde/j;->F(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lx4/y;->s()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/powercenter/powerui/PowerReceiver;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.android.systemui.OPEN_SAVE_MODE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v1, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const v0, 0x7f12039d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lw4/b$b;->b(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object p1

    const v0, 0x7f120f08

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/2addr p1, v5

    const-string v0, "miui.showAction"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v7, p0}, Lw4/b$b;->k(Landroid/os/Bundle;)Lw4/b$b;

    goto :goto_1

    :cond_1
    const p1, 0x7f121327

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    :goto_1
    invoke-virtual {v7}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    invoke-static {}, Lhd/a;->G0()V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f121052

    aput v2, v0, v1

    invoke-static {p0, v0}, Lde/j;->m(Landroid/content/Context;[I)V

    return-void
.end method

.method public static b0(Landroid/content/Context;)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/powerui/EmptyDialogHelperActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "dialog_action"

    const-string v2, "miui.intent.action.ACTION_POWER_CENTER_DIALOG"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "dialog_name"

    const-string v2, "LOW_FAST_CHARGE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v2, 0x7f080e20

    if-eqz v1, :cond_0

    const v1, 0x7f080e21

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    new-instance v3, Lw4/b$b;

    invoke-direct {v3, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const v4, 0x7f12107a

    invoke-virtual {v3, v4}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120379

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.miui.powercenter.high"

    invoke-virtual {v5, v7, v6}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v5

    invoke-virtual {v5, v2}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    const v1, 0x7f121079

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lw4/b$b;->t(Z)Lw4/b$b;

    invoke-virtual {v3}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f1210d3

    aput v2, v0, v1

    invoke-static {p0, v0}, Lde/j;->m(Landroid/content/Context;[I)V

    return-void
.end method

.method public static c0(Landroid/content/Context;)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/powerui/PowerReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.miui.powercenter.ACTION_CHARGE_SPECIAL_STAND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v2, 0x7f080899

    if-eqz v1, :cond_0

    const v1, 0x7f08089a

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    new-instance v3, Lw4/b$b;

    invoke-direct {v3, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1210d1

    invoke-virtual {v3, v4}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120379

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.miui.powercenter.high"

    invoke-virtual {v5, v7, v6}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v5

    invoke-virtual {v5, v2}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    const v1, 0x7f1210cf

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lw4/b$b;->t(Z)Lw4/b$b;

    invoke-virtual {v3}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f1210c7

    aput v2, v0, v1

    invoke-static {p0, v0}, Lde/j;->m(Landroid/content/Context;[I)V

    return-void
.end method

.method public static d0(Landroid/content/Context;)V
    .locals 8

    invoke-static {p0}, Lde/j;->A(Landroid/content/Context;)V

    const v0, 0x7f12033a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v2, 0x7f080899

    if-eqz v1, :cond_0

    const v1, 0x7f08089a

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    new-instance v3, Lw4/b$b;

    invoke-direct {v3, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const v4, 0x7f121096

    invoke-virtual {v3, v4}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f12037a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.miui.powercenter.low"

    invoke-virtual {v5, v7, v6}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v5

    invoke-virtual {v5, v0}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    invoke-static {}, Lpg/i;->H()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f120ffe

    goto :goto_1

    :cond_1
    const v1, 0x7f121095

    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw4/b$b;->t(Z)Lw4/b$b;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/PowerMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "enter_homepage_way"

    const-string v2, "performance_mode_activated_noti"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v4, 0x4000000

    invoke-static {p0, v2, v0, v4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v3, v0}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/powerui/PowerReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.systemui.CLOSE_PERFORMANCE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v3, p0}, Lw4/b$b;->b(Landroid/app/PendingIntent;)Lw4/b$b;

    invoke-virtual {v3}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    invoke-static {}, Lhd/a;->S0()V

    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f1212ad

    aput v2, v0, v1

    invoke-static {p0, v0}, Lde/j;->m(Landroid/content/Context;[I)V

    return-void
.end method

.method public static e0(Landroid/content/Context;)V
    .locals 8

    invoke-static {p0}, Lde/j;->C(Landroid/content/Context;)V

    const v0, 0x7f120eef

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v2, 0x7f08089f

    if-eqz v1, :cond_0

    const v1, 0x7f0808a0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    new-instance v3, Lw4/b$b;

    invoke-direct {v3, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120eec

    invoke-virtual {v3, v4}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f12037a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.miui.powercenter.low"

    invoke-virtual {v5, v7, v6}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v5

    invoke-virtual {v5, v0}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw4/b$b;->i(Z)Lw4/b$b;

    invoke-static {}, Lgd/c;->g()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f120eeb

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v4

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/savemode/PowerSaveActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "power_save_activity_enterway"

    const-string v4, "power_save_activated_notification"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v4, 0x4000000

    invoke-static {p0, v2, v0, v4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v3, v0}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/powerui/PowerReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.systemui.CLOSE_SAVE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v3, p0}, Lw4/b$b;->b(Landroid/app/PendingIntent;)Lw4/b$b;

    invoke-virtual {v3}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    invoke-static {}, Lhd/a;->e1()V

    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 v0, 0x0

    const v1, 0x7f12104f

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PowerNoticeUtils"

    const-string v1, "cancelExtremeNotification error:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static f0(Landroid/content/Context;)V
    .locals 9

    invoke-static {}, Lde/j;->t()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {}, Lde/j;->t()Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v1, v3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v3, 0x7f080e25

    if-eqz v2, :cond_0

    const v2, 0x7f08089a

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    new-instance v4, Lw4/b$b;

    invoke-direct {v4, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const v5, 0x7f121009

    invoke-virtual {v4, v5}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120379

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.miui.powercenter.high"

    invoke-virtual {v6, v8, v7}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v6

    invoke-virtual {v6, v3}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object v0

    const v2, 0x7f121007

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw4/b$b;->b(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    const v1, 0x7f121008

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lw4/b$b;->t(Z)Lw4/b$b;

    invoke-virtual {v4}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    return-void
.end method

.method public static g(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const v0, 0x7f12109f

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    const v0, 0x7f1210cc

    invoke-virtual {p0, v1, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PowerNoticeUtils"

    const-string v1, "cancelExtremeNotification error:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static g0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f110016

    invoke-static {p0, v0, p1}, Lde/j;->j0(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .locals 2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 v0, 0x0

    const v1, 0x7f121060

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public static h0(Landroid/content/Context;)V
    .locals 7

    sget-boolean v0, Lsl/a;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/nightcharge/ChargerProtectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v2, 0x7f080899

    if-eqz v1, :cond_1

    const v1, 0x7f08089a

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    new-instance v3, Lw4/b$b;

    invoke-direct {v3, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1210c7

    invoke-virtual {v3, v4}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120379

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.miui.powercenter.high"

    invoke-virtual {v4, v6, v5}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object v4

    invoke-virtual {v4, v0}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object v0

    const v1, 0x7f121055

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object v0

    const v1, 0x7f121053

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lw4/b$b;->l(I)Lw4/b$b;

    invoke-virtual {v3}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x7f1210b7

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {p0, v1}, Lde/j;->m(Landroid/content/Context;[I)V

    new-array v0, v0, [I

    const v1, 0x7f1210af

    aput v1, v0, v3

    invoke-static {p0, v0}, Lde/j;->m(Landroid/content/Context;[I)V

    return-void
.end method

.method public static i0(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.securitycenter.POWERSAVE_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "channel_id"

    const/16 v2, 0x2711

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lw4/b$b;

    invoke-direct {v2, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0060

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v2

    const v3, 0x7f120ee9

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v3, "com.miui.powercenter.high"

    invoke-virtual {v2, v3, p0}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object p0

    const v2, 0x7f0808a1

    invoke-virtual {p0, v2}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v2}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object p0

    const v2, 0x7f1210b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    const v2, 0x7f1210b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    const-string p0, "PowerNoticeUtils"

    const-string v0, "Show smart change notification: pogo"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static j(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f12107a

    aput v2, v0, v1

    invoke-static {p0, v0}, Lde/j;->m(Landroid/content/Context;[I)V

    return-void
.end method

.method private static j0(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {p1, p2}, Lde/j;->a(ILjava/lang/String;)Lcom/miui/powercenter/bean/StatusBarGuideParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "strong_toast_category"

    const-string v1, "video_text"

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "target"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "duration"

    const-wide/16 v1, 0xbb8

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "status_bar_strong_toast"

    const-string v1, "show_custom_strong_toast"

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    const-string p1, "strong_toast_action"

    invoke-static {p0, p1, p2}, Lde/j;->D(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PowerNoticeUtils"

    const-string p2, "showVideoTextStatusBar: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f1210d1

    aput v2, v0, v1

    invoke-static {p0, v0}, Lde/j;->m(Landroid/content/Context;[I)V

    return-void
.end method

.method public static k0(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lde/j;->t()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PowerNoticeUtils"

    const-string v1, "startCameraPrinterActivity error:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f1210bd

    aput v2, v0, v1

    invoke-static {p0, v0}, Lde/j;->m(Landroid/content/Context;[I)V

    return-void
.end method

.method public static l0(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.settings.SubSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":android:show_fragment"

    const-string v2, "com.android.settings.cameragrip.CameraGripDetail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PowerNoticeUtils"

    const-string v1, "startSettingHandle errro:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static varargs m(Landroid/content/Context;[I)V
    .locals 4

    :try_start_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PowerNoticeUtils"

    const-string v0, "cancelExtremeNotification error:"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static m0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "reminder_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static n(Landroid/content/Context;)V
    .locals 3

    const-string v0, "PowerNoticeUtils"

    const-string v1, "Cancel start change notification: pogo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {p0, v0}, Lde/j;->m(Landroid/content/Context;[I)V

    return-void
.end method

.method public static n0(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.miui.powercenter.powersaver"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "showLowBatteryDialog"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PowerNoticeUtils"

    const-string v1, "showLowBatteryDialog error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static o(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f121009

    aput v2, v0, v1

    invoke-static {p0, v0}, Lde/j;->m(Landroid/content/Context;[I)V

    return-void
.end method

.method public static p(Landroid/content/Context;)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "battery"

    invoke-static {v0, v1}, Landroidx/core/app/q0;->a(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Landroidx/core/app/m0;->a(Landroid/app/NotificationManager;Ljava/lang/String;)V

    :cond_1
    const-string v1, "batteryNotice"

    invoke-static {v0, v1}, Landroidx/core/app/q0;->a(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v0, v1}, Landroidx/core/app/m0;->a(Landroid/app/NotificationManager;Ljava/lang/String;)V

    :cond_2
    new-instance v1, Landroid/app/NotificationChannel;

    const v2, 0x7f120ee9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "batteryNoticeNew"

    const/4 v4, 0x4

    invoke-direct {v1, v3, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "low_battery_sound"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    invoke-static {v0, v1}, Landroidx/core/app/u0;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    new-instance v1, Landroid/app/NotificationChannel;

    const v2, 0x7f120379

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.miui.powercenter.high"

    invoke-direct {v1, v3, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    new-instance v3, Landroid/app/NotificationChannel;

    const v4, 0x7f12037a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x2

    const-string v5, "com.miui.powercenter.low"

    invoke-direct {v3, v5, p0, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v3, v2, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-static {v0, v1}, Landroidx/core/app/u0;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    invoke-static {v0, v3}, Landroidx/core/app/u0;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    const-string p0, "com.miui.powercenter"

    invoke-static {v0, p0}, Landroidx/core/app/m0;->a(Landroid/app/NotificationManager;Ljava/lang/String;)V

    return-void
.end method

.method public static q(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "POWER_SAVE_MODE_OPEN"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "LOW_BATTERY_DIALOG"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.miui.powercenter.powersaver"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "changePowerMode"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PowerNoticeUtils"

    const-string v1, "enableSaveMode error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static r(J)J
    .locals 2

    const-wide/32 v0, 0x36ee80

    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static s(J)J
    .locals 2

    const-wide/32 v0, 0x36ee80

    rem-long/2addr p0, v0

    const-wide/32 v0, 0xea60

    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static t()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.REFERRER_NAM"

    const-string v2, "http://com.miui.voiceassist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.CAMERA_MODE"

    const-string v2, "POLAROID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.systemui.camera_launch_source"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static u(Ljava/lang/String;I)I
    .locals 3

    const/4 v0, -0x1

    if-ltz p1, :cond_2

    const/16 v1, 0x64

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "save_mode"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xb

    if-eqz v1, :cond_1

    new-array p0, v2, [I

    fill-array-data p0, :array_0

    div-int/lit8 p1, p1, 0xa

    aget p0, p0, p1

    return p0

    :cond_1
    const-string v1, "performance_mode"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-array p0, v2, [I

    fill-array-data p0, :array_1

    div-int/lit8 p1, p1, 0xa

    aget p0, p0, p1

    return p0

    :cond_2
    :goto_0
    return v0

    nop

    :array_0
    .array-data 4
        0x7f080e0d
        0x7f080e10
        0x7f080e11
        0x7f080e12
        0x7f080e13
        0x7f080e14
        0x7f080e15
        0x7f080e16
        0x7f080e17
        0x7f080e0e
        0x7f080e0f
    .end array-data

    :array_1
    .array-data 4
        0x7f080e01
        0x7f080e04
        0x7f080e05
        0x7f080e06
        0x7f080e07
        0x7f080e08
        0x7f080e09
        0x7f080e0a
        0x7f080e0b
        0x7f080e02
        0x7f080e03
    .end array-data
.end method

.method private static v()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.settings.SubSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":android:show_fragment"

    const-string v2, "com.android.settings.cameragrip.CameraGripDetail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static w(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f120fd9

    aput v2, v0, v1

    invoke-static {p0, v0}, Lde/j;->m(Landroid/content/Context;[I)V

    return-void
.end method

.method public static x(Landroid/content/Context;)V
    .locals 2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 v0, 0x0

    const v1, 0x7f120f09

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public static y(Landroid/content/Context;)V
    .locals 2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 v0, 0x0

    const v1, 0x7f121096

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public static z(Landroid/content/Context;)V
    .locals 2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 v0, 0x0

    const v1, 0x7f120eec

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method
