.class public Lcom/miui/securityscan/model/privacy/PrivacyRevokeModel;
.super Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/model/privacy/PrivacyRevokeModel$RevokeStatus;
    }
.end annotation


# static fields
.field public static final STATUS_REQUEST_REVOKE:I = 0x1

.field public static final STATUS_REVOKED:I


# instance fields
.field private idStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/securityscan/model/privacy/PrivacyRevokeModel;->idStatus:I

    return-void
.end method

.method private static getDefaultRevokeModel(Landroid/content/Context;)Lcom/miui/securityscan/model/privacy/PrivacyRevokeModel;
    .locals 3

    new-instance v0, Lcom/miui/securityscan/model/privacy/PrivacyRevokeModel;

    invoke-direct {v0}, Lcom/miui/securityscan/model/privacy/PrivacyRevokeModel;-><init>()V

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

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/miui/securityscan/model/privacy/PrivacyRevokeModel;->setIdStatus(I)V

    return-object v0
.end method

.method public static getFireBaseRevokeModel(Landroid/content/Context;)Lcom/miui/securityscan/model/privacy/PrivacyRevokeModel;
    .locals 1

    invoke-static {p0}, Lcom/miui/securityscan/model/privacy/PrivacyRevokeModel;->getDefaultRevokeModel(Landroid/content/Context;)Lcom/miui/securityscan/model/privacy/PrivacyRevokeModel;

    move-result-object p0

    sget-object v0, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;->ID_TYPE_FIREBASE:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;->setIdType(Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;)V

    invoke-static {}, Lef/x;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;->setIdContent(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getUUIDRevokeModel(Landroid/content/Context;)Lcom/miui/securityscan/model/privacy/PrivacyRevokeModel;
    .locals 1

    invoke-static {p0}, Lcom/miui/securityscan/model/privacy/PrivacyRevokeModel;->getDefaultRevokeModel(Landroid/content/Context;)Lcom/miui/securityscan/model/privacy/PrivacyRevokeModel;

    move-result-object p0

    sget-object v0, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;->ID_TYPE_UUID:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;->setIdType(Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;)V

    invoke-static {}, Lef/v;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;->setIdContent(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public getIdStatus()I
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/model/privacy/PrivacyRevokeModel;->idStatus:I

    return v0
.end method

.method public setIdStatus(I)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/model/privacy/PrivacyRevokeModel;->idStatus:I

    return-void
.end method
