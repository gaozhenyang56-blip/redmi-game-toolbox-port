.class public Lyi/c;
.super Lxi/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lyi/a;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lxi/b;-><init>(Lxi/c;I)V

    return-void
.end method


# virtual methods
.method public c(D)D
    .locals 1

    invoke-virtual {p0}, Lxi/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-wide p1

    :cond_0
    invoke-super {p0}, Lxi/b;->a()Lxi/c;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Lxi/c;->b(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1
.end method
