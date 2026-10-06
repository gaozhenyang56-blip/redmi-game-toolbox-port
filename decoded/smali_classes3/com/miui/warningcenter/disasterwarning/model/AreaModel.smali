.class public Lcom/miui/warningcenter/disasterwarning/model/AreaModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/disasterwarning/model/AreaModel$Columns;
    }
.end annotation


# instance fields
.field private city:Ljava/lang/String;

.field private code:I

.field private isSelect:Z

.field private province:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private subscribeLevel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->code:I

    iput-object p2, p0, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->province:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->city:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->region:Ljava/lang/String;

    iput p5, p0, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->subscribeLevel:I

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->code:I

    return v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscribeLevel()I
    .locals 1

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->subscribeLevel:I

    return v0
.end method

.method public isSelect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->isSelect:Z

    return v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->city:Ljava/lang/String;

    return-void
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->code:I

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->province:Ljava/lang/String;

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->region:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->isSelect:Z

    return-void
.end method

.method public setSubscribeLevel(I)V
    .locals 0

    iput p1, p0, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->subscribeLevel:I

    return-void
.end method
