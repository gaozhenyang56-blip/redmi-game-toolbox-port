.class public Lci/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "IZatDataValidation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lci/a;->a:Z

    return-void
.end method

.method public static a(FLci/d$a;)Lci/d;
    .locals 1

    sget-boolean v0, Lci/a;->a:Z

    if-nez v0, :cond_0

    new-instance p0, Lci/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lci/b;->a(FLci/d$a;)Lci/d;

    move-result-object p0

    return-object p0
.end method

.method public static b(ILci/d$a;)Lci/d;
    .locals 1

    sget-boolean v0, Lci/a;->a:Z

    if-nez v0, :cond_0

    new-instance p0, Lci/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lci/c;->b(ILci/d$a;)Lci/d;

    move-result-object p0

    return-object p0
.end method

.method public static c(JLci/d$a;)Lci/d;
    .locals 1

    sget-boolean v0, Lci/a;->a:Z

    if-nez v0, :cond_0

    new-instance p0, Lci/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2}, Lci/c;->c(JLci/d$a;)Lci/d;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/location/Location;)Lci/d;
    .locals 3

    new-instance v0, Lci/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lci/d;-><init>(Z)V

    sget-boolean v1, Lci/a;->a:Z

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lci/d;->f(Z)V

    const-string p0, "location object is null"

    invoke-virtual {v0, p0}, Lci/d;->e(Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    sget-object v2, Lci/d$a;->b:Lci/d$a;

    invoke-static {v1, v2}, Lci/a;->a(FLci/d$a;)Lci/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lci/d;->a(Lci/d;)V

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    double-to-float v1, v1

    sget-object v2, Lci/d$a;->c:Lci/d$a;

    invoke-static {v1, v2}, Lci/a;->a(FLci/d$a;)Lci/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lci/d;->a(Lci/d;)V

    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v1

    sget-object v2, Lci/d$a;->e:Lci/d$a;

    invoke-static {v1, v2}, Lci/a;->a(FLci/d$a;)Lci/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lci/d;->a(Lci/d;)V

    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v1

    sget-object v2, Lci/d$a;->f:Lci/d$a;

    invoke-static {v1, v2}, Lci/a;->a(FLci/d$a;)Lci/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lci/d;->a(Lci/d;)V

    :cond_3
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    sget-object v2, Lci/d$a;->g:Lci/d$a;

    invoke-static {v1, v2}, Lci/a;->a(FLci/d$a;)Lci/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lci/d;->a(Lci/d;)V

    :cond_4
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    sget-object p0, Lci/d$a;->a:Lci/d$a;

    invoke-static {v1, v2, p0}, Lci/a;->c(JLci/d$a;)Lci/d;

    move-result-object p0

    invoke-virtual {v0, p0}, Lci/d;->a(Lci/d;)V

    return-object v0
.end method

.method public static e([Landroid/location/Location;)Lci/d;
    .locals 4

    new-instance v0, Lci/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lci/d;-><init>(Z)V

    sget-boolean v1, Lci/a;->a:Z

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lci/a;->d(Landroid/location/Location;)Lci/d;

    move-result-object v3

    invoke-virtual {v0, v3}, Lci/d;->a(Lci/d;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
