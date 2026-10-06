.class public Lcom/miui/optimizemanage/optimizeresult/f;
.super Lcom/miui/optimizemanage/optimizeresult/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizemanage/optimizeresult/f$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Intent;

.field private h:I

.field protected i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/optimizemanage/optimizeresult/c;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->i:I

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->j:I

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->k:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->l:Z

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->m:Z

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->n:Z

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->o:Z

    const v0, 0x7f0e03b3

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/optimizeresult/c;->setLayoutId(I)V

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/optimizemanage/optimizeresult/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/optimizemanage/optimizeresult/f;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/optimizemanage/optimizeresult/f;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/optimizemanage/optimizeresult/c;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->i:I

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->j:I

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->k:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->l:Z

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->m:Z

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->n:Z

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->o:Z

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/f;->o(Lorg/json/JSONObject;)V

    const p1, 0x7f0e03b3

    invoke-virtual {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/c;->setLayoutId(I)V

    return-void
.end method

.method static synthetic a(Lcom/miui/optimizemanage/optimizeresult/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->l:Z

    return p0
.end method

.method static synthetic b(Lcom/miui/optimizemanage/optimizeresult/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->m:Z

    return p0
.end method

.method static synthetic c(Lcom/miui/optimizemanage/optimizeresult/f;)I
    .locals 0

    iget p0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->j:I

    return p0
.end method

.method static synthetic d(Lcom/miui/optimizemanage/optimizeresult/f;)I
    .locals 0

    iget p0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->k:I

    return p0
.end method

.method static synthetic e(Lcom/miui/optimizemanage/optimizeresult/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->o:Z

    return p0
.end method

.method static synthetic f(Lcom/miui/optimizemanage/optimizeresult/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/optimizemanage/optimizeresult/f;->o:Z

    return p1
.end method

.method static synthetic g(Lcom/miui/optimizemanage/optimizeresult/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/optimizemanage/optimizeresult/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/f;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Lcom/miui/optimizemanage/optimizeresult/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->e:Ljava/lang/String;

    return-object p0
.end method

.method private j(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string v0, "miui.intent.action.GARBAGE_UNINSTALL_APPS"

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "miui.intent.action.GARBAGE_CLEANUP"

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->g:Landroid/content/Intent;

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/f;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/f;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lc4/f;->g(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "OMFunctionCardModel"

    const-string v1, "FunctionCardModel start action error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private o(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->h:I

    const-string v0, "dataId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->f:Ljava/lang/String;

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->b:Ljava/lang/String;

    const-string v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->c:Ljava/lang/String;

    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->a:Ljava/lang/String;

    const-string v0, "button"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->d:Ljava/lang/String;

    const-string v0, "buttonColor2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->i:I

    iput-boolean v2, p0, Lcom/miui/optimizemanage/optimizeresult/f;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    const-string v0, "btnBgColorOpenN2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "btnBgColorOpenP2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->j:I

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->k:I

    iput-boolean v2, p0, Lcom/miui/optimizemanage/optimizeresult/f;->m:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    :try_start_2
    const-string v0, "action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lsf/d;->y(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "miui.intent.action.GARBAGE_UNINSTALL_APPS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/f;->g:Landroid/content/Intent;

    iput-boolean v2, p0, Lcom/miui/optimizemanage/optimizeresult/f;->n:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    const-string v0, "OMFunctionCardModel"

    const-string v1, "parse function data error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public static q(ILorg/json/JSONObject;)Lcom/miui/optimizemanage/optimizeresult/f;
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/f;

    invoke-direct {v0, p1}, Lcom/miui/optimizemanage/optimizeresult/f;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean p1, v0, Lcom/miui/optimizemanage/optimizeresult/f;->n:Z

    if-eqz p1, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/optimizemanage/optimizeresult/d;
    .locals 1

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/f$a;

    invoke-direct {v0, p1}, Lcom/miui/optimizemanage/optimizeresult/f$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getCardName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedTrack()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/c;->onClick(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/f;->j(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/f;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/f;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/f;->f:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/f;->f:Ljava/lang/String;

    invoke-static {p1}, Lgb/a;->k(Ljava/lang/String;)V

    return-void
.end method
