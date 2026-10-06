.class public Lmj/a;
.super Lmj/e;
.source "SourceFile"


# static fields
.field private static final i:Ljava/lang/String; = "mj.a"


# instance fields
.field private h:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "type"

    invoke-direct {p0, p1}, Lmj/e;-><init>(Lorg/json/JSONObject;)V

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lmj/a;->h:[I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lmj/a;->h:[I

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aput v2, v1, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    sget-object p1, Lmj/a;->i:Ljava/lang/String;

    const-string v0, "JSONException when decode KEY_TYPE features."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public b(Lkj/b;)Z
    .locals 6

    invoke-virtual {p1}, Lkj/b;->c()I

    move-result v0

    iget-object v1, p0, Lmj/a;->h:[I

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    aget v5, v1, v4

    if-ne v5, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lkj/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lmj/e;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
