.class public Lpf/h;
.super Lcom/miui/securityscan/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/c;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected c()Lcom/miui/securityscan/d;
    .locals 4

    iget-object v0, p0, Lcom/miui/securityscan/c;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lcom/miui/securityscan/d;

    sget-object v2, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;->ID_TYPE_FIREBASE:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    invoke-static {v0}, Lcom/miui/securityscan/model/privacy/PrivacyAgreeModel;->getFireBaseAgreeModel(Landroid/content/Context;)Lcom/miui/securityscan/model/privacy/PrivacyAgreeModel;

    move-result-object v0

    const-string v3, "/collect/privacy/agree/v1"

    invoke-direct {v1, v2, v3, v0}, Lcom/miui/securityscan/d;-><init>(Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;Ljava/lang/String;Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;)V

    return-object v1
.end method

.method protected d()Lcom/miui/securityscan/d;
    .locals 4

    iget-object v0, p0, Lcom/miui/securityscan/c;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lcom/miui/securityscan/d;

    sget-object v2, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;->ID_TYPE_UUID:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    invoke-static {v0}, Lcom/miui/securityscan/model/privacy/PrivacyAgreeModel;->getUUIDAgreeModel(Landroid/content/Context;)Lcom/miui/securityscan/model/privacy/PrivacyAgreeModel;

    move-result-object v0

    const-string v3, "/collect/privacy/agree/v1"

    invoke-direct {v1, v2, v3, v0}, Lcom/miui/securityscan/d;-><init>(Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;Ljava/lang/String;Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;)V

    return-object v1
.end method
