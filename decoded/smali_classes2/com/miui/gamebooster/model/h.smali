.class public final Lcom/miui/gamebooster/model/h;
.super Lcom/miui/gamebooster/model/i;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCasualGameBannerModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CasualGameBannerModel.kt\ncom/miui/gamebooster/model/CasualGameBannerModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n1855#2,2:101\n*S KotlinDebug\n*F\n+ 1 CasualGameBannerModel.kt\ncom/miui/gamebooster/model/CasualGameBannerModel\n*L\n84#1:101,2\n*E\n"
    }
.end annotation


# instance fields
.field private p:I

.field private q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/model/i;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gamebooster/model/h;->p:I

    const-string v0, "    |    "

    iput-object v0, p0, Lcom/miui/gamebooster/model/h;->t:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createModelByJson(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/gamebooster/model/i;->createModelByJson(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/miui/gamebooster/model/h;->p:I

    if-eqz p1, :cond_2

    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/model/h;->q:Ljava/lang/String;

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/model/h;->r:Ljava/lang/String;

    const-string v0, "deepLink"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/model/h;->s:Ljava/lang/String;

    iget p1, p0, Lcom/miui/gamebooster/model/h;->p:I

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/model/h;->r:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/model/h;->r:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/model/h;->s:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/model/ActiveModel;->setBrowserUrl(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getModelType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onClick()V
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iget v1, p0, Lcom/miui/gamebooster/model/h;->p:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/i;->g()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget-object v1, Lve/d;->c:Lve/d;

    invoke-static {v0, p0, v1}, Lve/e;->a(Landroid/content/Context;Lcom/miui/gamebooster/model/ActiveModel;Lve/d;)Z

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "casualGameBannerModel type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/gamebooster/model/h;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CasualGameBannerModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected putCustomData(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/gamebooster/model/i;->putCustomData(Lorg/json/JSONObject;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/model/h;->q:Ljava/lang/String;

    const-string v1, "icon"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/gamebooster/model/h;->r:Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/gamebooster/model/h;->s:Ljava/lang/String;

    const-string v1, "deepLink"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x1

    const-string v1, "showType"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method
