.class public abstract Lmj/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final g:Ljava/lang/String; = "mj.e"


# instance fields
.field protected a:[Ljava/lang/String;

.field private b:[Ljava/util/regex/Pattern;

.field protected c:[Ljava/lang/String;

.field private d:[Ljava/util/regex/Pattern;

.field protected e:[Ljava/lang/String;

.field private f:[Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 9

    const-string v0, "or_pattern"

    const-string v1, "neg_pattern"

    const-string v2, "pattern"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v6, v3, [Ljava/lang/String;

    iput-object v6, p0, Lmj/e;->a:[Ljava/lang/String;

    new-array v6, v3, [Ljava/util/regex/Pattern;

    iput-object v6, p0, Lmj/e;->b:[Ljava/util/regex/Pattern;

    move v6, v5

    :goto_0
    if-lt v6, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lmj/e;->a:[Ljava/lang/String;

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    iget-object v7, p0, Lmj/e;->b:[Ljava/util/regex/Pattern;

    iget-object v8, p0, Lmj/e;->a:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-static {v8, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lmj/e;->c:[Ljava/lang/String;

    new-array v3, v2, [Ljava/util/regex/Pattern;

    iput-object v3, p0, Lmj/e;->d:[Ljava/util/regex/Pattern;

    move v3, v5

    :goto_2
    if-lt v3, v2, :cond_2

    goto :goto_3

    :cond_2
    iget-object v6, p0, Lmj/e;->c:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v6, p0, Lmj/e;->d:[Ljava/util/regex/Pattern;

    iget-object v7, p0, Lmj/e;->c:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-static {v7, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    aput-object v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lmj/e;->e:[Ljava/lang/String;

    new-array v1, v0, [Ljava/util/regex/Pattern;

    iput-object v1, p0, Lmj/e;->f:[Ljava/util/regex/Pattern;

    :goto_4
    if-lt v5, v0, :cond_4

    goto :goto_5

    :cond_4
    iget-object v1, p0, Lmj/e;->e:[Ljava/lang/String;

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v1, p0, Lmj/e;->f:[Ljava/util/regex/Pattern;

    iget-object v2, p0, Lmj/e;->e:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-static {v2, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v1, v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :catch_0
    sget-object p1, Lmj/e;->g:Ljava/lang/String;

    const-string v0, "JSONException when decode KEY_PATTERN features."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_5
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lmj/e;->b:[Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    array-length v2, v0

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lmj/e;->d:[Ljava/util/regex/Pattern;

    if-eqz v0, :cond_5

    array-length v2, v0

    if-lez v2, :cond_5

    array-length v2, v0

    move v3, v1

    :goto_2
    if-lt v3, v2, :cond_3

    goto :goto_3

    :cond_3
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_4

    return v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v0, p0, Lmj/e;->f:[Ljava/util/regex/Pattern;

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    array-length v3, v0

    if-lez v3, :cond_8

    array-length v3, v0

    move v4, v1

    :goto_4
    if-lt v4, v3, :cond_6

    return v1

    :cond_6
    aget-object v5, v0, v4

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_7

    return v2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    return v2
.end method
