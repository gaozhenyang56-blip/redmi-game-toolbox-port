.class public Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/PopularActionCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PopularActionCardItemData"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mBrightBgColor:Ljava/lang/String;

.field private mDarkBgColor:Ljava/lang/String;

.field private mIconBgRes:I

.field private mIconRes:I

.field private mIconUrl:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mIntroColor:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;

.field private mSummaryRes:I

.field private mTitle:Ljava/lang/String;

.field private mTitleRes:I


# direct methods
.method public constructor <init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mTitleRes:I

    iput p2, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mSummaryRes:I

    iput-object p3, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mIconUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mBrightBgColor:Ljava/lang/String;

    iput-object p7, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mDarkBgColor:Ljava/lang/String;

    iput-object p8, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mIntroColor:Ljava/lang/String;

    iput-object p9, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mAction:Ljava/lang/String;

    iput-object p10, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mId:Ljava/lang/String;

    iput p4, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mIconBgRes:I

    iput p5, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mIconRes:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mTitleRes:I

    iput v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mSummaryRes:I

    iput-object p1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mSummary:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mIconUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mBrightBgColor:Ljava/lang/String;

    iput-object p7, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mDarkBgColor:Ljava/lang/String;

    iput-object p8, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mIntroColor:Ljava/lang/String;

    iput-object p9, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mAction:Ljava/lang/String;

    iput-object p9, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mId:Ljava/lang/String;

    iput p4, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mIconBgRes:I

    iput p5, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mIconRes:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mTitleRes:I

    iput v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mSummaryRes:I

    iput-object p1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mSummary:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mIconUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mBrightBgColor:Ljava/lang/String;

    iput-object p7, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mDarkBgColor:Ljava/lang/String;

    iput-object p8, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mIntroColor:Ljava/lang/String;

    iput-object p9, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mAction:Ljava/lang/String;

    iput-object p10, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mId:Ljava/lang/String;

    iput p4, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mIconBgRes:I

    iput p5, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mIconRes:I

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getBrightBgColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mBrightBgColor:Ljava/lang/String;

    return-object v0
.end method

.method public getDarkBgColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mDarkBgColor:Ljava/lang/String;

    return-object v0
.end method

.method public getIconBgRes()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mIconBgRes:I

    return v0
.end method

.method public getIconRes()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mIconRes:I

    return v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIntroColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mIntroColor:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getSummaryRes()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mSummaryRes:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mTitleRes:I

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mAction:Ljava/lang/String;

    return-void
.end method

.method public setBrightBgColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mBrightBgColor:Ljava/lang/String;

    return-void
.end method

.method public setDarkBgColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mDarkBgColor:Ljava/lang/String;

    return-void
.end method

.method public setIconBgRes(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mIconBgRes:I

    return-void
.end method

.method public setIconRes(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mIconRes:I

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mId:Ljava/lang/String;

    return-void
.end method

.method public setIntroColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mIntroColor:Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mSummary:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PopularActionCardItemData{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", summary=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", iconUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", brightBgColor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mBrightBgColor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", darkBgColor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mDarkBgColor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", introColor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mIntroColor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", action=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", iconBgres=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mIconBgRes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", iconRes=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->mIconRes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
