.class public Lzd/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lzd/b;->d:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lzd/b;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lzd/b;->a:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lzd/b;->e:I

    return v0
.end method

.method public e()Z
    .locals 4

    iget v0, p0, Lzd/b;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lzd/b;->c:I

    if-eqz v0, :cond_0

    iget v0, p0, Lzd/b;->d:I

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lzd/b;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lzd/b;->e:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lzd/b;->a:I

    iput v0, p0, Lzd/b;->b:I

    iput v0, p0, Lzd/b;->c:I

    iput v0, p0, Lzd/b;->d:I

    iput v0, p0, Lzd/b;->f:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lzd/b;->g:J

    return-void
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lzd/b;->b:I

    return-void
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lzd/b;->d:I

    return-void
.end method

.method public i(J)V
    .locals 0

    iput-wide p1, p0, Lzd/b;->g:J

    return-void
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lzd/b;->c:I

    return-void
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lzd/b;->a:I

    return-void
.end method

.method public l(I)V
    .locals 0

    iput p1, p0, Lzd/b;->e:I

    return-void
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Lzd/b;->f:I

    return-void
.end method

.method public n()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "charge_start_minute"

    iget v2, p0, Lzd/b;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "charge_eighty_minute"

    iget v2, p0, Lzd/b;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "charge_full_minute"

    iget v2, p0, Lzd/b;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "charge_end_minute"

    iget v2, p0, Lzd/b;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "charge_full_duration"

    iget v2, p0, Lzd/b;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "total_charge_time"

    iget v2, p0, Lzd/b;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "charge_end_timestamp"

    iget-wide v2, p0, Lzd/b;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
