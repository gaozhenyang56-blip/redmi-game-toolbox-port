.class public Lmiui/os/Build;
.super Landroid/os/Build;


# static fields
.field public static final IS_ALPHA_BUILD:Z

.field public static final IS_CM_CUSTOMIZATION:Z

.field public static final IS_CU_CUSTOMIZATION_TEST:Z

.field public static final IS_DEBUGGABLE:Z

.field public static final IS_DEVELOPMENT_VERSION:Z

.field public static final IS_GLOBAL_BUILD:Z

.field public static final IS_INTERNATIONAL_BUILD:Z

.field public static final IS_MIFOUR:Z

.field public static final IS_MIPAD:Z

.field public static final IS_OFFICIAL_VERSION:Z

.field public static final IS_STABLE_VERSION:Z

.field public static final IS_TABLET:Z


# direct methods
.method public static checkRegion(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
