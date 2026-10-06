.class public Lcom/miui/gamebooster/model/ActiveModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/miui/gamebooster/globalgame/util/NoProguard;
.end annotation


# static fields
.field public static final ACTIVE_SHOW_TYPE_FREEFORM:I = 0x2

.field public static final ACTIVE_SHOW_TYPE_NORMAL:I = 0x3

.field public static final ACTIVE_SHOW_TYPE_TOOLBOX:I = 0x1

.field public static final APPLICATION_MODEL_TYPE:I = 0x3

.field public static final BANNER_MODEL_TYPE:I = 0x2

.field public static final CASUAL_GAME_BANNER_APP_DOWNLOAD_TYPE:I = 0x1

.field public static final CASUAL_GAME_BANNER_WEB_CONTENT_TYPE:I = 0x2

.field private static final DOWNLOAD_LATER:Ljava/lang/String; = "downloadLater"

.field private static final DOWNLOAD_NOW:Ljava/lang/String; = "downloadNow"

.field private static final DOWNLOAD_ORIGINAL:Ljava/lang/String; = "download"

.field public static final FUNCTION_ID_GTB:I = 0x1

.field public static final FUNCTION_ID_MI_MOBILE:I = 0x2

.field public static final FUNCTION_ID_VTB:I = 0x3

.field private static final PAGE_SOURCE_H5:I = 0x1

.field private static final PAGE_SOURCE_PKG_LOCAL:I = 0x2

.field private static final SUBSCRIBE:Ljava/lang/String; = "subscribe"

.field private static final TAG:Ljava/lang/String; = "ActiveModel"

.field private static final TYPE_ACTIVE:Ljava/lang/String; = "003"

.field public static final TYPE_AD:Ljava/lang/String; = "001"

.field private static final TYPE_FUNCTION:Ljava/lang/String; = "002"

.field public static final UGC_MODEL_TYPE:I = 0x1


# instance fields
.field private activeShowType:I

.field private activityText:Ljava/lang/String;

.field private activityType:Ljava/lang/String;

.field private arrowColor:I

.field private beginTime:Ljava/lang/String;

.field private browserUrl:Ljava/lang/String;

.field private btnBgN:I

.field private btnBgP:I

.field private btnTxtColor:I

.field private button:Ljava/lang/String;

.field private buttonBgColorN:Ljava/lang/String;

.field private buttonBgColorP:Ljava/lang/String;

.field private buttonTextColor:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private dataId:Ljava/lang/String;

.field private displayType:Ljava/lang/String;

.field private expireTime:Ljava/lang/String;

.field private floatingCardData:Ljava/lang/String;

.field private gamePkgName:Ljava/lang/String;

.field private gamePkgNameCn:Ljava/lang/String;

.field private hasBubbleShow:Z

.field private hasClickTimes:I

.field private hasRedPointShow:Z

.field private hasShowTimes:I

.field private httpBrowserUrl:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private imgUrl:Ljava/lang/String;

.field private isCustomBtnColor:Z

.field private isCustomTextColor:Z

.field private itemRow:I

.field protected final mFormat:Ljava/text/SimpleDateFormat;

.field private maxClickTimes:I

.field private maxShowTimes:I

.field private modelType:I

.field private pageSource:I

.field private period:Ljava/lang/String;

.field private preReqeustTime:J

.field private priority:I

.field private recommendGame:Ljava/lang/String;

.field private recommendText:Ljava/lang/String;

.field private redirectType:I

.field private showPoint:I

.field private summary:Ljava/lang/String;

.field private summaryColorEnd:I

.field private summaryColorStart:I

.field private templateId:I

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private uid:I

.field private videoPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->modelType:I

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->mFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private isRecommendAppInstalled()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->recommendGame:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/model/ActiveModel;->recommendGame:Ljava/lang/String;

    invoke-static {v0, v1}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bindView()V
    .locals 0

    return-void
.end method

.method public canOpenByFloatingWindow()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->recommendGame:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->pageSource:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canOpenByFloatingWindowHttp()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->httpBrowserUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->pageSource:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public canShowBubble()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getShowPoint()I

    move-result v0

    const/4 v1, 0x2

    if-eq v1, v0, :cond_1

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public canShowRedPoint()Z
    .locals 3

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getShowPoint()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    const/4 v2, 0x3

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public createModelByJson(Lorg/json/JSONObject;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Luf/a;->a:Z

    const-string v1, "createModelByJson: "

    const-string v2, "ActiveModel"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setId(Ljava/lang/String;)V

    const-string v0, "dataId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setDataId(Ljava/lang/String;)V

    const-string v0, "gamePkgName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setGamePkgName(Ljava/lang/String;)V

    :cond_2
    const-string v0, "videoPkg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setGamePkgName(Ljava/lang/String;)V

    :cond_3
    const-string v0, "gamePkgNameCn"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setGamePkgNameCn(Ljava/lang/String;)V

    :cond_4
    const-string v0, "videoPkgCn"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setGamePkgNameCn(Ljava/lang/String;)V

    :cond_5
    const-string v0, "period"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setPeriod(Ljava/lang/String;)V

    const-string v0, "beginTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setBeginTime(Ljava/lang/String;)V

    const-string v0, "expireTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setExpireTime(Ljava/lang/String;)V

    const-string v0, "imgUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setImgUrl(Ljava/lang/String;)V

    const-string v0, "browserUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setBrowserUrl(Ljava/lang/String;)V

    const-string v0, "displayType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setDisplayType(Ljava/lang/String;)V

    const-string v0, "showPoint"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setShowPoint(I)V

    const-string v0, "activityText"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setActivityText(Ljava/lang/String;)V

    const-string v0, "preReqeustTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/miui/gamebooster/model/ActiveModel;->setPreReqeustTime(J)V

    const-string v0, "hasBubbleShow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setHasBubbleShow(Z)V

    const-string v0, "hasRedPointShow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setHasRedPointShow(Z)V

    const-string v0, "recommendGame"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setRecommendGame(Ljava/lang/String;)V

    const-string v0, "showLimit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setMaxShowTimes(I)V

    const-string v0, "hasShowTimes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setHasShowTimes(I)V

    const-string v0, "clickLimit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setMaxClickTimes(I)V

    const-string v0, "hasClickTimes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setHasClickTimes(I)V

    const/4 v0, -0x1

    const-string v3, "redirectType"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setRedirectType(I)V

    const-string v0, "button"

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setButton(Ljava/lang/String;)V

    const-string v0, "title"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setTitle(Ljava/lang/String;)V

    const-string v0, "summary"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setSummary(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v4, "priority"

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setPriority(I)V

    const/4 v0, 0x1

    :try_start_0
    const-string v4, "buttonTextColor"

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "buttonBgColorN"

    invoke-virtual {p1, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "buttonBgColorP"

    invoke-virtual {p1, v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/miui/gamebooster/model/ActiveModel;->btnTxtColor:I

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/miui/gamebooster/model/ActiveModel;->btnBgN:I

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/miui/gamebooster/model/ActiveModel;->btnBgP:I

    iput-boolean v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->isCustomBtnColor:Z

    invoke-virtual {p0, v4}, Lcom/miui/gamebooster/model/ActiveModel;->setButtonTextColor(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/miui/gamebooster/model/ActiveModel;->setButtonBgColorN(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/miui/gamebooster/model/ActiveModel;->setButtonBgColorP(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-static {v2, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_0
    const-string v1, "activeShowType"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setActiveShowType(I)V

    const-string v0, "floatingCardData"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setFloatingCardData(Ljava/lang/String;)V

    const-string v0, "activityType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setActivityType(Ljava/lang/String;)V

    const/4 v0, 0x2

    const-string v1, "pageSource"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setPageSource(I)V

    const-string v0, "httpBrowserUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->setHttpBrowserUrl(Ljava/lang/String;)V

    const-string v0, "templateId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/model/ActiveModel;->setTemplateId(I)V

    return-void
.end method

.method protected formatTime(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->mFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide v0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "format error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ActiveModel"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public getActiveShowType()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->activeShowType:I

    return v0
.end method

.method public getActivityText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->activityText:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->activityType:Ljava/lang/String;

    return-object v0
.end method

.method public getArrowColor()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->arrowColor:I

    return v0
.end method

.method public getBeginTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->beginTime:Ljava/lang/String;

    return-object v0
.end method

.method public getBrowserUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->browserUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBtnBgN()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->btnBgN:I

    return v0
.end method

.method public getBtnBgP()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->btnBgP:I

    return v0
.end method

.method public getBtnTxtColor()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->btnTxtColor:I

    return v0
.end method

.method public getButton()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->button:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonBgColorN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->buttonBgColorN:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonBgColorP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->buttonBgColorP:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonTextColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->buttonTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getDataId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->dataId:Ljava/lang/String;

    return-object v0
.end method

.method public getDislikeId()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/gamebooster/model/ActiveModel;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/model/ActiveModel;->expireTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->displayType:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->expireTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFloatingCardData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->floatingCardData:Ljava/lang/String;

    return-object v0
.end method

.method public getGamePkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->gamePkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getGamePkgNameCn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->gamePkgNameCn:Ljava/lang/String;

    return-object v0
.end method

.method public getHasClickTimes()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->hasClickTimes:I

    return v0
.end method

.method public getHasShowTimes()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->hasShowTimes:I

    return v0
.end method

.method public getHttpBrowserUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->httpBrowserUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getItemRow()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->itemRow:I

    return v0
.end method

.method public getMaxClickTimes()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->maxClickTimes:I

    return v0
.end method

.method public getMaxShowTimes()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->maxShowTimes:I

    return v0
.end method

.method public getModelType()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->modelType:I

    return v0
.end method

.method public getPageSource()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->pageSource:I

    return v0
.end method

.method public getPeriod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->period:Ljava/lang/String;

    return-object v0
.end method

.method public getPreReqeustTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->preReqeustTime:J

    return-wide v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->priority:I

    return v0
.end method

.method public getRecommendGame()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->recommendGame:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->recommendText:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectType()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->redirectType:I

    return v0
.end method

.method public getShowPoint()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->showPoint:I

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getSummaryColorEnd()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->summaryColorEnd:I

    return v0
.end method

.method public getSummaryColorStart()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->summaryColorStart:I

    return v0
.end method

.method public getTemplateId()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->templateId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->uid:I

    return v0
.end method

.method public getVideoPkg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->videoPkg:Ljava/lang/String;

    return-object v0
.end method

.method public increaseClickTimes()V
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->hasClickTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->hasClickTimes:I

    return-void
.end method

.method public increaseShowTimes()V
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->hasShowTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->hasShowTimes:I

    return-void
.end method

.method public isActiveDurationValid()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getBeginTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/gamebooster/model/ActiveModel;->formatTime(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getExpireTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/gamebooster/model/ActiveModel;->formatTime(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAdType()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "001"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected isClickTimesValid()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getMaxClickTimes()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getHasClickTimes()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getMaxClickTimes()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isCustomBtnColor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->isCustomBtnColor:Z

    return v0
.end method

.method public isCustomTextColor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->isCustomTextColor:Z

    return v0
.end method

.method public isDownloadDelay()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->activityType:Ljava/lang/String;

    const-string v1, "downloadLater"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->activityType:Ljava/lang/String;

    const-string v1, "download"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFunction()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->type:Ljava/lang/String;

    const-string v1, "002"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isHandleByFloatingWindow()Z
    .locals 4

    invoke-static {}, Lve/g;->m()Lve/g;

    move-result-object v0

    invoke-virtual {v0}, Lve/g;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->activeShowType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->pageSource:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->recommendGame:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Lcom/miui/gamebooster/model/ActiveModel;->pageSource:I

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Lcom/miui/gamebooster/model/ActiveModel;->httpBrowserUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public isHasBubbleShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->hasBubbleShow:Z

    return v0
.end method

.method public isHasRedPointShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->hasRedPointShow:Z

    return v0
.end method

.method protected isShowTimesValid()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getMaxShowTimes()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getHasShowTimes()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getMaxShowTimes()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSupportOpenBigWindow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 4

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->isShowTimesValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->isClickTimesValid()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->isActiveDurationValid()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/miui/gamebooster/model/ActiveModel;->isRecommendAppInstalled()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lr6/b;->b(Landroid/content/Context;)Lr6/b;

    move-result-object v0

    invoke-virtual {v0}, Lr6/b;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->isHandleByFloatingWindow()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->redirectType:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    invoke-static {p0}, Lh8/k;->w(Lcom/miui/gamebooster/model/ActiveModel;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->httpBrowserUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    :cond_3
    if-ne v0, v2, :cond_4

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/model/ActiveModel;->browserUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Leg/i;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->browserUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveModel;->httpBrowserUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    :goto_0
    return v1
.end method

.method public onClick()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lve/d;->d:Lve/d;

    invoke-static {p1, p0, v0}, Lve/e;->a(Landroid/content/Context;Lcom/miui/gamebooster/model/ActiveModel;Lve/d;)Z

    return-void
.end method

.method protected putCustomData(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public setActiveShowType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->activeShowType:I

    return-void
.end method

.method public setActivityText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->activityText:Ljava/lang/String;

    return-void
.end method

.method public setActivityType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->activityType:Ljava/lang/String;

    return-void
.end method

.method public setArrowColor(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->arrowColor:I

    return-void
.end method

.method public setBeginTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->beginTime:Ljava/lang/String;

    return-void
.end method

.method public setBrowserUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->browserUrl:Ljava/lang/String;

    return-void
.end method

.method public setBtnBgN(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->btnBgN:I

    return-void
.end method

.method public setBtnBgP(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->btnBgP:I

    return-void
.end method

.method public setBtnTxtColor(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->btnTxtColor:I

    return-void
.end method

.method public setButton(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->button:Ljava/lang/String;

    return-void
.end method

.method public setButtonBgColorN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->buttonBgColorN:Ljava/lang/String;

    return-void
.end method

.method public setButtonBgColorP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->buttonBgColorP:Ljava/lang/String;

    return-void
.end method

.method public setButtonTextColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->buttonTextColor:Ljava/lang/String;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->channel:Ljava/lang/String;

    return-void
.end method

.method public setDataId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->dataId:Ljava/lang/String;

    return-void
.end method

.method public setDisplayType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->displayType:Ljava/lang/String;

    return-void
.end method

.method public setExpireTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->expireTime:Ljava/lang/String;

    return-void
.end method

.method public setFloatingCardData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->floatingCardData:Ljava/lang/String;

    return-void
.end method

.method public setGamePkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->gamePkgName:Ljava/lang/String;

    return-void
.end method

.method public setGamePkgNameCn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->gamePkgNameCn:Ljava/lang/String;

    return-void
.end method

.method public setHasBubbleShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->hasBubbleShow:Z

    return-void
.end method

.method public setHasClickTimes(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->hasClickTimes:I

    return-void
.end method

.method public setHasRedPointShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->hasRedPointShow:Z

    return-void
.end method

.method public setHasShowTimes(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->hasShowTimes:I

    return-void
.end method

.method public setHttpBrowserUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->httpBrowserUrl:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->id:Ljava/lang/String;

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setItemRow(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->itemRow:I

    return-void
.end method

.method public setMaxClickTimes(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->maxClickTimes:I

    return-void
.end method

.method public setMaxShowTimes(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->maxShowTimes:I

    return-void
.end method

.method public setModelType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->modelType:I

    return-void
.end method

.method public setPageSource(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->pageSource:I

    return-void
.end method

.method public setPeriod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->period:Ljava/lang/String;

    return-void
.end method

.method public setPreReqeustTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->preReqeustTime:J

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->priority:I

    return-void
.end method

.method public setRecommendGame(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->recommendGame:Ljava/lang/String;

    return-void
.end method

.method public setRecommendText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->recommendText:Ljava/lang/String;

    return-void
.end method

.method public setRedirectType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->redirectType:I

    return-void
.end method

.method public setShowPoint(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->showPoint:I

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->summary:Ljava/lang/String;

    return-void
.end method

.method public setSummaryColorEnd(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->summaryColorEnd:I

    return-void
.end method

.method public setSummaryColorStart(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->summaryColorStart:I

    return-void
.end method

.method public setTemplateId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->templateId:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->type:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->uid:I

    return-void
.end method

.method public setVideoPkg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveModel;->videoPkg:Ljava/lang/String;

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "activityText"

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->activityText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gamePkgNameCn"

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->gamePkgNameCn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gamePkgName"

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->gamePkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dataId"

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->dataId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "period"

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->period:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "beginTime"

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->beginTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "expireTime"

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->expireTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "imgUrl"

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "browserUrl"

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->browserUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "displayType"

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->displayType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "showPoint"

    iget v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->showPoint:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "preReqeustTime"

    iget-wide v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->preReqeustTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "hasBubbleShow"

    iget-boolean v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->hasBubbleShow:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "hasRedPointShow"

    iget-boolean v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->hasRedPointShow:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "recommendGame"

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->recommendGame:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "redirectType"

    iget v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->redirectType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "button"

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->button:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "summary"

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "buttonTextColor"

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->buttonTextColor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "buttonBgColorN"

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->buttonBgColorN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "buttonBgColorP"

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->buttonBgColorP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "activeShowType"

    iget v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->activeShowType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "floatingCardData"

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->floatingCardData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "showLimit"

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getMaxShowTimes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "hasShowTimes"

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getHasShowTimes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "clickLimit"

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getMaxClickTimes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "hasClickTimes"

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getHasClickTimes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "pageSource"

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getPageSource()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "httpBrowserUrl"

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->httpBrowserUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "templateId"

    iget v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->templateId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "priority"

    iget v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->priority:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "activityType"

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->activityType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveModel;->putCustomData(Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ActiveModel"

    const-string v2, "json to string error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActiveModel{, channel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/model/ActiveModel;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gamePkgName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->gamePkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", period=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->period:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", beginTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->beginTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", expireTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->expireTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", browserUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->browserUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", httpBrowserUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->httpBrowserUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", showPoint="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->showPoint:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maxShowTimes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->maxShowTimes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", hasShowTimes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->hasShowTimes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", recommendText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->recommendText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoPkg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->videoPkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", redirectType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->redirectType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", recommendGame=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->recommendGame:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", button=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->button:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", summary=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->summary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pageSource="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->pageSource:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", activityType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->activityType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", activeShowType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->activeShowType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", floatingCardData=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveModel;->floatingCardData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
