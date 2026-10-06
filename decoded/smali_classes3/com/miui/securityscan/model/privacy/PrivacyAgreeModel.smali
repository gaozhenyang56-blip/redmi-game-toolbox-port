.class public Lcom/miui/securityscan/model/privacy/PrivacyAgreeModel;
.super Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;-><init>()V

    return-void
.end method

.method private static getDefaultAgreeModel(Landroid/content/Context;)Lcom/miui/securityscan/model/privacy/PrivacyAgreeModel;
    .locals 3

    new-instance v0, Lcom/miui/securityscan/model/privacy/PrivacyAgreeModel;

    invoke-direct {v0}, Lcom/miui/securityscan/model/privacy/PrivacyAgreeModel;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;->setPackageName(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;->setTimestamp(J)V

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;->setMiuiVersion(Ljava/lang/String;)V

    invoke-static {p0}, Lx4/f1;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;->setApkVersion(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;->setLanguage(Ljava/lang/String;)V

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;->setRegion(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getFireBaseAgreeModel(Landroid/content/Context;)Lcom/miui/securityscan/model/privacy/PrivacyAgreeModel;
    .locals 1

    invoke-static {p0}, Lcom/miui/securityscan/model/privacy/PrivacyAgreeModel;->getDefaultAgreeModel(Landroid/content/Context;)Lcom/miui/securityscan/model/privacy/PrivacyAgreeModel;

    move-result-object p0

    sget-object v0, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;->ID_TYPE_FIREBASE:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;->setIdType(Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;)V

    invoke-static {}, Lef/x;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;->setIdContent(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getUUIDAgreeModel(Landroid/content/Context;)Lcom/miui/securityscan/model/privacy/PrivacyAgreeModel;
    .locals 1

    invoke-static {p0}, Lcom/miui/securityscan/model/privacy/PrivacyAgreeModel;->getDefaultAgreeModel(Landroid/content/Context;)Lcom/miui/securityscan/model/privacy/PrivacyAgreeModel;

    move-result-object p0

    sget-object v0, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;->ID_TYPE_UUID:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;->setIdType(Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;)V

    invoke-static {}, Lef/v;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;->setIdContent(Ljava/lang/String;)V

    return-object p0
.end method
