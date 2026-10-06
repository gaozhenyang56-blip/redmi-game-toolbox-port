.class public Lqi/c;
.super Lqi/d;
.source "SourceFile"


# instance fields
.field public h:I

.field public i:J

.field public j:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lqi/d;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lqi/c;->i:J

    iput-wide v0, p0, Lqi/c;->j:J

    return-void
.end method

.method public static e()Lqi/c;
    .locals 1

    new-instance v0, Lqi/c;

    invoke-direct {v0}, Lqi/c;-><init>()V

    return-object v0
.end method


# virtual methods
.method public c()Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Lqi/d;->c()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "code"

    iget v3, p0, Lqi/c;->h:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "perfCounts"

    iget-wide v3, p0, Lqi/c;->i:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "perfLatencies"

    iget-wide v3, p0, Lqi/c;->j:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lpi/c;->r(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lqi/d;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
