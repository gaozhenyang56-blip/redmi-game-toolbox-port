.class public Lcom/miui/common/card/models/FunctionCardModel;
.super Lcom/miui/common/card/models/BaseCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;
    }
.end annotation


# static fields
.field public static LOCAL_FUNCTION_ICONS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final RESOURCE:Landroid/content/res/Resources;

.field public static SHOW_ACTION_WHITE_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FunctionCardModel"

.field private static miuiVersion:Ljava/lang/String;


# instance fields
.field private ABtest:Ljava/lang/String;

.field private curModel:Lcom/miui/securityscan/model/AbsModel;

.field private funcTopBannerScrollDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/common/card/functions/FuncTopBannerScrollData;",
            ">;"
        }
    .end annotation
.end field

.field private transient function:Lcom/miui/common/card/functions/BaseFunction;

.field private functionId:I

.field private gridFunctionData:Lcom/miui/common/card/GridFunctionData;

.field private gridFunctionDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;"
        }
    .end annotation
.end field

.field private imgUrl:Ljava/lang/String;

.field private isHomePageFunc:Z

.field private isLongClickable:Z

.field private isNoDivider:Z

.field private needRemove:Z

.field private score:I

.field private statKey:Ljava/lang/String;

.field private template:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/miui/common/card/models/FunctionCardModel;->RESOURCE:Landroid/content/res/Resources;

    invoke-static {}, Lcom/miui/common/card/models/FunctionCardModel;->getMiuiVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/common/card/models/FunctionCardModel;->miuiVersion:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/common/card/models/FunctionCardModel;->LOCAL_FUNCTION_ICONS:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    const-string v1, "#Intent;action=miui.intent.action.GARBAGE_CLEANUP;end"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    const-string v1, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN;end"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    const-string v1, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_WECHAT;end"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    const-string v1, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_QQ;end"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    const-string v1, "#Intent;action=miui.intent.action.GARBAGE_UNINSTALL_APPS;end"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    const-string v1, "#Intent;action=miui.intent.action.GARBAGE_UNINSTALL_APPS_NEW;end"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    const-string v1, "#Intent;component=com.miui.cleanmaster/com.miui.optimizecenter.deepclean.largefile.LargeFilesActivity;end"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    const-string v1, "#Intent;action=miui.intent.action.GARBAGE_VIDEO_MANAGE;end"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    const-string v1, "#Intent;component=com.miui.cleanmaster/com.miui.optimizecenter.similarimage.ImageCategoryListActivity;end"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    const-string v1, "#Intent;component=com.miui.cleanmaster/com.miui.optimizecenter.deepclean.apk.ApkListActivity;end"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    const-string v1, "#Intent;component=com.miui.cleanmaster/com.miui.optimizecenter.deepclean.appdata.AppDataActivity;end"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    const-string v1, "#Intent;action=com.miui.cleaner.action.GARBAGE_VIDEO_CLEAN;end"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(ILcom/miui/securityscan/model/AbsModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->isLongClickable:Z

    iput-object p2, p0, Lcom/miui/common/card/models/FunctionCardModel;->curModel:Lcom/miui/securityscan/model/AbsModel;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/common/card/models/FunctionCardModel;)Lcom/miui/securityscan/model/AbsModel;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/FunctionCardModel;->curModel:Lcom/miui/securityscan/model/AbsModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/common/card/models/FunctionCardModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/common/card/models/FunctionCardModel;->isNoDivider:Z

    return p0
.end method

.method static synthetic access$200(Lcom/miui/common/card/models/FunctionCardModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/common/card/models/FunctionCardModel;->needRemove:Z

    return p0
.end method

.method static synthetic access$500(Lcom/miui/common/card/models/FunctionCardModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/common/card/models/FunctionCardModel;->isLongClickable:Z

    return p0
.end method

.method private static compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const-string v0, "\\."

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v2

    array-length v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v6, v0, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-le v5, v6, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    if-ne v5, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    array-length v3, v2

    array-length v4, v0

    if-eq v3, v4, :cond_3

    array-length v2, v2

    array-length p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v1, v2, p0

    goto :goto_2

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse error version1 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " version2 "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FunctionCardModel"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return v1
.end method

.method private static getMiuiVersion()Ljava/lang/String;
    .locals 9

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_5

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_3

    sget-boolean v1, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    sub-int/2addr v5, v4

    aget-object v1, v1, v5

    move v4, v3

    move v5, v4

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v7

    const/16 v8, 0x30

    if-lt v7, v8, :cond_2

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v6

    const/16 v7, 0x39

    if-gt v6, v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    sub-int/2addr v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    const/16 v1, 0x2e

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "FunctionCardModel"

    const-string v3, "getMiuiVersion error"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_2
    return-object v2
.end method

.method private static getReplaceImei()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Leg/c;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RuPJ0BCJNiaPpPV9"

    invoke-static {v1, v0}, Lx4/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, "%2B"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "FunctionCardModel"

    const-string v2, "getReplaceImei error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    return-object v0
.end method

.method private static handleDuplicateAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "#Intent;action=android.intent.action.SET_FIREWALL;end"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "#Intent;action=miui.intent.action.SET_FIREWALL;end"

    return-object p0

    :cond_1
    const-string v0, "#Intent;action=android.intent.action.VIEW_DATA_USAGE_SUMMARY;end"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "#Intent;action=miui.intent.action.NETWORKASSISTANT_ENTRANCE;end"

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static handleFuncTopBannerScrollDataList(Lorg/json/JSONObject;Lcom/miui/common/card/models/FunctionCardModel;)V
    .locals 8

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lcom/miui/common/card/models/FunctionCardModel;->getFuncTopBannerScrollDataList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const-string v1, "template"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/miui/common/card/functions/FuncTopBannerScrollData;

    invoke-direct {v2}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;-><init>()V

    const-string v3, "button"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->setButton(Ljava/lang/String;)V

    const-string v3, "buttonColor"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->setButtonColor(Ljava/lang/String;)V

    const-string v3, "icon"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->setIcon(Ljava/lang/String;)V

    const-string v3, "imgUrl"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->setImgUrl(Ljava/lang/String;)V

    const-string v3, "statKey"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->setStatKey(Ljava/lang/String;)V

    const-string v3, "summary"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->setSummary(Ljava/lang/String;)V

    const-string v3, "title"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->setTemplate(I)V

    const-string v3, "action"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->setAction(Ljava/lang/String;)V

    const-string v3, "functionId"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/common/card/models/FunctionCardModel;->handleDuplicateAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x98e4a1

    if-eq v3, v5, :cond_1

    const v5, 0x98e4a3

    if-ne v3, v5, :cond_5

    :cond_1
    const/4 v3, 0x0

    invoke-static {v4, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    const/16 v6, 0x585

    if-ne v1, v6, :cond_4

    const-string v1, "showFloatGuide"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "appVersion"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1, v4}, Lcom/miui/common/card/models/FunctionCardModel;->isShowFunc1407(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v5}, Lsf/d;->y(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v4}, Lcom/miui/common/card/models/FunctionCardModel;->isShowLocalFunction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {p0}, Lcom/miui/common/card/models/FunctionCardModel;->isCloudShowFunction(Lorg/json/JSONObject;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/miui/common/card/functions/CommonFunction;

    invoke-direct {p0, v5}, Lcom/miui/common/card/functions/CommonFunction;-><init>(Landroid/content/Intent;)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v1, :cond_3

    if-nez v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {p0, v3}, Lcom/miui/common/card/functions/CommonFunction;->setRecordClickState(Z)V

    :cond_3
    invoke-virtual {p0, v4}, Lcom/miui/common/card/functions/CommonFunction;->setActionUri(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->setCommonFunction(Lcom/miui/common/card/functions/BaseFunction;)V

    :goto_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/miui/common/card/functions/CommonFunction;

    invoke-direct {v1, v5}, Lcom/miui/common/card/functions/CommonFunction;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v1}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->setCommonFunction(Lcom/miui/common/card/functions/BaseFunction;)V

    invoke-static {v5}, Lsf/d;->y(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v4}, Lcom/miui/common/card/models/FunctionCardModel;->isShowLocalFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0}, Lcom/miui/common/card/models/FunctionCardModel;->isCloudShowFunction(Lorg/json/JSONObject;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_6

    invoke-virtual {p1, v0}, Lcom/miui/common/card/models/FunctionCardModel;->setFuncTopBannerScrollDataList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "FunctionCardModel"

    const-string v0, "handleFuncTopBannerScrollDataList error:"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    return-void
.end method

.method private static handleFunctionGrid(ILorg/json/JSONObject;Lcom/miui/common/card/models/TitleCardModel;)V
    .locals 3

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/miui/common/card/models/TitleCardModel;->getSubCardModelTemplate()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ne v0, p0, :cond_8

    :cond_0
    :try_start_0
    const-string v0, "action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/card/models/FunctionCardModel;->handleDuplicateAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    :cond_1
    iget-object v1, p2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/miui/common/card/models/FunctionCardModel;->parseGridFunctionData(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p1

    :goto_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_2
    const-string v1, "functionId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const v2, 0x98e4a1

    if-eq v1, v2, :cond_5

    const v2, 0x98e4a3

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const v2, 0x98e4a2

    if-ne v1, v2, :cond_7

    const-string v1, "https://api.jr.mi.com/activity/security/?from=insads_security_property_entry&partnerId=128"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&encryptImei="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/common/card/models/FunctionCardModel;->getReplaceImei()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/miui/common/card/models/FunctionCardModel;->parseGridFunctionData(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p1

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lsf/d;->y(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    :cond_6
    invoke-static {v0}, Lcom/miui/common/card/models/FunctionCardModel;->isShowLocalFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1}, Lcom/miui/common/card/models/FunctionCardModel;->isCloudShowFunction(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/miui/common/card/models/FunctionCardModel;->parseGridFunctionData(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse function card model , module "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FunctionCardModel"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_2
    invoke-virtual {p2, p0}, Lcom/miui/common/card/models/TitleCardModel;->setSubCardModelTemplate(I)V

    :cond_8
    return-void
.end method

.method private static isCloudShowFunction(Lorg/json/JSONObject;)Z
    .locals 11

    const-string v0, ","

    const-string v1, "unknown"

    const-string v2, "FunctionCardModel"

    const/4 v3, 0x1

    :try_start_0
    sget-boolean v4, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    const-string v4, "isAlphaSupport"

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v6, "alphaMiuiVersionStart"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "alphaMiuiVersionEnd"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/miui/common/card/models/FunctionCardModel;->miuiVersion:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/miui/common/card/models/FunctionCardModel;->isVersionContain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v4, :cond_0

    goto/16 :goto_0

    :cond_0
    if-nez v6, :cond_1

    move v6, v3

    goto/16 :goto_0

    :cond_1
    move v6, v5

    goto :goto_0

    :cond_2
    sget-boolean v4, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v4, :cond_5

    const-string v4, "isDevSupport"

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v6, "devMiuiVersionStart"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "devMiuiVersionEnd"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v3, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v3, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_4
    sget-object v8, Lcom/miui/common/card/models/FunctionCardModel;->miuiVersion:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/miui/common/card/models/FunctionCardModel;->isVersionContain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_5
    const-string v4, "isStableSupport"

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v6, "stableMiuiVersionStart"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "stableMiuiVersionEnd"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v3, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_6
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v3, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_7
    sget-object v8, Lcom/miui/common/card/models/FunctionCardModel;->miuiVersion:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/miui/common/card/models/FunctionCardModel;->isVersionContain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v4, :cond_1

    :goto_0
    const-string v4, "isAndroidApiSupport"

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v7, -0x1

    :try_start_1
    const-string v8, "androidApiLevelStart"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_2
    const-string v9, "parseInt apiLevel start error"

    invoke-static {v2, v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_8
    move v8, v7

    :goto_1
    :try_start_3
    const-string v9, "androidApiLevelEnd"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v9

    :try_start_4
    const-string v10, "parseInt apiLevel end error"

    invoke-static {v2, v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    move v9, v7

    :goto_2
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v8, v7, :cond_c

    if-eq v9, v7, :cond_b

    if-gt v8, v10, :cond_a

    if-lt v9, v10, :cond_a

    goto :goto_3

    :cond_a
    move v7, v5

    goto :goto_4

    :cond_b
    if-gt v8, v10, :cond_a

    :cond_c
    :goto_3
    move v7, v3

    :goto_4
    if-eqz v4, :cond_d

    goto :goto_5

    :cond_d
    if-nez v7, :cond_e

    move v7, v3

    goto :goto_5

    :cond_e
    move v7, v5

    :goto_5
    const-string v4, "isDeviceSupport"

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v8, "devices"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v8, "ro.product.device"

    invoke-static {v8, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    move v1, v3

    move v0, v5

    :goto_6
    array-length v9, p0

    if-ge v0, v9, :cond_12

    aget-object v1, p0, v0

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_7

    :cond_f
    add-int/lit8 v0, v0, 0x1

    move v1, v5

    goto :goto_6

    :cond_10
    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :cond_11
    :goto_7
    move v1, v3

    :cond_12
    :goto_8
    if-eqz v4, :cond_13

    goto :goto_9

    :cond_13
    if-nez v1, :cond_14

    move v1, v3

    goto :goto_9

    :cond_14
    move v1, v5

    :goto_9
    if-eqz v6, :cond_15

    if-eqz v7, :cond_15

    if-eqz v1, :cond_15

    goto :goto_a

    :cond_15
    move v3, v5

    :goto_a
    return v3

    :catch_2
    move-exception p0

    const-string v0, "cloud show function opt data error"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method private static isShowFunc1407(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lx4/f1;->n(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    return v2

    :cond_2
    if-nez p1, :cond_4

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0, p2}, Lpf/i;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v1
.end method

.method private static isShowLocalFunction(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lx4/k0;->f(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isVersionContain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    invoke-static {p2, p0}, Lcom/miui/common/card/models/FunctionCardModel;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz v0, :cond_1

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-ltz p0, :cond_0

    invoke-static {p2, p1}, Lcom/miui/common/card/models/FunctionCardModel;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-gtz p0, :cond_0

    :cond_2
    :goto_0
    return v1
.end method

.method public static parse(ILorg/json/JSONObject;Lcom/miui/common/card/models/TitleCardModel;Lcom/miui/common/card/models/FuncTopBannerScrollCnModel;Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel;Lcd/a;Lcom/miui/common/card/models/FuncListTopScrollCardModel;)Lcom/miui/common/card/models/FunctionCardModel;
    .locals 6

    const/16 v0, 0x580

    const/16 v1, 0x57f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_3

    const/16 v5, 0x585

    if-eq p0, v5, :cond_2

    const/16 p6, 0x642

    if-eq p0, p6, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    goto :goto_1

    :pswitch_0
    if-eqz p5, :cond_1

    invoke-static {p1, p5}, Lcom/miui/common/card/models/FunctionCardModel;->handleFuncTopBannerScrollDataList(Lorg/json/JSONObject;Lcom/miui/common/card/models/FunctionCardModel;)V

    goto :goto_1

    :cond_0
    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/miui/common/card/models/FunctionCardModel;->handleFunctionGrid(ILorg/json/JSONObject;Lcom/miui/common/card/models/TitleCardModel;)V

    goto :goto_1

    :pswitch_2
    if-eqz p4, :cond_1

    invoke-virtual {p4, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setHomePageFunc(Z)V

    invoke-static {p1, p4}, Lcom/miui/common/card/models/FunctionCardModel;->handleFuncTopBannerScrollDataList(Lorg/json/JSONObject;Lcom/miui/common/card/models/FunctionCardModel;)V

    goto :goto_1

    :pswitch_3
    if-eqz p3, :cond_1

    invoke-virtual {p3, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setHomePageFunc(Z)V

    invoke-static {p1, p3}, Lcom/miui/common/card/models/FunctionCardModel;->handleFuncTopBannerScrollDataList(Lorg/json/JSONObject;Lcom/miui/common/card/models/FunctionCardModel;)V

    goto :goto_1

    :pswitch_4
    new-instance p2, Lcom/miui/common/card/models/FuncTopBannerNew2CardModel;

    invoke-direct {p2}, Lcom/miui/common/card/models/FuncTopBannerNew2CardModel;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance p2, Lcom/miui/common/card/models/FuncTopBannerNewCardModel;

    invoke-direct {p2}, Lcom/miui/common/card/models/FuncTopBannerNewCardModel;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance p2, Lcom/miui/common/card/models/FuncTopBannerCardModel;

    invoke-direct {p2}, Lcom/miui/common/card/models/FuncTopBannerCardModel;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance p2, Lcom/miui/common/card/models/FuncListBannerCardModel;

    invoke-direct {p2}, Lcom/miui/common/card/models/FuncListBannerCardModel;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance p2, Lcom/miui/common/card/models/FuncLeftBannerCardModel;

    invoke-direct {p2}, Lcom/miui/common/card/models/FuncLeftBannerCardModel;-><init>()V

    :goto_0
    invoke-virtual {p2, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setHomePageFunc(Z)V

    goto :goto_2

    :cond_1
    :goto_1
    move-object p2, v2

    goto :goto_2

    :cond_2
    if-eqz p6, :cond_1

    invoke-virtual {p6, v4}, Lcom/miui/common/card/models/FunctionCardModel;->setHomePageFunc(Z)V

    invoke-static {p1, p6}, Lcom/miui/common/card/models/FunctionCardModel;->handleFuncTopBannerScrollDataList(Lorg/json/JSONObject;Lcom/miui/common/card/models/FunctionCardModel;)V

    goto :goto_1

    :cond_3
    new-instance p2, Lcom/miui/common/card/models/FuncListTopCardModel;

    invoke-direct {p2}, Lcom/miui/common/card/models/FuncListTopCardModel;-><init>()V

    invoke-virtual {p2, v3}, Lcom/miui/common/card/models/FuncListTopCardModel;->setClickable(Z)V

    goto :goto_0

    :cond_4
    new-instance p2, Lcom/miui/common/card/models/FuncListTopCardModel;

    invoke-direct {p2}, Lcom/miui/common/card/models/FuncListTopCardModel;-><init>()V

    invoke-virtual {p2, v4}, Lcom/miui/common/card/models/FuncListTopCardModel;->setClickable(Z)V

    goto :goto_0

    :goto_2
    if-eqz p2, :cond_b

    if-eqz p1, :cond_b

    invoke-virtual {p2, p0}, Lcom/miui/common/card/models/FunctionCardModel;->setTemplate(I)V

    const-string p3, "title"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/miui/common/card/models/BaseCardModel;->setTitle(Ljava/lang/String;)V

    const-string p3, "summary"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/miui/common/card/models/BaseCardModel;->setSummary(Ljava/lang/String;)V

    const-string p3, "button"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/miui/common/card/models/BaseCardModel;->setButton(Ljava/lang/String;)V

    const-string p3, "icon"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/miui/common/card/models/BaseCardModel;->setIcon(Ljava/lang/String;)V

    const-string p3, "imgUrl"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/miui/common/card/models/FunctionCardModel;->setImgUrl(Ljava/lang/String;)V

    const-string p3, "statKey"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/miui/common/card/models/FunctionCardModel;->setStatKey(Ljava/lang/String;)V

    const-string p3, "ABtest"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/miui/common/card/models/FunctionCardModel;->setABtest(Ljava/lang/String;)V

    :try_start_0
    const-string p3, "functionId"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    const-string p4, "action"

    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/miui/common/card/models/FunctionCardModel;->handleDuplicateAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const p5, 0x98e4a1

    if-eq p3, p5, :cond_6

    const p5, 0x98e4a3

    if-ne p3, p5, :cond_5

    goto :goto_3

    :cond_5
    const p0, 0x98e4a2

    if-ne p3, p0, :cond_b

    const-string p0, "https://api.jr.mi.com/activity/security/?from=insads_security_property_entry&partnerId=128"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&encryptImei="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/common/card/models/FunctionCardModel;->getReplaceImei()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    new-instance p1, Lcom/miui/common/card/functions/CommonFunction;

    invoke-direct {p1, p0}, Lcom/miui/common/card/functions/CommonFunction;-><init>(Landroid/content/Intent;)V

    goto :goto_5

    :cond_6
    :goto_3
    invoke-static {p4, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p3

    if-ne p0, v0, :cond_7

    invoke-virtual {p2, v2}, Lcom/miui/common/card/models/FunctionCardModel;->setFunction(Lcom/miui/common/card/functions/BaseFunction;)V

    goto :goto_6

    :cond_7
    if-ne p0, v1, :cond_a

    const-string p0, "showFloatGuide"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    const-string p5, "appVersion"

    invoke-virtual {p1, p5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5, p0, p4}, Lcom/miui/common/card/models/FunctionCardModel;->isShowFunc1407(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_b

    invoke-static {p3}, Lsf/d;->y(Landroid/content/Intent;)Z

    move-result p6

    if-eqz p6, :cond_b

    invoke-static {p4}, Lcom/miui/common/card/models/FunctionCardModel;->isShowLocalFunction(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_b

    invoke-static {p1}, Lcom/miui/common/card/models/FunctionCardModel;->isCloudShowFunction(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Lcom/miui/common/card/functions/CommonFunction;

    invoke-direct {p1, p3}, Lcom/miui/common/card/functions/CommonFunction;-><init>(Landroid/content/Intent;)V

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_9

    if-nez p0, :cond_9

    if-nez p0, :cond_8

    move p0, v4

    goto :goto_4

    :cond_8
    move p0, v3

    :goto_4
    invoke-virtual {p1, p0}, Lcom/miui/common/card/functions/CommonFunction;->setRecordClickState(Z)V

    :cond_9
    invoke-virtual {p1, p4}, Lcom/miui/common/card/functions/CommonFunction;->setActionUri(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {p2, p1}, Lcom/miui/common/card/models/FunctionCardModel;->setFunction(Lcom/miui/common/card/functions/BaseFunction;)V

    :goto_6
    move v3, v4

    goto :goto_7

    :cond_a
    invoke-static {p3}, Lsf/d;->y(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-static {p4}, Lcom/miui/common/card/models/FunctionCardModel;->isShowLocalFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-static {p1}, Lcom/miui/common/card/models/FunctionCardModel;->isCloudShowFunction(Lorg/json/JSONObject;)Z

    move-result p0

    if-eqz p0, :cond_b

    new-instance p0, Lcom/miui/common/card/functions/CommonFunction;

    invoke-direct {p0, p3}, Lcom/miui/common/card/functions/CommonFunction;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p2, p0}, Lcom/miui/common/card/models/FunctionCardModel;->setFunction(Lcom/miui/common/card/functions/BaseFunction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    const-string p1, "FunctionCardModel"

    const-string p3, "parseData error:"

    invoke-static {p1, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_7
    if-eqz v3, :cond_c

    move-object v2, p2

    :cond_c
    return-object v2

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x579
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseGridFunctionData(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/miui/common/card/GridFunctionData;
    .locals 3

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    invoke-direct {v0}, Lcom/miui/common/card/GridFunctionData;-><init>()V

    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/GridFunctionData;->setTitle(Ljava/lang/String;)V

    const-string v1, "summary"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/GridFunctionData;->setSummary(Ljava/lang/String;)V

    const-string v1, "functionId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/GridFunctionData;->setFunctionId(Ljava/lang/String;)V

    const-string v1, "icon14"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "icon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/miui/common/card/GridFunctionData;->setIcon(Ljava/lang/String;)V

    const-string v1, "template"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/GridFunctionData;->setTemplate(I)V

    const-string v1, "dataId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/GridFunctionData;->setDataId(Ljava/lang/String;)V

    const-string v1, "statKey"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    const-string v1, "ABtest"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/GridFunctionData;->setABtest(Ljava/lang/String;)V

    const-string v1, "newFeatureAlert"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/GridFunctionData;->setNewFeatureAlert(Z)V

    invoke-virtual {v0, p1}, Lcom/miui/common/card/GridFunctionData;->setAction(Ljava/lang/String;)V

    const-string p1, "H5ClickMonitoringLink"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/common/card/GridFunctionData;->setH5ClickMonitoringLink(Ljava/lang/String;)V

    const-string p1, "exposureMonitoringLink"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/common/card/GridFunctionData;->setExposureMonitoringLink(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getABtest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->ABtest:Ljava/lang/String;

    return-object v0
.end method

.method public getCurModel()Lcom/miui/securityscan/model/AbsModel;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->curModel:Lcom/miui/securityscan/model/AbsModel;

    return-object v0
.end method

.method public getFuncTopBannerScrollDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/common/card/functions/FuncTopBannerScrollData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->funcTopBannerScrollDataList:Ljava/util/List;

    return-object v0
.end method

.method public getFunction()Lcom/miui/common/card/functions/BaseFunction;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->function:Lcom/miui/common/card/functions/BaseFunction;

    return-object v0
.end method

.method public getFunctionId()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->functionId:I

    return v0
.end method

.method public getGridFunctionData()Lcom/miui/common/card/GridFunctionData;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->gridFunctionData:Lcom/miui/common/card/GridFunctionData;

    return-object v0
.end method

.method public getGridFunctionDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->gridFunctionDataList:Ljava/util/List;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->score:I

    return v0
.end method

.method public getStatKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->statKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->template:I

    return v0
.end method

.method public isHomePageFunc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->isHomePageFunc:Z

    return v0
.end method

.method public isLongClickable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->isLongClickable:Z

    return v0
.end method

.method public isNeedRemove()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->needRemove:Z

    return v0
.end method

.method public isNoDivider()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/FunctionCardModel;->isNoDivider:Z

    return v0
.end method

.method public setABtest(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->ABtest:Ljava/lang/String;

    return-void
.end method

.method public setFuncTopBannerScrollDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/common/card/functions/FuncTopBannerScrollData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->funcTopBannerScrollDataList:Ljava/util/List;

    return-void
.end method

.method public setFunction(Lcom/miui/common/card/functions/BaseFunction;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->function:Lcom/miui/common/card/functions/BaseFunction;

    return-void
.end method

.method public setFunctionId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->functionId:I

    return-void
.end method

.method public setGridFunctionData(Lcom/miui/common/card/GridFunctionData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->gridFunctionData:Lcom/miui/common/card/GridFunctionData;

    return-void
.end method

.method public setGridFunctionDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->gridFunctionDataList:Ljava/util/List;

    return-void
.end method

.method public setHomePageFunc(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->isHomePageFunc:Z

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setLongClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->isLongClickable:Z

    return-void
.end method

.method public setNeedRemove(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->needRemove:Z

    return-void
.end method

.method public setNoDivider(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->isNoDivider:Z

    return-void
.end method

.method public setScore(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->score:I

    return-void
.end method

.method public setStatKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->statKey:Ljava/lang/String;

    return-void
.end method

.method public setTemplate(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/FunctionCardModel;->template:I

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
