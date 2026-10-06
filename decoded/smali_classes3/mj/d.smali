.class public Lmj/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "mj.d"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmj/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmj/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmj/d;->c:Z

    return-void
.end method

.method public static a(I)I
    .locals 3

    const v0, 0xffff

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    const/16 v1, 0xc

    :goto_0
    if-nez p0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_1

    add-int/2addr v0, v1

    :cond_1
    shr-int/lit8 p0, p0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static b(I)I
    .locals 3

    const/high16 v0, 0xfff0000

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x10

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-nez p0, :cond_0

    return v1

    :cond_0
    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_1

    add-int/2addr v1, v0

    :cond_1
    shr-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lmj/d;->c:Z

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    const-string p1, "version"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lmj/d;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Version:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "features"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "feature count:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lmj/d;->a:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmj/d;->b:Ljava/util/List;

    move v2, v0

    :goto_0
    if-lt v2, v1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmj/d;->c:Z

    goto :goto_1

    :cond_0
    new-instance v3, Lmj/c;

    iget-object v4, p0, Lmj/d;->a:Ljava/util/Map;

    invoke-direct {v3, v4}, Lmj/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmj/c;->c(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmj/d;->a:Ljava/util/Map;

    invoke-virtual {v3}, Lmj/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lmj/d;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    iput-boolean v0, p0, Lmj/d;->c:Z

    sget-object v0, Lmj/d;->d:Ljava/lang/String;

    const-string v1, "JSONException when load features from pattern files"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public e(Lkj/b;)I
    .locals 4

    iget-object v0, p0, Lmj/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmj/c;

    invoke-virtual {v2}, Lmj/c;->d()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p1}, Lmj/c;->e(Lkj/b;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lmj/c;->b()I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0
.end method
