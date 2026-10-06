.class public Lcom/miui/common/card/models/NewsCardModel;
.super Lcom/miui/common/card/models/BaseCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;
    }
.end annotation


# static fields
.field private static final MAX_IMG_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NewsCardModel"


# instance fields
.field private cardId:Ljava/lang/String;

.field private cornerTip:Ljava/lang/String;

.field private detailTitle:Ljava/lang/String;

.field private images:[Ljava/lang/String;

.field private isBottomRow:Z

.field private isTopRow:Z

.field private newsDate:J

.field private newsId:Ljava/lang/String;

.field private previousCardModelIsBlankLine:Z

.field private source:Ljava/lang/String;

.field private template:I

.field private url:Ljava/lang/String;

.field private usePosition:I

.field private views:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILorg/json/JSONObject;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/common/card/models/NewsCardModel;->images:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/miui/common/card/models/NewsCardModel;->init(Lorg/json/JSONObject;)V

    iput p3, p0, Lcom/miui/common/card/models/NewsCardModel;->usePosition:I

    return-void
.end method

.method static synthetic access$100(Lcom/miui/common/card/models/NewsCardModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/common/card/models/NewsCardModel;->previousCardModelIsBlankLine:Z

    return p0
.end method

.method static synthetic access$200(Lcom/miui/common/card/models/NewsCardModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/common/card/models/NewsCardModel;->isBottomRow:Z

    return p0
.end method

.method static synthetic access$300(Lcom/miui/common/card/models/NewsCardModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/common/card/models/NewsCardModel;->isTopRow:Z

    return p0
.end method

.method static synthetic access$400(Lcom/miui/common/card/models/NewsCardModel;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/NewsCardModel;->images:[Ljava/lang/String;

    return-object p0
.end method

.method private init(Lorg/json/JSONObject;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "newsId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->newsId:Ljava/lang/String;

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->title:Ljava/lang/String;

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->url:Ljava/lang/String;

    const-string v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->summary:Ljava/lang/String;

    const-string v0, "source"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->source:Ljava/lang/String;

    const-string v0, "newsDate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/common/card/models/NewsCardModel;->newsDate:J

    const-string v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/card/models/NewsCardModel;->template:I

    const-string v0, "cornerTip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->cornerTip:Ljava/lang/String;

    const-string v0, "views"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->views:Ljava/lang/String;

    const-string v0, "dataId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->dataId:Ljava/lang/String;

    const-string v0, "images"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/miui/common/card/models/NewsCardModel;->images:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static parse(IILorg/json/JSONObject;Lcom/miui/common/card/models/TitleCardModel;)Lcom/miui/common/card/models/NewsCardModel;
    .locals 1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/common/card/models/NewsListBannerCardModel;

    invoke-direct {v0, p2, p0}, Lcom/miui/common/card/models/NewsListBannerCardModel;-><init>(Lorg/json/JSONObject;I)V

    if-eqz p3, :cond_1

    invoke-virtual {p3, p1}, Lcom/miui/common/card/models/TitleCardModel;->setSubCardModelTemplate(I)V

    :cond_1
    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getCardId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->cardId:Ljava/lang/String;

    return-object v0
.end method

.method public getCornerTip()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->cornerTip:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->detailTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->images:[Ljava/lang/String;

    return-object v0
.end method

.method public getNewsDate()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/common/card/models/NewsCardModel;->newsDate:J

    return-wide v0
.end method

.method public getNewsId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->newsId:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/NewsCardModel;->template:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getViews()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->views:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Leg/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/common/card/models/NewsCardModel;->detailTitle:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Leg/i;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/miui/common/card/models/NewsCardModel;->usePosition:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/common/card/models/BaseCardModel;->dataId:Ljava/lang/String;

    invoke-static {p1}, Lqf/c;->z0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/common/card/models/BaseCardModel;->dataId:Ljava/lang/String;

    invoke-static {p1}, Lqf/c;->c0(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/common/card/models/BaseCardModel;->dataId:Ljava/lang/String;

    invoke-static {p1}, Lqf/c;->E(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setBottomRow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/NewsCardModel;->isBottomRow:Z

    return-void
.end method

.method public setCardId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/NewsCardModel;->cardId:Ljava/lang/String;

    return-void
.end method

.method public setCornerTip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/NewsCardModel;->cornerTip:Ljava/lang/String;

    return-void
.end method

.method public setDetailTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/NewsCardModel;->detailTitle:Ljava/lang/String;

    return-void
.end method

.method public setImages([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/NewsCardModel;->images:[Ljava/lang/String;

    return-void
.end method

.method public setNewsDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/common/card/models/NewsCardModel;->newsDate:J

    return-void
.end method

.method public setNewsId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/NewsCardModel;->newsId:Ljava/lang/String;

    return-void
.end method

.method public setPreviousLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/NewsCardModel;->previousCardModelIsBlankLine:Z

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/NewsCardModel;->source:Ljava/lang/String;

    return-void
.end method

.method public setTemplate(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/NewsCardModel;->template:I

    return-void
.end method

.method public setTopRow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/NewsCardModel;->isTopRow:Z

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/NewsCardModel;->url:Ljava/lang/String;

    return-void
.end method

.method public setViews(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/NewsCardModel;->views:Ljava/lang/String;

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
