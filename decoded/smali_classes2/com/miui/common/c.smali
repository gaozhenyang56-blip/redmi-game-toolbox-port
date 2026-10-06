.class public Lcom/miui/common/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/c$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "Constants"

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/CharSequence;

.field public static final d:Ljava/lang/CharSequence;

.field public static final e:Ljava/lang/String;

.field public static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "miui.intent.action.NETWORKASSISTANT_MONTH_PACKAGE_SETTING"

    goto :goto_0

    :cond_0
    const-string v0, "miui.intent.action.NETWORKASSISTANT_OPERATOR_SETTING"

    :goto_0
    sput-object v0, Lcom/miui/common/c;->b:Ljava/lang/String;

    const-string v0, "root"

    sput-object v0, Lcom/miui/common/c;->c:Ljava/lang/CharSequence;

    const-string v0, "Interactive Shell"

    sput-object v0, Lcom/miui/common/c;->d:Ljava/lang/CharSequence;

    sget-boolean v0, Lcom/miui/common/i;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "com.miui.securityadd"

    goto :goto_1

    :cond_1
    const-string v0, "com.miui.vpnsdkmanager"

    :goto_1
    sput-object v0, Lcom/miui/common/c;->e:Ljava/lang/String;

    const-string v0, "com.mi.globalbrowser"

    const-string v1, "com.android.browser"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/common/c;->f:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/miui/common/c;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "V2"

    goto :goto_0

    :cond_0
    const-string p0, "market"

    :goto_0
    return-object p0
.end method

.method public static b()I
    .locals 3

    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "navigation_bar_width"

    invoke-static {v0, v1}, Lbh/d;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/common/c;->a:Ljava/lang/String;

    const-string v2, "getNavigationBarSize exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.android.browser"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method
