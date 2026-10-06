.class public Lcom/miui/optimizemanage/optimizeresult/h;
.super Lcom/miui/optimizemanage/optimizeresult/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizemanage/optimizeresult/h$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6

    invoke-direct {p0}, Lcom/miui/optimizemanage/optimizeresult/c;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/h;->g:Z

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/h;->h:[Ljava/lang/String;

    const-string v2, "images"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_0
    if-ge v0, v1, :cond_0

    if-ge v0, v3, :cond_0

    iget-object v4, p0, Lcom/miui/optimizemanage/optimizeresult/h;->h:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/h;->a:Ljava/lang/String;

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/h;->b:Ljava/lang/String;

    const-string v0, "dataId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/h;->c:Ljava/lang/String;

    const p1, 0x7f0e00e6

    invoke-virtual {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/c;->setLayoutId(I)V

    return-void
.end method

.method static synthetic a(Lcom/miui/optimizemanage/optimizeresult/h;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/optimizeresult/h;->h:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/optimizemanage/optimizeresult/h;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/optimizeresult/h;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/optimizemanage/optimizeresult/h;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/optimizemanage/optimizeresult/h;->f:Z

    return p0
.end method

.method static synthetic d(Lcom/miui/optimizemanage/optimizeresult/h;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/optimizemanage/optimizeresult/h;->e:Z

    return p0
.end method

.method static synthetic e(Lcom/miui/optimizemanage/optimizeresult/h;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/optimizemanage/optimizeresult/h;->d:Z

    return p0
.end method

.method static synthetic f(Lcom/miui/optimizemanage/optimizeresult/h;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/optimizemanage/optimizeresult/h;->g:Z

    return p0
.end method

.method static synthetic g(Lcom/miui/optimizemanage/optimizeresult/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/optimizemanage/optimizeresult/h;->g:Z

    return p1
.end method

.method static synthetic h(Lcom/miui/optimizemanage/optimizeresult/h;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/optimizeresult/h;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/optimizemanage/optimizeresult/d;
    .locals 1

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/h$a;

    invoke-direct {v0, p1}, Lcom/miui/optimizemanage/optimizeresult/h$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getCardName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/optimizemanage/optimizeresult/h;->e:Z

    return-void
.end method

.method public isNeedTrack()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/optimizemanage/optimizeresult/h;->f:Z

    return-void
.end method

.method public k(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/optimizemanage/optimizeresult/h;->d:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/c;->onClick(Landroid/view/View;)V

    invoke-static {}, Leg/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/h;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/h;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Leg/i;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/h;->c:Ljava/lang/String;

    invoke-static {p1}, Lgb/a;->k(Ljava/lang/String;)V

    return-void
.end method
