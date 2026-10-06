.class public Lcom/miui/gamebooster/model/ActiveNewModel;
.super Lcom/miui/gamebooster/model/ActiveModel;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/miui/gamebooster/globalgame/util/NoProguard;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/model/ActiveNewModel$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActiveNewModel"

.field public static final TEMPLATE_BUBBLE_TIPS:I = 0x1cd68

.field public static final TEMPLATE_CONTENT:I = 0x1cd60

.field public static final TEMPLATE_CONTENT_NORMAL:I = 0x1cd61

.field public static final TEMPLATE_TOOL:I = 0x1cd5f

.field public static final TEMPLATE_TOOL_HOT:I = 0x1cd62

.field public static final TEMPLATE_TOOL_NEW:I = 0x1cd64

.field private static final sIsGameCenterInstall:Z


# instance fields
.field private aiSearchUrl:Ljava/lang/String;

.field private bubbleButtonContent:Ljava/lang/String;

.field private bubbleContent:Ljava/lang/String;

.field private bubbleTitle:Ljava/lang/String;

.field private contentTag:Ljava/lang/String;

.field private contentTagColor:Ljava/lang/String;

.field private contentType:I

.field private depApkData:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private functionId:I

.field private layoutLocation:Ljava/lang/Integer;

.field private mentionType:Ljava/lang/String;

.field private relatedDataId:Ljava/lang/String;

.field private template:I

.field private webUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "com.xiaomi.gamecenter"

    invoke-static {v0, v1}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/gamebooster/model/ActiveNewModel;->sIsGameCenterInstall:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/model/ActiveModel;-><init>()V

    return-void
.end method


# virtual methods
.method public createModelByJson(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Luf/a;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create turbo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActiveNewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-super {p0, p1}, Lcom/miui/gamebooster/model/ActiveModel;->createModelByJson(Lorg/json/JSONObject;)V

    const-string v0, "functionId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveNewModel;->setFunctionId(I)V

    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveNewModel;->setDescription(Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveNewModel;->setContentType(I)V

    const-string v0, "contentTag"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveNewModel;->setContentTag(Ljava/lang/String;)V

    const-string v0, "tagColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveNewModel;->setContentTagColor(Ljava/lang/String;)V

    const-string v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveNewModel;->setTemplate(I)V

    const-string v0, "mentionType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveNewModel;->setMentionType(Ljava/lang/String;)V

    const-string v0, "bubbleTitle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveNewModel;->setBubbleTitle(Ljava/lang/String;)V

    const-string v0, "webUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveNewModel;->setWebUrl(Ljava/lang/String;)V

    const-string v0, "layoutLocation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveNewModel;->setLayoutLocation(Ljava/lang/Integer;)V

    const-string v0, "depApkData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveNewModel;->setDepApkData(Ljava/lang/String;)V

    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveNewModel;->setBubbleContent(Ljava/lang/String;)V

    const-string v0, "linkContent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveNewModel;->setBubbleButtonContent(Ljava/lang/String;)V

    const-string v0, "relatedDataId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/model/ActiveNewModel;->setRelatedDataId(Ljava/lang/String;)V

    const-string v0, "aiSearchUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/model/ActiveNewModel;->setAiSearchUrl(Ljava/lang/String;)V

    return-void
.end method

.method public getAiSearchUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->aiSearchUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBubbleButtonContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->bubbleButtonContent:Ljava/lang/String;

    return-object v0
.end method

.method public getBubbleContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->bubbleContent:Ljava/lang/String;

    return-object v0
.end method

.method public getBubbleTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->bubbleTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->contentTag:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTagColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->contentTagColor:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->contentType:I

    return v0
.end method

.method public getDepApkData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->depApkData:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFunctionId()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->functionId:I

    return v0
.end method

.method public getLayoutLocation()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->layoutLocation:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMentionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->mentionType:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedDataId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->relatedDataId:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->template:I

    return v0
.end method

.method public getWebUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->webUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isBigCard()Z
    .locals 2

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->template:I

    const v1, 0x1cd60

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportFunction(Ljava/lang/String;)Z
    .locals 4

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->functionId:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportFunction: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->functionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActiveNewModel"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->functionId:I

    sget v2, Lt6/a;->w:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_16

    sget v2, Lt6/a;->n:I

    if-ne v0, v2, :cond_0

    goto/16 :goto_4

    :pswitch_0
    invoke-static {}, La8/f0;->a()Z

    move-result p1

    return p1

    :pswitch_1
    invoke-static {}, La8/f0;->b()Z

    move-result p1

    return p1

    :pswitch_2
    return v1

    :cond_0
    sget v2, Lt6/a;->x:I

    if-ne v0, v2, :cond_2

    invoke-static {}, La8/g0;->a0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lt6/a;->o(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    :cond_2
    sget v2, Lt6/a;->y:I

    if-ne v0, v2, :cond_4

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_3

    invoke-static {}, La8/g0;->Z()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, La8/y0;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, La8/z;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1

    :cond_4
    sget v2, Lt6/a;->z:I

    if-ne v0, v2, :cond_5

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0, p1, v3}, Le7/b;->g(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_5
    sget v2, Lt6/a;->A:I

    if-ne v0, v2, :cond_6

    invoke-static {}, Li6/a;->h()Li6/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Li6/a;->j(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_6
    sget v2, Lt6/a;->h:I

    if-ne v0, v2, :cond_7

    invoke-static {}, La8/g0;->I()Z

    move-result p1

    return p1

    :cond_7
    sget v2, Lt6/a;->g:I

    if-ne v0, v2, :cond_8

    invoke-static {}, Lj8/s;->i()Z

    move-result p1

    return p1

    :cond_8
    sget v2, Lt6/a;->f:I

    if-ne v0, v2, :cond_9

    invoke-static {}, La8/g0;->C()Z

    move-result p1

    return p1

    :cond_9
    sget v2, Lt6/a;->j:I

    if-ne v0, v2, :cond_a

    invoke-static {}, La8/g0;->q0()Z

    move-result p1

    return p1

    :cond_a
    sget v2, Lt6/a;->k:I

    if-ne v0, v2, :cond_c

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-le p1, v0, :cond_b

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, La8/k2;->B(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_2

    :cond_b
    move v1, v3

    :goto_2
    return v1

    :cond_c
    sget v2, Lt6/a;->m:I

    if-ne v0, v2, :cond_d

    invoke-static {}, La8/j;->h()Z

    move-result p1

    return p1

    :cond_d
    sget v2, Lt6/a;->p:I

    if-ne v0, v2, :cond_e

    invoke-static {}, Lw6/i;->e()Z

    move-result p1

    return p1

    :cond_e
    sget v2, Lt6/a;->q:I

    if-ne v0, v2, :cond_10

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->G()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->L()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_3

    :cond_f
    move v1, v3

    :goto_3
    return v1

    :cond_10
    sget v2, Lt6/a;->s:I

    if-ne v0, v2, :cond_11

    invoke-static {}, La8/s0;->i()La8/s0;

    move-result-object v0

    invoke-virtual {v0, p1}, La8/s0;->t(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_11
    sget p1, Lt6/a;->t:I

    if-ne v0, p1, :cond_12

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->J()Z

    move-result p1

    return p1

    :cond_12
    sget p1, Lt6/a;->v:I

    if-ne v0, p1, :cond_13

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->I()Z

    move-result p1

    return p1

    :cond_13
    sget p1, Lt6/a;->u:I

    if-ne v0, p1, :cond_14

    invoke-static {}, La8/g0;->M()Z

    move-result p1

    return p1

    :cond_14
    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->isFunction()Z

    move-result p1

    if-eqz p1, :cond_15

    iget p1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->functionId:I

    invoke-static {p1}, Lt6/a;->n(I)Z

    move-result p1

    return p1

    :cond_15
    return v1

    :cond_16
    :goto_4
    invoke-static {}, Lp7/c;->a()Lp7/c;

    move-result-object p1

    invoke-virtual {p1}, Lp7/c;->c()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, La8/k2;->B(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_5

    :cond_17
    move v1, v3

    :goto_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x98e567
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isSupportOpenBigWindow()Z
    .locals 3

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveNewModel;->getTemplate()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x1cd60

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveNewModel;->getContentType()I

    move-result v0

    sget-object v2, Lcom/miui/gamebooster/model/ActiveNewModel$a;->b:Lcom/miui/gamebooster/model/ActiveNewModel$a;

    iget v2, v2, Lcom/miui/gamebooster/model/ActiveNewModel$a;->a:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getBrowserUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getBrowserUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "migamecenter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isValid()Z
    .locals 4

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveNewModel;->getTemplate()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x1cd60

    if-eq v0, v3, :cond_8

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveNewModel;->getTemplate()I

    move-result v0

    const v3, 0x1cd61

    if-ne v0, v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveNewModel;->getTemplate()I

    move-result v0

    const v3, 0x1cd5f

    if-eq v0, v3, :cond_4

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveNewModel;->getTemplate()I

    move-result v0

    const v3, 0x1cd62

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveNewModel;->getTemplate()I

    move-result v0

    const v3, 0x1cd68

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->isShowTimesValid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->isActiveDurationValid()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    invoke-super {p0}, Lcom/miui/gamebooster/model/ActiveModel;->isValid()Z

    move-result v0

    return v0

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveNewModel;->getFunctionId()I

    move-result v0

    if-lez v0, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->isActiveDurationValid()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getDataId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getBrowserUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    :cond_7
    :goto_1
    return v1

    :cond_8
    :goto_2
    sget-boolean v0, Lcom/miui/gamebooster/model/ActiveNewModel;->sIsGameCenterInstall:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getBrowserUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    :cond_9
    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveNewModel;->getWebUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getBrowserUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getBrowserUrl()Ljava/lang/String;

    move-result-object v0

    const-string v3, "http:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getBrowserUrl()Ljava/lang/String;

    move-result-object v0

    const-string v3, "https:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    move v1, v2

    :cond_b
    return v1
.end method

.method protected putCustomData(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "functionId"

    iget v1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->functionId:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "description"

    iget-object v1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->description:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "contentType"

    iget v1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->contentType:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "contentTag"

    iget-object v1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->contentTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tagColor"

    iget-object v1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->contentTagColor:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "template"

    iget v1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->template:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "webUrl"

    iget-object v1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->webUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mentionType"

    iget-object v1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->mentionType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "bubbleTitle"

    iget-object v1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->bubbleTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "layoutLocation"

    iget-object v1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->layoutLocation:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "depApkData"

    iget-object v1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->depApkData:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "content"

    iget-object v1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->bubbleContent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "linkContent"

    iget-object v1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->bubbleButtonContent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "relatedDataId"

    iget-object v1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->relatedDataId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "aiSearchUrl"

    iget-object v1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->aiSearchUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ActiveNewModel"

    const-string v1, "json to string error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setAiSearchUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->aiSearchUrl:Ljava/lang/String;

    return-void
.end method

.method public setBubbleButtonContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->bubbleButtonContent:Ljava/lang/String;

    return-void
.end method

.method public setBubbleContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->bubbleContent:Ljava/lang/String;

    return-void
.end method

.method public setBubbleTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->bubbleTitle:Ljava/lang/String;

    return-void
.end method

.method public setContentTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->contentTag:Ljava/lang/String;

    return-void
.end method

.method public setContentTagColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->contentTagColor:Ljava/lang/String;

    return-void
.end method

.method public setContentType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->contentType:I

    return-void
.end method

.method public setDepApkData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->depApkData:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->description:Ljava/lang/String;

    return-void
.end method

.method public setFunctionId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->functionId:I

    return-void
.end method

.method public setLayoutLocation(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->layoutLocation:Ljava/lang/Integer;

    return-void
.end method

.method public setMentionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->mentionType:Ljava/lang/String;

    return-void
.end method

.method public setRelatedDataId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->relatedDataId:Ljava/lang/String;

    return-void
.end method

.method public setTemplate(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->template:I

    return-void
.end method

.method public setWebUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->webUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActiveNewModel{functionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->functionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/ActiveModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "template="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->template:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contentTag=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->contentTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contentTagColor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->contentTagColor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contentType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->contentType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mentionType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->mentionType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bubbleTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/ActiveNewModel;->bubbleTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
