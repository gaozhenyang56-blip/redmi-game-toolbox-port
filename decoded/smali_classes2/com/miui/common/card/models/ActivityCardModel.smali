.class public Lcom/miui/common/card/models/ActivityCardModel;
.super Lcom/miui/common/card/models/BaseCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;
    }
.end annotation


# static fields
.field private static final HTTP:Ljava/lang/String; = "http"

.field private static final TAG:Ljava/lang/String; = "ActivityCardModel"


# instance fields
.field private appUrl:Ljava/lang/String;

.field private browserOpen:Z

.field private btnBgColorOpenN2:I

.field private btnBgColorOpenP2:I

.field private buttonColor2:I

.field private cornerTip:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private template:I

.field private url:Ljava/lang/String;

.field private usePosition:I


# direct methods
.method public constructor <init>(ILorg/json/JSONObject;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    invoke-direct {p0, p2}, Lcom/miui/common/card/models/ActivityCardModel;->init(Lorg/json/JSONObject;)V

    iput p3, p0, Lcom/miui/common/card/models/ActivityCardModel;->usePosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/common/card/models/ActivityCardModel;)I
    .locals 0

    iget p0, p0, Lcom/miui/common/card/models/ActivityCardModel;->template:I

    return p0
.end method

.method static synthetic access$100(Lcom/miui/common/card/models/ActivityCardModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/ActivityCardModel;->img:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/common/card/models/ActivityCardModel;)I
    .locals 0

    iget p0, p0, Lcom/miui/common/card/models/ActivityCardModel;->buttonColor2:I

    return p0
.end method

.method static synthetic access$300(Lcom/miui/common/card/models/ActivityCardModel;)I
    .locals 0

    iget p0, p0, Lcom/miui/common/card/models/ActivityCardModel;->btnBgColorOpenN2:I

    return p0
.end method

.method static synthetic access$400(Lcom/miui/common/card/models/ActivityCardModel;)I
    .locals 0

    iget p0, p0, Lcom/miui/common/card/models/ActivityCardModel;->btnBgColorOpenP2:I

    return p0
.end method

.method private init(Lorg/json/JSONObject;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "img"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->img:Ljava/lang/String;

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->title:Ljava/lang/String;

    const-string v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->summary:Ljava/lang/String;

    const-string v0, "cornerTip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->cornerTip:Ljava/lang/String;

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->url:Ljava/lang/String;

    const-string v0, "appUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->appUrl:Ljava/lang/String;

    const-string v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->template:I

    const-string v0, "button"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->button:Ljava/lang/String;

    const-string v0, "dataId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->dataId:Ljava/lang/String;

    const/4 v0, 0x1

    const-string v1, "browserOpen"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->browserOpen:Z

    const-string v0, "buttonColor2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "btnBgColorOpenN2"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "btnBgColorOpenP2"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "ActivityCardModel"

    if-nez v3, :cond_1

    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/common/card/models/ActivityCardModel;->buttonColor2:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_1
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->btnBgColorOpenN2:I

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/common/card/models/ActivityCardModel;->btnBgColorOpenP2:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "btnBgColorOpenN2,btnBgColorOpenP2"

    invoke-static {v4, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private static isUrlAvailable(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lsf/d;->y(Landroid/content/Intent;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    const-string v1, "ActivityCardModel"

    const-string v2, "Intent parse url error :"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static parse(IILorg/json/JSONObject;)Lcom/miui/common/card/models/ActivityCardModel;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/miui/common/card/models/ActivityBigBannerCardModel;

    invoke-direct {p1, p2, p0}, Lcom/miui/common/card/models/ActivityBigBannerCardModel;-><init>(Lorg/json/JSONObject;I)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/miui/common/card/models/ActivitySmallButtonCardModel;

    invoke-direct {p1, p2, p0}, Lcom/miui/common/card/models/ActivitySmallButtonCardModel;-><init>(Lorg/json/JSONObject;I)V

    :goto_0
    if-eqz p1, :cond_3

    iget-object p0, p1, Lcom/miui/common/card/models/ActivityCardModel;->appUrl:Ljava/lang/String;

    invoke-static {p0}, Lcom/miui/common/card/models/ActivityCardModel;->isUrlAvailable(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/miui/common/card/models/ActivityCardModel;->url:Ljava/lang/String;

    invoke-static {p0}, Lcom/miui/common/card/models/ActivityCardModel;->isUrlAvailable(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_4

    move-object v1, p1

    :cond_4
    return-object v1
.end method

.method private startNewActivity(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "http"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->browserOpen:Z

    if-nez v0, :cond_0

    invoke-static {p2, p3, p1}, Leg/i;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p3, p1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ActivityCardModel"

    const-string p3, "handle click error : "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getAppUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->appUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCornerTip()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->cornerTip:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->url:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/miui/common/card/models/BaseCardModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/card/models/ActivityCardModel;->appUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/common/card/models/ActivityCardModel;->isUrlAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/common/card/models/ActivityCardModel;->appUrl:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, v0, p1, v1}, Lcom/miui/common/card/models/ActivityCardModel;->startNewActivity(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/common/card/models/ActivityCardModel;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/common/card/models/ActivityCardModel;->isUrlAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/common/card/models/ActivityCardModel;->url:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :goto_1
    iget p1, p0, Lcom/miui/common/card/models/ActivityCardModel;->usePosition:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/common/card/models/BaseCardModel;->dataId:Ljava/lang/String;

    invoke-static {p1}, Lqf/c;->r0(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/miui/common/card/models/BaseCardModel;->dataId:Ljava/lang/String;

    invoke-static {p1}, Lqf/c;->V(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/miui/common/card/models/BaseCardModel;->dataId:Ljava/lang/String;

    invoke-static {p1}, Lqf/c;->z(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setAppUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ActivityCardModel;->appUrl:Ljava/lang/String;

    return-void
.end method

.method public setCornerTip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ActivityCardModel;->cornerTip:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ActivityCardModel;->img:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ActivityCardModel;->url:Ljava/lang/String;

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
