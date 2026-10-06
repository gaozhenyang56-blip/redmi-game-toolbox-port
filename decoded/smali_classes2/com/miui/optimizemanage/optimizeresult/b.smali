.class public Lcom/miui/optimizemanage/optimizeresult/b;
.super Lcom/miui/optimizemanage/optimizeresult/c;
.source "SourceFile"

# interfaces
.implements Lx4/p$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizemanage/optimizeresult/b$b;,
        Lcom/miui/optimizemanage/optimizeresult/b$c;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field protected C:Ljava/lang/String;

.field private D:J

.field private E:Z

.field private F:I

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field protected transient M:Ljava/lang/Object;

.field protected transient N:Landroid/view/View;

.field protected O:Ljava/lang/String;

.field protected P:I

.field protected Q:I

.field protected R:I

.field protected S:I

.field protected T:I

.field protected U:I

.field protected V:I

.field private a:I

.field private b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field protected i:I

.field protected j:[Ljava/lang/String;

.field private k:J

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:I

.field private x:Ljava/lang/String;

.field private y:[Ljava/lang/String;

.field private z:[Ljava/lang/String;


# direct methods
.method public constructor <init>(ILorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/optimizemanage/optimizeresult/c;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->j:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->F:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->P:I

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->Q:I

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->R:I

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->S:I

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->T:I

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->U:I

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->V:I

    invoke-virtual {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/c;->setLayoutId(I)V

    invoke-direct {p0, p2}, Lcom/miui/optimizemanage/optimizeresult/b;->r(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/optimizemanage/optimizeresult/b;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->k:J

    return-wide v0
.end method

.method static synthetic b(Lcom/miui/optimizemanage/optimizeresult/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/optimizemanage/optimizeresult/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/optimizemanage/optimizeresult/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->G:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/optimizemanage/optimizeresult/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->L:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/optimizemanage/optimizeresult/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->H:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/miui/optimizemanage/optimizeresult/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/optimizemanage/optimizeresult/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->B:Ljava/lang/String;

    return-object p0
.end method

.method private r(Lorg/json/JSONObject;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->a:I

    const-string v0, "dataId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->b:Ljava/lang/String;

    const-string v0, "appName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->c:Ljava/lang/String;

    :cond_1
    const-string v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->d:Ljava/lang/String;

    const-string v0, "source"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->g:Ljava/lang/String;

    const-string v0, "landingPageUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->h:Ljava/lang/String;

    const-string v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->i:I

    const-string v0, "cta"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->C:Ljava/lang/String;

    const-wide/16 v0, -0x1

    const-string v2, "allDownloadNum"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->k:J

    invoke-static {v0, v1}, Ll4/a;->j(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->l:Ljava/lang/String;

    const-string v0, "iconUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->f:Ljava/lang/String;

    const-string v0, "actionUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->m:Ljava/lang/String;

    const-string v0, "deeplink"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->n:Ljava/lang/String;

    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->o:Ljava/lang/String;

    const-string v0, "ex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->p:Ljava/lang/String;

    const-string v0, "appRef"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->q:Ljava/lang/String;

    const-string v0, "appClientId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->r:Ljava/lang/String;

    const-string v0, "appSignature"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->s:Ljava/lang/String;

    const-string v0, "nonce"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->t:Ljava/lang/String;

    const-string v0, "appChannel"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->u:Ljava/lang/String;

    const-string v0, "local"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->E:Z

    const-string v0, "floatCardData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->v:Ljava/lang/String;

    const-string v0, "appDeveloper"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->G:Ljava/lang/String;

    const-string v0, "appVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->H:Ljava/lang/String;

    const-string v0, "appPermission"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->I:Ljava/lang/String;

    const-string v0, "appPrivacy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->J:Ljava/lang/String;

    const-string v0, "appIntroduction"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->K:Ljava/lang/String;

    const-string v0, "dspName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->L:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->g:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->L:Ljava/lang/String;

    const-string v0, "parameters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "trackingStrategy"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->x:Ljava/lang/String;

    :cond_3
    const-string v0, "extra"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "validTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/optimizemanage/optimizeresult/b;->D:J

    const/4 v1, -0x1

    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/optimizemanage/optimizeresult/b;->F:I

    const-string v1, "autoOpen"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/optimizemanage/optimizeresult/b;->A:Z

    const-string v1, "button"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/b;->e:Ljava/lang/String;

    const-string v1, "buttonOpen"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/b;->B:Ljava/lang/String;

    const-string v1, "buttonColor2"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/optimizemanage/optimizeresult/b;->Q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v1, "buttonOpenColor2"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/optimizemanage/optimizeresult/b;->P:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-string v1, "btnBgColorNormal2"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "btnBgColorPressed2"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_2
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/optimizemanage/optimizeresult/b;->R:I

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/optimizemanage/optimizeresult/b;->S:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const-string v1, "btnBgColorOpenN2"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "btnBgColorOpenP2"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_3
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/optimizemanage/optimizeresult/b;->T:I

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/optimizemanage/optimizeresult/b;->U:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const-string v1, "btnBgColorDownloading2"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_4
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->V:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_4
    const-string v0, "imgUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v3, v1

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_5

    if-ge v3, v2, :cond_5

    iget-object v4, p0, Lcom/miui/optimizemanage/optimizeresult/b;->j:[Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const-string v0, "targetType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->w:I

    const-string v0, "viewMonitorUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/b;->y:[Ljava/lang/String;

    move v2, v1

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Lcom/miui/optimizemanage/optimizeresult/b;->y:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    const-string v0, "clickMonitorUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->z:[Ljava/lang/String;

    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->z:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method public static s(ILorg/json/JSONObject;)Lcom/miui/optimizemanage/optimizeresult/b;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, -0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x19

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x28

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    move p0, v1

    goto :goto_0

    :cond_0
    const p0, 0x7f0e0488

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-static {p0}, Lcom/miui/securitycenter/ad/view/b;->a(I)I

    move-result p0

    goto :goto_0

    :cond_2
    const p0, 0x7f0e0487

    goto :goto_0

    :cond_3
    const p0, 0x7f0e0485

    :goto_0
    if-eq p0, v1, :cond_4

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/b;

    invoke-direct {v0, p0, p1}, Lcom/miui/optimizemanage/optimizeresult/b;-><init>(ILorg/json/JSONObject;)V

    return-object v0

    :cond_4
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private u(Lcom/miui/optimizemanage/OptimizemanageMainActivity;Lcom/miui/optimizemanage/optimizeresult/b;)V
    .locals 6

    invoke-static {}, Lc3/k;->g()Lc3/k;

    move-result-object v0

    new-instance v2, Lcom/miui/optimizemanage/optimizeresult/b$c;

    invoke-direct {v2, p1, p2}, Lcom/miui/optimizemanage/optimizeresult/b$c;-><init>(Lcom/miui/optimizemanage/OptimizemanageMainActivity;Lcom/miui/optimizemanage/optimizeresult/b;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {v0, p2}, Lc3/k;->h(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-boolean p2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p2, :cond_0

    const-string p2, "com.miui.securitycenter_globaladevent"

    goto :goto_0

    :cond_0
    const-string p2, "com.miui.securitycenter_appmanager"

    :goto_0
    move-object v4, p2

    invoke-static {}, Lgb/b;->d()Lgb/b;

    move-result-object p2

    invoke-virtual {p2}, Lgb/b;->A()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/optimizemanage/optimizeresult/b;->l()Ljava/lang/String;

    move-result-object v5

    const-string v3, "com.miui.securitycenter"

    invoke-virtual/range {v0 .. v5}, Lc3/k;->j(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "OMAdvCardModel"

    const-string p2, "connect fail, maybe not support dislike window"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private v(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/b;->N:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->M:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/miui/optimizemanage/c;->b(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method private w(Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lqf/a$f;

    const-string v2, "CLICK"

    invoke-direct {v1, v2, p0}, Lqf/a$f;-><init>(Ljava/lang/String;Lcom/miui/optimizemanage/optimizeresult/b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lqf/a;->h(Landroid/content/Context;Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/b;->b:Ljava/lang/String;

    invoke-static {p1}, Lgb/a;->k(Ljava/lang/String;)V

    return-void
.end method

.method private x(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lqf/a$f;

    const-string v2, "APP_LAUNCH_SUCCESS_DEEPLINK"

    invoke-direct {v1, v2, p0}, Lqf/a$f;-><init>(Ljava/lang/String;Lcom/miui/optimizemanage/optimizeresult/b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v0}, Lqf/a;->h(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/optimizemanage/optimizeresult/d;
    .locals 1

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/b$b;

    invoke-direct {v0, p1}, Lcom/miui/optimizemanage/optimizeresult/b$b;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getAdAppChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getAdAppClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getAdAppRef()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getAdAppSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getAdAutoOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->A:Z

    return v0
.end method

.method public getAdDeeplink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getAdEx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getAdFloatCardData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getAdLandingPageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getAdNonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getAdPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCardName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected i(Lcom/miui/optimizemanage/OptimizemanageMainActivity;Lcom/miui/optimizemanage/optimizeresult/b;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/optimizemanage/optimizeresult/b$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/optimizemanage/optimizeresult/b$a;-><init>(Lcom/miui/optimizemanage/optimizeresult/b;Lcom/miui/optimizemanage/OptimizemanageMainActivity;Lcom/miui/optimizemanage/optimizeresult/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isDownloadPause()Z
    .locals 2

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/optimizemanage/optimizeresult/b;->getAdPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsf/e;->g(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDownloading()Z
    .locals 2

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/optimizemanage/optimizeresult/b;->getAdPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsf/e;->h(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNeedTrack()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->z:[Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->O:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->x:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/c;->onClick(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/miui/optimizemanage/optimizeresult/b;->i:I

    const/16 v2, 0x2711

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7531

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7532

    if-ne v1, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    sparse-switch v0, :sswitch_data_0

    invoke-static {p0, p1}, Lx4/p;->c(Lx4/p$a;Landroid/content/Context;)V

    goto :goto_1

    :sswitch_0
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->J:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->I:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->K:Ljava/lang/String;

    :goto_0
    invoke-static {p1, v0}, Leg/i;->e(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_3

    :sswitch_3
    invoke-static {p0}, Lx4/p;->a(Lx4/p$a;)V

    goto :goto_3

    :sswitch_4
    invoke-direct {p0, p1, p0}, Lcom/miui/optimizemanage/optimizeresult/b;->u(Lcom/miui/optimizemanage/OptimizemanageMainActivity;Lcom/miui/optimizemanage/optimizeresult/b;)V

    goto :goto_3

    :sswitch_5
    invoke-static {p0, p1}, Lx4/p;->b(Lx4/p$a;Landroid/content/Context;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/b;->w(Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V

    goto :goto_3

    :cond_1
    :goto_2
    invoke-static {p1}, Lcom/miui/optimizemanage/c;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/b;->v(Landroid/view/View;)V

    :cond_2
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b01d8 -> :sswitch_5
        0x7f0b025b -> :sswitch_4
        0x7f0b0c25 -> :sswitch_4
        0x7f0b0c4d -> :sswitch_5
        0x7f0b0c4f -> :sswitch_3
        0x7f0b0c89 -> :sswitch_2
        0x7f0b0cb3 -> :sswitch_1
        0x7f0b0cb9 -> :sswitch_0
    .end sparse-switch
.end method

.method public q()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->y:[Ljava/lang/String;

    return-object v0
.end method

.method public trackAdDeeplinkLauncher(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/b;->x(Landroid/content/Context;)V

    return-void
.end method
