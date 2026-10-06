.class public final Lb9/a;
.super Lb9/c;
.source "SourceFile"


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb9/c;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lb9/a;->B:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 1

    iget v0, p0, Lb9/a;->x:I

    return v0
.end method

.method public final B()Z
    .locals 1

    iget-boolean v0, p0, Lb9/a;->y:Z

    return v0
.end method

.method public final C()Z
    .locals 1

    iget-boolean v0, p0, Lb9/a;->A:Z

    return v0
.end method

.method public final D()Z
    .locals 1

    iget-boolean v0, p0, Lb9/a;->z:Z

    return v0
.end method

.method public final E(I)V
    .locals 0

    iput p1, p0, Lb9/a;->x:I

    return-void
.end method

.method public final F(Z)V
    .locals 0

    iput-boolean p1, p0, Lb9/a;->A:Z

    return-void
.end method

.method public final G(Z)V
    .locals 0

    iput-boolean p1, p0, Lb9/a;->z:Z

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lb9/c;->a(Lorg/json/JSONObject;)V

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
    iput-boolean v0, p0, Lb9/a;->y:Z

    const-string v0, "grade"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lb9/a;->z:Z

    const-string v0, "iconStyle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "it.optString(\"iconStyle\")"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lb9/a;->B:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lb9/a;->A:Z

    :cond_2
    return-void
.end method

.method public t()V
    .locals 0

    invoke-virtual {p0}, Lb9/c;->x()V

    return-void
.end method

.method public u(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lb9/c;->u(Lorg/json/JSONObject;)V

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lb9/a;->y:Z

    const-string v1, "installFilter"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lb9/a;->z:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "grade"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lb9/a;->B:Ljava/lang/String;

    const-string v1, "iconStyle"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x2

    const-string v1, "showType"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method public final z()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lb9/a;->B:Ljava/lang/String;

    return-object v0
.end method
