.class public Lcom/miui/optimizemanage/optimizeresult/a;
.super Lcom/miui/optimizemanage/optimizeresult/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizemanage/optimizeresult/a$c;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/optimizemanage/optimizeresult/c;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->h:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/optimizemanage/optimizeresult/a;->i:Z

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->j:I

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->k:I

    iput-boolean v1, p0, Lcom/miui/optimizemanage/optimizeresult/a;->m:Z

    iput-boolean v1, p0, Lcom/miui/optimizemanage/optimizeresult/a;->n:Z

    iput-boolean v1, p0, Lcom/miui/optimizemanage/optimizeresult/a;->o:Z

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/a;->u(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/miui/optimizemanage/optimizeresult/a;->r()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/c;->setLayoutId(I)V

    return-void
.end method

.method static synthetic a(Lcom/miui/optimizemanage/optimizeresult/a;Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/a;->q(Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V

    return-void
.end method

.method static synthetic b(Lcom/miui/optimizemanage/optimizeresult/a;)I
    .locals 0

    iget p0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->l:I

    return p0
.end method

.method static synthetic c(Lcom/miui/optimizemanage/optimizeresult/a;)I
    .locals 0

    iget p0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->j:I

    return p0
.end method

.method static synthetic d(Lcom/miui/optimizemanage/optimizeresult/a;)I
    .locals 0

    iget p0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->k:I

    return p0
.end method

.method static synthetic e(Lcom/miui/optimizemanage/optimizeresult/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->n:Z

    return p0
.end method

.method static synthetic f(Lcom/miui/optimizemanage/optimizeresult/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/optimizemanage/optimizeresult/a;->n:Z

    return p1
.end method

.method static synthetic g(Lcom/miui/optimizemanage/optimizeresult/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/optimizemanage/optimizeresult/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/miui/optimizemanage/optimizeresult/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/miui/optimizemanage/optimizeresult/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->o:Z

    return p0
.end method

.method static synthetic k(Lcom/miui/optimizemanage/optimizeresult/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/miui/optimizemanage/optimizeresult/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->i:Z

    return p0
.end method

.method static synthetic m(Lcom/miui/optimizemanage/optimizeresult/a;)I
    .locals 0

    iget p0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->h:I

    return p0
.end method

.method static synthetic n(Lcom/miui/optimizemanage/optimizeresult/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lcom/miui/optimizemanage/optimizeresult/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->m:Z

    return p0
.end method

.method private q(Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/optimizemanage/optimizeresult/a$b;

    invoke-direct {v1, p0, p1}, Lcom/miui/optimizemanage/optimizeresult/a$b;-><init>(Lcom/miui/optimizemanage/optimizeresult/a;Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private u(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "img"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->c:Ljava/lang/String;

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->a:Ljava/lang/String;

    const-string v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->b:Ljava/lang/String;

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->d:Ljava/lang/String;

    const-string v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->l:I

    const-string v0, "button"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->e:Ljava/lang/String;

    const-string v0, "dataId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->f:Ljava/lang/String;

    const-string v0, "browserOpen"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->g:Z

    const/4 v0, 0x0

    const-string v2, "showAdChoice"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->o:Z

    const-string v0, "buttonColor2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->h:I

    iput-boolean v1, p0, Lcom/miui/optimizemanage/optimizeresult/a;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const-string v0, "btnBgColorOpenN2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "btnBgColorOpenP2"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->j:I

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/optimizemanage/optimizeresult/a;->k:I

    iput-boolean v1, p0, Lcom/miui/optimizemanage/optimizeresult/a;->m:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-void
.end method

.method public static v(ILorg/json/JSONObject;)Lcom/miui/optimizemanage/optimizeresult/a;
    .locals 0

    new-instance p0, Lcom/miui/optimizemanage/optimizeresult/a;

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/a;-><init>(Lorg/json/JSONObject;)V

    return-object p0
.end method

.method private w(Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V
    .locals 6

    invoke-static {}, Lc3/k;->g()Lc3/k;

    move-result-object v0

    new-instance v2, Lcom/miui/optimizemanage/optimizeresult/a$a;

    invoke-direct {v2, p0, p1}, Lcom/miui/optimizemanage/optimizeresult/a$a;-><init>(Lcom/miui/optimizemanage/optimizeresult/a;Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc3/k;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    const-string v1, "com.miui.securitycenter_globaladevent"

    goto :goto_0

    :cond_0
    const-string v1, "com.miui.securitycenter_appmanager"

    :goto_0
    move-object v4, v1

    const/4 v5, 0x0

    invoke-static {}, Lgb/b;->d()Lgb/b;

    move-result-object v1

    invoke-virtual {v1}, Lgb/b;->A()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "com.miui.securitycenter"

    invoke-virtual/range {v0 .. v5}, Lc3/k;->j(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "OMActivityCardModel"

    const-string v0, "connect fail, maybe not support dislike window"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/optimizemanage/optimizeresult/d;
    .locals 1

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/a$c;

    invoke-direct {v0, p1}, Lcom/miui/optimizemanage/optimizeresult/a$c;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getCardName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedTrack()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/c;->onClick(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b025b

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/a;->w(Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->d:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/a;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Leg/i;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->d:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    iget-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/a;->f:Ljava/lang/String;

    invoke-static {p1}, Lgb/a;->k(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public r()I
    .locals 3

    iget v0, p0, Lcom/miui/optimizemanage/optimizeresult/a;->l:I

    const/4 v1, 0x1

    const v2, 0x7f0e03b0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    const v2, 0x7f0e03b2

    goto :goto_0

    :cond_1
    const v2, 0x7f0e03b1

    :cond_2
    :goto_0
    return v2
.end method

.method public s(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lcom/miui/common/card/FillParentDrawable;

    const v1, 0x7f080494

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/miui/common/card/FillParentDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method
