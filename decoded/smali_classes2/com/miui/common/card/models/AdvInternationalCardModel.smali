.class public Lcom/miui/common/card/models/AdvInternationalCardModel;
.super Lcom/miui/common/card/models/AdvCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdvInternationalCardModel"


# instance fields
.field private isLoaded:Z

.field private mGlobalADType:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;I)V
    .locals 1

    const v0, 0x7f0e0491

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/common/card/models/AdvCardModel;-><init>(ILorg/json/JSONObject;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/common/card/models/AdvInternationalCardModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/common/card/models/AdvInternationalCardModel;->isLoaded:Z

    return p0
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;-><init>(Lcom/miui/common/card/models/AdvInternationalCardModel;Landroid/view/View;)V

    return-object v0
.end method

.method public fillAd(Lcom/miui/common/card/models/AdvInternationalCardModel;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "AdvInternationalCardModel"

    const-string v1, "fill ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/miui/common/card/models/BaseCardModel;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/common/card/models/BaseCardModel;->setLayoutId(I)V

    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/common/card/models/AdvCardModel;->setObject(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/common/card/models/AdvCardModel;->setId(I)V

    invoke-virtual {p1}, Lcom/miui/common/card/models/BaseCardModel;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/common/card/models/BaseCardModel;->setIcon(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->getCta()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/common/card/models/AdvCardModel;->setCta(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/common/card/models/BaseCardModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/common/card/models/BaseCardModel;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/common/card/models/BaseCardModel;->setSummary(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->getMultiImgUrls()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/common/card/models/AdvCardModel;->setMultiImgUrls([Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvInternationalCardModel;->getGlobalADType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/common/card/models/AdvInternationalCardModel;->setGlobalADType(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/common/card/models/AdvInternationalCardModel;->setLoaded(Z)V

    invoke-static {}, Lw9/b;->b()Lw9/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->getObject()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lw9/b;->a(Ljava/lang/Object;Lw9/b$a;)V

    return-void
.end method

.method public getGlobalADType()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/AdvInternationalCardModel;->mGlobalADType:I

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/AdvInternationalCardModel;->isLoaded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/common/card/models/AdvInternationalCardModel;->mGlobalADType:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setGlobalADType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/AdvInternationalCardModel;->mGlobalADType:I

    return-void
.end method

.method public setLoaded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/AdvInternationalCardModel;->isLoaded:Z

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
