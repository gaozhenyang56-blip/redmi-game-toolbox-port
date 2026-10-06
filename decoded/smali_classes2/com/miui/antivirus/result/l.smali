.class public Lcom/miui/antivirus/result/l;
.super Lcom/miui/antivirus/result/c;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:[Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antivirus/result/c;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/antivirus/result/l;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    invoke-direct {p0}, Lcom/miui/antivirus/result/c;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/antivirus/result/l;->h:[Ljava/lang/String;

    const-string v1, "newsId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/l;->a:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/l;->b:Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/l;->c:Ljava/lang/String;

    const-string v1, "summary"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/l;->d:Ljava/lang/String;

    const-string v1, "source"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/l;->e:Ljava/lang/String;

    const-string v1, "newsDate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/antivirus/result/l;->g:J

    const-string v1, "template"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/antivirus/result/l;->i:I

    const-string v1, "cornerTip"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/l;->j:Ljava/lang/String;

    const-string v1, "views"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/l;->f:Ljava/lang/String;

    const-string v1, "dataId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/l;->k:Ljava/lang/String;

    const-string v1, "deeplink"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/l;->n:Ljava/lang/String;

    const-string v1, "images"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/miui/antivirus/result/l;->h:[Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "News"

    const-string v2, "msg"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move p1, v1

    :goto_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100147

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public bindView(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/n;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/antivirus/result/c;->bindView(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/n;)V

    iget p1, p0, Lcom/miui/antivirus/result/l;->i:I

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-eq p1, p3, :cond_1

    const/4 p3, 0x7

    if-eq p1, p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/result/s;

    iget-object p2, p1, Lcom/miui/antivirus/result/s;->b:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/miui/antivirus/result/l;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/antivirus/result/l;->h:[Ljava/lang/String;

    aget-object p2, p2, v0

    iget-object p1, p1, Lcom/miui/antivirus/result/s;->a:Landroid/widget/ImageView;

    sget-object p3, Lx4/o0;->h:Lrh/c;

    const p4, 0x7f080954

    invoke-static {p2, p1, p3, p4}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/result/v;

    iget-object p2, p1, Lcom/miui/antivirus/result/v;->b:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/miui/antivirus/result/l;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/antivirus/result/l;->h:[Ljava/lang/String;

    aget-object p2, p2, v0

    iget-object p3, p1, Lcom/miui/antivirus/result/v;->a:Landroid/widget/ImageView;

    sget-object v0, Lx4/o0;->c:Lrh/c;

    invoke-virtual {p4}, Lcom/miui/antivirus/result/n;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-static {p2, p3, v0, p4}, Lx4/o0;->f(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p1, Lcom/miui/antivirus/result/v;->e:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/result/l;->c(Landroid/widget/TextView;)V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/antivirus/result/l;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq2/b$b;->w(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method c(Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/l;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/antivirus/result/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/l;->l:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/l;->m:Ljava/lang/String;

    return-void
.end method

.method public getLayoutId()I
    .locals 2

    iget v0, p0, Lcom/miui/antivirus/result/l;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const v0, 0x7f0e0525

    goto :goto_0

    :cond_0
    const v0, 0x7f0e051f

    goto :goto_0

    :cond_1
    const v0, 0x7f0e0520

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antivirus/result/l;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/result/l;->n:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/antivirus/result/c;->openUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/result/l;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antivirus/result/l;->m:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Leg/i;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/antivirus/result/l;->a:Ljava/lang/String;

    invoke-static {p1}, Lq2/b$b;->v(Ljava/lang/String;)V

    return-void
.end method
