.class public final Lkk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1484:1\n1436#1,6:1486\n1439#1,3:1492\n1436#1,6:1495\n1436#1,6:1501\n1439#1,3:1510\n1#2:1485\n1726#3,3:1507\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n*L\n1360#1:1486,6\n1394#1:1492,3\n1397#1:1495,6\n1400#1:1501,6\n1436#1:1510,3\n1425#1:1507,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final synthetic a(JI)J
    .locals 0

    invoke-static {p0, p1, p2}, Lkk/c;->d(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic b(J)J
    .locals 0

    invoke-static {p0, p1}, Lkk/c;->e(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic c(J)J
    .locals 0

    invoke-static {p0, p1}, Lkk/c;->g(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final d(JI)J
    .locals 2

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    int-to-long v0, p2

    add-long/2addr p0, v0

    invoke-static {p0, p1}, Lkk/a;->e(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final e(J)J
    .locals 2

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    invoke-static {p0, p1}, Lkk/a;->e(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final f(J)J
    .locals 1

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    invoke-static {p0, p1}, Lkk/a;->e(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final g(J)J
    .locals 2

    const v0, 0xf4240

    int-to-long v0, v0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static final h(ILkk/d;)J
    .locals 2
    .param p1    # Lkk/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.6"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/time/ExperimentalTime;
        }
    .end annotation

    const-string v0, "unit"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkk/d;->e:Lkk/d;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    int-to-long v0, p0

    sget-object p0, Lkk/d;->b:Lkk/d;

    invoke-static {v0, v1, p1, p0}, Lkk/e;->b(JLkk/d;Lkk/d;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkk/c;->f(J)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    int-to-long v0, p0

    invoke-static {v0, v1, p1}, Lkk/c;->i(JLkk/d;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final i(JLkk/d;)J
    .locals 7
    .param p2    # Lkk/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.6"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/time/ExperimentalTime;
        }
    .end annotation

    const-string v0, "unit"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkk/d;->b:Lkk/d;

    const-wide v1, 0x3ffffffffffa14bfL    # 1.9999999999138678

    invoke-static {v1, v2, v0, p2}, Lkk/e;->b(JLkk/d;Lkk/d;)J

    move-result-wide v1

    new-instance v3, Lgk/f;

    neg-long v4, v1

    invoke-direct {v3, v4, v5, v1, v2}, Lgk/f;-><init>(JJ)V

    invoke-virtual {v3, p0, p1}, Lgk/f;->d(J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1, p2, v0}, Lkk/e;->b(JLkk/d;Lkk/d;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkk/c;->f(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    sget-object v0, Lkk/d;->d:Lkk/d;

    invoke-static {p0, p1, p2, v0}, Lkk/e;->a(JLkk/d;Lkk/d;)J

    move-result-wide v1

    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v5, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static/range {v1 .. v6}, Lgk/g;->f(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkk/c;->e(J)J

    move-result-wide p0

    return-wide p0
.end method
