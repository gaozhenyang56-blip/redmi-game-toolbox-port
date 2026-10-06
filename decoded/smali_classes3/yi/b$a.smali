.class Lyi/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/b;->i()Ljava/lang/Double;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Double;

.field final synthetic b:D

.field final synthetic c:Ljava/lang/Double;

.field final synthetic d:Ljava/lang/Double;

.field final synthetic e:Lyi/b;


# direct methods
.method constructor <init>(Lyi/b;Ljava/lang/Double;DLjava/lang/Double;Ljava/lang/Double;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lyi/b$a;->e:Lyi/b;

    iput-object p2, p0, Lyi/b$a;->a:Ljava/lang/Double;

    iput-wide p3, p0, Lyi/b$a;->b:D

    iput-object p5, p0, Lyi/b$a;->c:Ljava/lang/Double;

    iput-object p6, p0, Lyi/b$a;->d:Ljava/lang/Double;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Double;)Ljava/lang/Double;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    if-nez v0, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lyi/b$a;->a:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    iget-wide v3, p0, Lyi/b$a;->b:D

    iget-object v0, p0, Lyi/b$a;->a:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    sub-double/2addr v3, v5

    neg-double v3, v3

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iget-wide v5, p0, Lyi/b$a;->b:D

    neg-double v5, v5

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Double;)Ljava/lang/Double;
    .locals 8

    iget-object v0, p0, Lyi/b$a;->a:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lyi/b$a;->c:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, p1}, Lyi/b$a;->a(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object p1, p0, Lyi/b$a;->d:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
