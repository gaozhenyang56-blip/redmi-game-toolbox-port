.class public Ldf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldf/a;->a:Ljava/lang/String;

    iput p2, p0, Ldf/a;->b:I

    iput-wide p3, p0, Ldf/a;->c:J

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Ldf/a;
    .locals 3

    new-instance v0, Ldf/a;

    invoke-direct {v0}, Ldf/a;-><init>()V

    const-string v1, "content"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldf/a;->e(Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ldf/a;->g(I)V

    const-string v1, "time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldf/a;->f(J)V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldf/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Ldf/a;->c:J

    return-wide v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Ldf/a;->b:I

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldf/a;->a:Ljava/lang/String;

    return-void
.end method

.method public f(J)V
    .locals 0

    iput-wide p1, p0, Ldf/a;->c:J

    return-void
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Ldf/a;->b:I

    return-void
.end method

.method public h()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Ldf/a;->a:Ljava/lang/String;

    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Ldf/a;->b:I

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-wide v1, p0, Ldf/a;->c:J

    const-string v3, "time"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method
