.class public Lcom/miui/permission/support/util/MiuiCommonUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MIUI_V11_VERSION_CODE:I = 0x9

.field public static final MIUI_V12_5_VERSION_CODE:I = 0xb

.field public static final MIUI_V12_VERSION_CODE:I = 0xa

.field public static final MIUI_V15_VERSION_CODE:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMiuiVersion()I
    .locals 2

    const-string v0, "ro.miui.ui.version.code"

    invoke-static {v0}, Lcom/miui/permission/support/util/SystemPropertiesCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static overMiui15()Z
    .locals 2

    invoke-static {}, Lcom/miui/permission/support/util/MiuiCommonUtil;->getMiuiVersion()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static overMiuiEleven()Z
    .locals 2

    invoke-static {}, Lcom/miui/permission/support/util/MiuiCommonUtil;->getMiuiVersion()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static overMiuiTwelve()Z
    .locals 2

    invoke-static {}, Lcom/miui/permission/support/util/MiuiCommonUtil;->getMiuiVersion()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
