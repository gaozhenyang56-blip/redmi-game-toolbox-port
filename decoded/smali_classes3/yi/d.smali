.class public Lyi/d;
.super Lyi/a;
.source "SourceFile"


# instance fields
.field protected d:Lxi/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lyi/a;-><init>()V

    new-instance v0, Lxi/a;

    invoke-direct {v0, p0}, Lxi/a;-><init>(Lxi/c;)V

    iput-object v0, p0, Lyi/d;->d:Lxi/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lyi/a;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lyi/d;->d:Lxi/a;

    invoke-virtual {v0, p1}, Lxi/a;->a(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public f(Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lyi/d;->d:Lxi/a;

    invoke-virtual {v0, p1, p2}, Lxi/a;->b(Ljava/lang/Double;Ljava/lang/Double;)Lxi/a;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Float;Ljava/lang/Float;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lyi/d;->d:Lxi/a;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lxi/a;->b(Ljava/lang/Double;Ljava/lang/Double;)Lxi/a;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Lyi/a;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lyi/d;->d:Lxi/a;

    invoke-virtual {v0}, Lxi/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
