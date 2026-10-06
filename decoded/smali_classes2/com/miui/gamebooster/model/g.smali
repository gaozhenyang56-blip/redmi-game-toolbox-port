.class public final Lcom/miui/gamebooster/model/g;
.super Lcom/miui/gamebooster/model/i;
.source "SourceFile"


# instance fields
.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/model/i;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gamebooster/model/g;->t:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createModelByJson(Lorg/json/JSONObject;)V
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/gamebooster/model/i;->createModelByJson(Lorg/json/JSONObject;)V

    if-eqz p1, :cond_2

    const-string v0, "installFilter"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gamebooster/model/g;->q:Z

    const-string v0, "grade"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/miui/gamebooster/model/g;->r:Z

    const-string v0, "iconStyle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "it.optString(\"iconStyle\")"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/gamebooster/model/g;->t:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/miui/gamebooster/model/g;->s:Z

    :cond_2
    return-void
.end method

.method public getModelType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/g;->p:I

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/model/g;->q:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/model/g;->r:Z

    return v0
.end method

.method public final k(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/g;->p:I

    return-void
.end method

.method public final l(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/model/g;->s:Z

    return-void
.end method

.method public final m(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/model/g;->r:Z

    return-void
.end method

.method public onClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/i;->g()V

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

    iget-boolean v0, p0, Lcom/miui/gamebooster/model/g;->q:Z

    const-string v1, "installFilter"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/miui/gamebooster/model/g;->r:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "grade"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/gamebooster/model/g;->t:Ljava/lang/String;

    const-string v1, "iconStyle"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x2

    const-string v1, "showType"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method
