.class public Lcom/miui/gamebooster/model/i;
.super Lcom/miui/gamebooster/model/ActiveNewModel;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:I

.field private m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/model/ActiveNewModel;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gamebooster/model/i;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gamebooster/model/i;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gamebooster/model/i;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gamebooster/model/i;->d:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gamebooster/model/i;->l:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/model/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/model/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/gamebooster/model/i;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f120c67

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    const v0, 0x7f120f71

    goto :goto_0

    :cond_1
    const v0, 0x7f120c6c

    goto :goto_0

    :goto_1
    const-string v0, "if (applicationInstalled\u2026.string.installing)\n    }"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public createModelByJson(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/gamebooster/model/ActiveNewModel;->createModelByJson(Lorg/json/JSONObject;)V

    if-eqz p1, :cond_0

    const-string v0, "appIcon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "it.optString(\"appIcon\")"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gamebooster/model/i;->b:Ljava/lang/String;

    const-string v0, "gamePkgName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/model/i;->e:Ljava/lang/String;

    const-string v0, "installLink"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "it.optString(\"installLink\")"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gamebooster/model/i;->c:Ljava/lang/String;

    const-string v0, "installLink2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "it.optString(\"installLink2\")"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gamebooster/model/i;->d:Ljava/lang/String;

    const-string v0, "displayName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "it.optString(\"displayName\")"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gamebooster/model/i;->a:Ljava/lang/String;

    const-string v0, "publisherName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/model/i;->f:Ljava/lang/String;

    const-string v0, "permission"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/model/i;->g:Ljava/lang/String;

    const-string v0, "privacyUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/model/i;->h:Ljava/lang/String;

    const-string v0, "versionName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/model/i;->i:Ljava/lang/String;

    const-string v0, "function"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/model/i;->j:Ljava/lang/String;

    const-string v0, "functionName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/model/i;->m:Ljava/lang/String;

    const-string v0, "privacyUrlName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/model/i;->n:Ljava/lang/String;

    const-string v0, "permissionName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/model/i;->o:Ljava/lang/String;

    const-string v0, "content_ex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/model/i;->k:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/model/i;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcom/miui/gamebooster/model/i;->l:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/i;->l:I

    return-void
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/i;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/model/i;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Ll4/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/gamebooster/model/i;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/common/MarketDownloadV2Activity;->f0(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected putCustomData(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/gamebooster/model/ActiveNewModel;->putCustomData(Lorg/json/JSONObject;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/model/i;->b:Ljava/lang/String;

    const-string v1, "appIcon"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/gamebooster/model/i;->e:Ljava/lang/String;

    const-string v1, "gamePkgName"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/gamebooster/model/i;->a:Ljava/lang/String;

    const-string v1, "displayName"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/gamebooster/model/i;->f:Ljava/lang/String;

    const-string v1, "publisherName"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/gamebooster/model/i;->g:Ljava/lang/String;

    const-string v1, "permission"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/gamebooster/model/i;->h:Ljava/lang/String;

    const-string v1, "privacyUrl"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/gamebooster/model/i;->i:Ljava/lang/String;

    const-string v1, "versionName"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/gamebooster/model/i;->j:Ljava/lang/String;

    const-string v1, "function"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/gamebooster/model/i;->c:Ljava/lang/String;

    const-string v1, "installLink"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/gamebooster/model/i;->d:Ljava/lang/String;

    const-string v1, "installLink2"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/gamebooster/model/i;->m:Ljava/lang/String;

    const-string v1, "functionName"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/gamebooster/model/i;->n:Ljava/lang/String;

    const-string v1, "privacyUrlName"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/gamebooster/model/i;->o:Ljava/lang/String;

    const-string v1, "permissionName"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/gamebooster/model/i;->k:Ljava/lang/String;

    const-string v1, "content_ex"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x3

    const-string v1, "modelType"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method
