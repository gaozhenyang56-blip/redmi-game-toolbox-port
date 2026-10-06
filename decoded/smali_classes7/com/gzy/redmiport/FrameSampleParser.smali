.class public final Lcom/gzy/redmiport/FrameSampleParser;
.super Ljava/lang/Object;
.source "FrameSampleParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gzy/redmiport/FrameSampleParser$Result;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static belongs(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(?<![A-Za-z0-9_.])"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "(?![A-Za-z0-9_.])"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method private static calculate(Ljava/lang/String;Ljava/util/TreeSet;J)Lcom/gzy/redmiport/FrameSampleParser$Result;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;J)",
            "Lcom/gzy/redmiport/FrameSampleParser$Result;"
        }
    .end annotation

    .line 30
    invoke-virtual {p1}, Ljava/util/TreeSet;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_16

    new-instance p1, Lcom/gzy/redmiport/FrameSampleParser$Result;

    const/4 v8, 0x0

    const-string v9, "\u5e27\u65f6\u95f4\u4e0d\u8db3"

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/gzy/redmiport/FrameSampleParser$Result;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    return-object p1

    .line 31
    :cond_16
    invoke-virtual {p1}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr p2, v6

    const-wide/32 v2, 0x59682f00

    cmp-long p2, p2, v2

    if-lez p2, :cond_35

    new-instance p1, Lcom/gzy/redmiport/FrameSampleParser$Result;

    const/4 v8, 0x0

    const-string v9, "\u5e27\u65f6\u95f4\u5df2\u8fc7\u671f"

    const-wide/16 v4, -0x1

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/gzy/redmiport/FrameSampleParser$Result;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    return-object p1

    .line 32
    :cond_35
    const-wide/32 p2, 0x3b9aca00

    sub-long p2, v6, p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result p2

    if-ge p2, v1, :cond_58

    new-instance p2, Lcom/gzy/redmiport/FrameSampleParser$Result;

    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v8

    const-string v9, "\u5e27\u65f6\u95f4\u4e0d\u8db3"

    const-wide/16 v4, -0x1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/gzy/redmiport/FrameSampleParser$Result;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    return-object p2

    .line 33
    :cond_58
    invoke-interface {p1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v0, v2

    sub-long p2, v6, p2

    long-to-double p2, p2

    div-double/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 34
    const-wide/16 p2, 0xf0

    cmp-long p2, v4, p2

    if-lez p2, :cond_8d

    new-instance p2, Lcom/gzy/redmiport/FrameSampleParser$Result;

    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v8

    const-string v9, "\u5f02\u5e38\u5e27\u65f6\u95f4"

    const-wide/16 v4, -0x1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/gzy/redmiport/FrameSampleParser$Result;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    return-object p2

    .line 35
    :cond_8d
    new-instance p2, Lcom/gzy/redmiport/FrameSampleParser$Result;

    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v8

    const-string v9, ""

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/gzy/redmiport/FrameSampleParser$Result;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    return-object p2
.end method

.method public static parse(Ljava/lang/String;J)Lcom/gzy/redmiport/FrameSampleParser$Result;
    .registers 23

    .line 12
    move-wide/from16 v1, p1

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\nLAYER:\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\r?\\n"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const-string v0, ""

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v9, v6

    move v10, v7

    const/4 v11, 0x0

    move-object v6, v0

    move-object v7, v9

    :goto_2a
    if-lt v11, v5, :cond_4a

    .line 26
    if-nez v7, :cond_49

    new-instance v7, Lcom/gzy/redmiport/FrameSampleParser$Result;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "\u672a\u8bc6\u522b\u524d\u53f0\u5e94\u7528"

    goto :goto_3b

    :cond_39
    const-string v0, "\u6e38\u620f\u56fe\u5c42\u672a\u8fd4\u56de\u6709\u6548\u5e27\u65f6\u95f4"

    :goto_3b
    move-object/from16 v19, v0

    const-string v13, ""

    const-wide/16 v14, -0x1

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    move-object v12, v7

    invoke-direct/range {v12 .. v19}, Lcom/gzy/redmiport/FrameSampleParser$Result;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    :cond_49
    return-object v7

    .line 13
    :cond_4a
    aget-object v0, v4, v11

    .line 14
    const-string v12, "PACKAGE:"

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_61

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_f6

    .line 15
    :cond_61
    const-string v12, "LAYER:"

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_be

    .line 16
    if-eqz v9, :cond_b4

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b4

    invoke-static {v9, v6}, Lcom/gzy/redmiport/FrameSampleParser;->belongs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b4

    .line 17
    invoke-static {v9, v3, v1, v2}, Lcom/gzy/redmiport/FrameSampleParser;->calculate(Ljava/lang/String;Ljava/util/TreeSet;J)Lcom/gzy/redmiport/FrameSampleParser$Result;

    move-result-object v12

    const-string v14, "SurfaceView"

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_86

    const/4 v13, 0x2

    goto :goto_90

    :cond_86
    const-string v14, "BLAST"

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8f

    goto :goto_90

    :cond_8f
    const/4 v13, 0x0

    .line 18
    :goto_90
    invoke-virtual {v12}, Lcom/gzy/redmiport/FrameSampleParser$Result;->available()Z

    move-result v9

    if-eqz v9, :cond_b4

    if-eqz v7, :cond_b2

    if-gt v13, v10, :cond_b2

    if-ne v13, v10, :cond_b4

    iget-wide v14, v12, Lcom/gzy/redmiport/FrameSampleParser$Result;->last:J

    iget-wide v8, v7, Lcom/gzy/redmiport/FrameSampleParser$Result;->last:J

    cmp-long v8, v14, v8

    if-gtz v8, :cond_b2

    iget-wide v8, v12, Lcom/gzy/redmiport/FrameSampleParser$Result;->last:J

    iget-wide v14, v7, Lcom/gzy/redmiport/FrameSampleParser$Result;->last:J

    cmp-long v8, v8, v14

    if-nez v8, :cond_b4

    iget v8, v12, Lcom/gzy/redmiport/FrameSampleParser$Result;->count:I

    iget v9, v7, Lcom/gzy/redmiport/FrameSampleParser$Result;->count:I

    if-le v8, v9, :cond_b4

    :cond_b2
    move-object v7, v12

    move v10, v13

    .line 20
    :cond_b4
    const/4 v8, 0x6

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/TreeSet;->clear()V

    move-object v9, v0

    goto :goto_f6

    .line 22
    :cond_be
    if-nez v9, :cond_c1

    goto :goto_f6

    .line 23
    :cond_c1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v8, "\\s+"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v8, v0

    const/4 v12, 0x3

    if-eq v8, v12, :cond_d0

    goto :goto_f6

    .line 24
    :cond_d0
    :try_start_d0
    aget-object v0, v0, v13

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-lez v0, :cond_f6

    const-wide v14, 0x7fffffffffffffffL

    cmp-long v0, v12, v14

    if-gez v0, :cond_f6

    const-wide/32 v14, 0x2faf080

    add-long/2addr v14, v1

    cmp-long v0, v12, v14

    if-gtz v0, :cond_f6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_f4
    .catch Ljava/lang/NumberFormatException; {:try_start_d0 .. :try_end_f4} :catch_f5

    goto :goto_f6

    :catch_f5
    move-exception v0

    .line 13
    :cond_f6
    :goto_f6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2a
.end method
