.class public Lcom/miui/securityscan/model/privacy/PrivacyRspModel$HeadData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/model/privacy/PrivacyRspModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeadData"
.end annotation


# static fields
.field public static final SUCCESS_CODE:I = 0xc8


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;

.field private server:Ljava/lang/String;

.field private status:I

.field private time:J

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/securityscan/model/privacy/PrivacyRspModel$HeadData;)I
    .locals 0

    iget p0, p0, Lcom/miui/securityscan/model/privacy/PrivacyRspModel$HeadData;->code:I

    return p0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/model/privacy/PrivacyRspModel$HeadData;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/privacy/PrivacyRspModel$HeadData;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/privacy/PrivacyRspModel$HeadData;->server:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/model/privacy/PrivacyRspModel$HeadData;->status:I

    return v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/securityscan/model/privacy/PrivacyRspModel$HeadData;->time:J

    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/privacy/PrivacyRspModel$HeadData;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/model/privacy/PrivacyRspModel$HeadData;->code:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/privacy/PrivacyRspModel$HeadData;->msg:Ljava/lang/String;

    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/privacy/PrivacyRspModel$HeadData;->server:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/model/privacy/PrivacyRspModel$HeadData;->status:I

    return-void
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/securityscan/model/privacy/PrivacyRspModel$HeadData;->time:J

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/privacy/PrivacyRspModel$HeadData;->version:Ljava/lang/String;

    return-void
.end method
