.class public Lcom/miui/securityscan/model/privacy/PrivacyRspModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/model/privacy/PrivacyRspModel$HeadData;
    }
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field private head:Lcom/miui/securityscan/model/privacy/PrivacyRspModel$HeadData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/privacy/PrivacyRspModel;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getHead()Lcom/miui/securityscan/model/privacy/PrivacyRspModel$HeadData;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/privacy/PrivacyRspModel;->head:Lcom/miui/securityscan/model/privacy/PrivacyRspModel$HeadData;

    return-object v0
.end method

.method public isSucceed()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/model/privacy/PrivacyRspModel;->head:Lcom/miui/securityscan/model/privacy/PrivacyRspModel$HeadData;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/securityscan/model/privacy/PrivacyRspModel$HeadData;->access$000(Lcom/miui/securityscan/model/privacy/PrivacyRspModel$HeadData;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/privacy/PrivacyRspModel;->data:Ljava/lang/String;

    return-void
.end method

.method public setHead(Lcom/miui/securityscan/model/privacy/PrivacyRspModel$HeadData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/privacy/PrivacyRspModel;->head:Lcom/miui/securityscan/model/privacy/PrivacyRspModel$HeadData;

    return-void
.end method
