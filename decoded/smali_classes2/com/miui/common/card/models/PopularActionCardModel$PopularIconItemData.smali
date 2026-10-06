.class public Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/PopularActionCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PopularIconItemData"
.end annotation


# instance fields
.field private mBrightBgColor:Ljava/lang/String;

.field private mDarkBgColor:Ljava/lang/String;

.field private mIconBgRes:I

.field private mIntroColor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;->mBrightBgColor:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;->mDarkBgColor:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;->mIntroColor:Ljava/lang/String;

    iput p4, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;->mIconBgRes:I

    return-void
.end method


# virtual methods
.method public getBrightBgColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;->mBrightBgColor:Ljava/lang/String;

    return-object v0
.end method

.method public getDarkBgColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;->mDarkBgColor:Ljava/lang/String;

    return-object v0
.end method

.method public getIconBgRes()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;->mIconBgRes:I

    return v0
.end method

.method public getIntroColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;->mIntroColor:Ljava/lang/String;

    return-object v0
.end method

.method public setBrightBgColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;->mBrightBgColor:Ljava/lang/String;

    return-void
.end method

.method public setDarkBgColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;->mDarkBgColor:Ljava/lang/String;

    return-void
.end method

.method public setIconBgRes(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;->mIconBgRes:I

    return-void
.end method

.method public setIntroColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;->mIntroColor:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PopularIconItemData{, brightBgColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;->mBrightBgColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", darkBgColor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;->mDarkBgColor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", introColor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;->mIntroColor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", iconBgRes=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;->mIconBgRes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
