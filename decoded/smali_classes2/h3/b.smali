.class public Lh3/b;
.super Lh3/f;
.source "SourceFile"

# interfaces
.implements Lx4/p$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh3/b$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:I

.field private I:I

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:I

.field public M:Z

.field private N:Z

.field private i:I

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:[Ljava/lang/String;

.field private u:[Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lh3/f;-><init>(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lh3/b;->M:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lh3/b;->N:Z

    invoke-direct {p0, p2}, Lh3/b;->z(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static A(ILorg/json/JSONObject;I)Lh3/b;
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/16 v0, 0x51

    if-ne p0, v0, :cond_2

    new-instance p0, Lh3/a;

    if-eqz p2, :cond_1

    const p2, 0x7f0e0064

    goto :goto_1

    :cond_1
    const p2, 0x7f0e0063

    :goto_1
    invoke-direct {p0, p2, p1}, Lh3/a;-><init>(ILorg/json/JSONObject;)V

    return-object p0

    :cond_2
    new-instance p0, Lh3/b;

    if-eqz p2, :cond_3

    const p2, 0x7f0e0065

    goto :goto_2

    :cond_3
    const p2, 0x7f0e0062

    :goto_2
    invoke-direct {p0, p2, p1}, Lh3/b;-><init>(ILorg/json/JSONObject;)V

    return-object p0
.end method

.method private B(Landroid/content/Context;Landroid/widget/TextView;Lh3/b;)V
    .locals 6

    invoke-static {p1}, Lsf/h;->c(Landroid/content/Context;)Lsf/h;

    move-result-object p3

    iget-object v0, p0, Lh3/b;->o:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lsf/h;->d(Ljava/lang/String;)Z

    move-result p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06015c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v2, 0x7f060193

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v3, 0x7f06007e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget v3, p0, Lh3/b;->L:I

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-object v4, p0, Lh3/b;->J:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "AMRecommendItemModel"

    if-nez v4, :cond_1

    :try_start_0
    iget-object v4, p0, Lh3/b;->J:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v4, "parse button bg color failed"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    iget-object v4, p0, Lh3/b;->K:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    :try_start_1
    iget-object v4, p0, Lh3/b;->K:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const-string v4, "parse button text color failed"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    new-instance v4, Lj3/d;

    invoke-direct {v4, p1}, Lj3/d;-><init>(Landroid/content/Context;)V

    iget p1, p0, Lh3/b;->L:I

    invoke-virtual {v4, p1}, Lj3/d;->a(I)V

    if-eqz p3, :cond_4

    iget-object p1, p0, Lh3/b;->n:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f120f71

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lh3/b;->n:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    sget-object p1, Lj3/d$a;->c:Lj3/d$a;

    invoke-virtual {v4, p1}, Lj3/d;->d(Lj3/d$a;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    :cond_4
    invoke-virtual {p0}, Lh3/b;->isDownloadPause()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    :cond_5
    iget p1, p0, Lh3/b;->H:I

    const p3, 0x7f1206d5

    const/4 v1, -0x1

    if-eq p1, v1, :cond_a

    const/4 v5, 0x5

    if-eq p1, v5, :cond_9

    const/16 v5, 0xa

    if-eq p1, v5, :cond_8

    const/4 v5, 0x1

    if-eq p1, v5, :cond_a

    const/4 v5, 0x2

    if-eq p1, v5, :cond_9

    const/4 p3, 0x3

    if-eq p1, p3, :cond_7

    iget-object p1, p0, Lh3/b;->m:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f120c65

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lh3/b;->m:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object p1, Lj3/d$a;->a:Lj3/d$a;

    invoke-virtual {v4, p1}, Lj3/d;->d(Lj3/d$a;)V

    invoke-virtual {v4, v2}, Lj3/d;->b(I)V

    goto :goto_7

    :cond_7
    const p1, 0x7f120c6c

    :goto_5
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    :cond_8
    const p1, 0x7f12058f

    goto :goto_5

    :cond_9
    iget p1, p0, Lh3/b;->I:I

    if-eq p1, v1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p3, p0, Lh3/b;->I:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "%"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, p0, Lh3/b;->I:I

    invoke-virtual {v4, p1}, Lj3/d;->c(I)V

    goto :goto_6

    :cond_a
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    :goto_6
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object p1, Lj3/d$a;->b:Lj3/d$a;

    invoke-virtual {v4, p1}, Lj3/d;->d(Lj3/d$a;)V

    :goto_7
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private E(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lh3/b;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "APP_LAUNCH_SUCCESS_DEEPLINK"

    invoke-virtual {p0, p1, v0}, Lh3/b;->s(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic j(Lh3/b;Landroid/content/Context;Landroid/widget/TextView;Lh3/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lh3/b;->B(Landroid/content/Context;Landroid/widget/TextView;Lh3/b;)V

    return-void
.end method

.method static synthetic k(Lh3/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh3/b;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lh3/b;)Z
    .locals 0

    iget-boolean p0, p0, Lh3/b;->N:Z

    return p0
.end method

.method static synthetic m(Lh3/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lh3/b;->N:Z

    return p1
.end method

.method static synthetic n(Lh3/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh3/b;->C:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lh3/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh3/b;->D:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p(Lh3/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh3/b;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic q(Lh3/b;)I
    .locals 0

    iget p0, p0, Lh3/b;->i:I

    return p0
.end method

.method static synthetic r(Lh3/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh3/b;->o:Ljava/lang/String;

    return-object p0
.end method

.method private z(Lorg/json/JSONObject;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lh3/b;->i:I

    const-string v0, "appName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh3/b;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh3/b;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lh3/b;->M:Z

    :cond_1
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh3/b;->o:Ljava/lang/String;

    const-string v0, "iconUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh3/b;->l:Ljava/lang/String;

    const-string v0, "button"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lh3/b;->m:Ljava/lang/String;

    const-string v2, "buttonOpen"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lh3/b;->n:Ljava/lang/String;

    const-string v3, "deeplink"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lh3/b;->p:Ljava/lang/String;

    const-string v3, "landingPageUrl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lh3/b;->q:Ljava/lang/String;

    const-string v3, "actionUrl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lh3/b;->r:Ljava/lang/String;

    const-string v3, "ex"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lh3/b;->v:Ljava/lang/String;

    const-string v3, "appRef"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lh3/b;->w:Ljava/lang/String;

    const-string v3, "appClientId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lh3/b;->x:Ljava/lang/String;

    const-string v3, "appSignature"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lh3/b;->y:Ljava/lang/String;

    const-string v3, "nonce"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lh3/b;->z:Ljava/lang/String;

    const-string v3, "appChannel"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lh3/b;->A:Ljava/lang/String;

    const-string v3, "floatCardData"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lh3/b;->B:Ljava/lang/String;

    const-string v3, "appVersion"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lh3/b;->C:Ljava/lang/String;

    const-string v3, "appDeveloper"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lh3/b;->D:Ljava/lang/String;

    const-string v3, "appPermission"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lh3/b;->E:Ljava/lang/String;

    const-string v3, "appPrivacy"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lh3/b;->F:Ljava/lang/String;

    const-string v3, "appIntroduction"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lh3/b;->G:Ljava/lang/String;

    const-string v3, "parameters"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "autoActive"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lh3/b;->j:Z

    const-string v4, "trackingStrategy"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lh3/b;->s:Ljava/lang/String;

    :cond_2
    const-string v3, "extra"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh3/b;->m:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh3/b;->n:Ljava/lang/String;

    const-string v0, "buttonStyle"

    const/4 v2, 0x1

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lh3/b;->L:I

    const-string v0, "buttonColor"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh3/b;->J:Ljava/lang/String;

    const-string v0, "buttonColor2"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh3/b;->K:Ljava/lang/String;

    :cond_3
    const-string v0, "viewMonitorUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lh3/b;->t:[Ljava/lang/String;

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lh3/b;->t:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const-string v0, "clickMonitorUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lh3/b;->u:[Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lh3/b;->u:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public C(I)V
    .locals 0

    iput p1, p0, Lh3/b;->H:I

    return-void
.end method

.method public D(I)V
    .locals 0

    iput p1, p0, Lh3/b;->I:I

    return-void
.end method

.method public getAdAppChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh3/b;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getAdAppClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh3/b;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getAdAppRef()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh3/b;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getAdAppSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh3/b;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getAdAutoOpen()Z
    .locals 1

    iget-boolean v0, p0, Lh3/b;->j:Z

    return v0
.end method

.method public getAdDeeplink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh3/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getAdEx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh3/b;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getAdFloatCardData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh3/b;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getAdLandingPageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh3/b;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getAdNonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh3/b;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getAdPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh3/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh3/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public isDownloadPause()Z
    .locals 2

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object v0

    invoke-virtual {p0}, Lh3/b;->getAdPackageName()Ljava/lang/String;

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

    invoke-virtual {p0}, Lh3/b;->getAdPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsf/e;->h(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v1, "ad_click"

    const-string v2, "CLICK"

    sparse-switch p1, :sswitch_data_0

    invoke-static {p0, v0}, Lx4/p;->c(Lx4/p$a;Landroid/content/Context;)V

    invoke-virtual {p0, v0, v2}, Lh3/b;->s(Landroid/content/Context;Ljava/lang/String;)V

    iget p1, p0, Lh3/b;->i:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lgb/b;->d()Lgb/b;

    move-result-object p1

    iget-object v0, p0, Lh3/b;->k:Ljava/lang/String;

    iget-object v1, p0, Lh3/b;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lgb/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_0
    iget-object p1, p0, Lh3/b;->G:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    invoke-static {p0}, Lx4/p;->a(Lx4/p$a;)V

    goto :goto_1

    :sswitch_2
    invoke-static {p0, v0}, Lx4/p;->b(Lx4/p$a;Landroid/content/Context;)V

    invoke-virtual {p0, v0, v2}, Lh3/b;->s(Landroid/content/Context;Ljava/lang/String;)V

    iget p1, p0, Lh3/b;->i:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    iget-object p1, p0, Lh3/b;->F:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    iget-object p1, p0, Lh3/b;->E:Ljava/lang/String;

    :goto_0
    invoke-static {v0, p1}, Leg/i;->e(Landroid/content/Context;Ljava/lang/String;)Z

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b00f2 -> :sswitch_4
        0x7f0b00f3 -> :sswitch_3
        0x7f0b01a2 -> :sswitch_2
        0x7f0b0c4f -> :sswitch_1
        0x7f0b0c89 -> :sswitch_0
    .end sparse-switch
.end method

.method public s(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lqf/a$d;

    invoke-direct {v1, p2, p0}, Lqf/a$d;-><init>(Ljava/lang/String;Lh3/b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lqf/a;->h(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh3/b;->C:Ljava/lang/String;

    return-object v0
.end method

.method public trackAdDeeplinkLauncher(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lh3/b;->E(Landroid/content/Context;)V

    return-void
.end method

.method public u()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh3/b;->u:[Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh3/b;->v:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh3/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh3/b;->s:Ljava/lang/String;

    return-object v0
.end method

.method public y()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh3/b;->t:[Ljava/lang/String;

    return-object v0
.end method
