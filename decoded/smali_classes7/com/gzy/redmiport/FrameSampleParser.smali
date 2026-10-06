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

    .line 31
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

    .line 33
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

    .line 34
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

    .line 35
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

    .line 36
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

    .line 37
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

    .line 38
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
    .registers 29

    .line 12
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-string v3, "Permission Denial"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_159

    const-string v3, "Permission denied"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto/16 :goto_159

    .line 13
    :cond_16
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\nLAYER:\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\r?\\n"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    const-string v7, ""

    const/4 v8, -0x1

    move-object v9, v0

    move-object v10, v7

    move v11, v8

    const/4 v12, 0x0

    move-object v7, v9

    move-object v8, v7

    :goto_3f
    if-lt v12, v5, :cond_6f

    .line 28
    if-eqz v7, :cond_44

    goto :goto_6e

    :cond_44
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    new-instance v0, Lcom/gzy/redmiport/FrameSampleParser$Result;

    const/4 v7, 0x0

    const-string v8, "\u672a\u8bc6\u522b\u524d\u53f0\u5e94\u7528"

    const-string v2, ""

    const-wide/16 v3, -0x1

    const-wide/16 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/gzy/redmiport/FrameSampleParser$Result;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    move-object v7, v0

    goto :goto_6e

    .line 29
    :cond_5b
    if-eqz v9, :cond_5f

    move-object v7, v9

    goto :goto_6e

    :cond_5f
    new-instance v7, Lcom/gzy/redmiport/FrameSampleParser$Result;

    const/4 v15, 0x0

    const-string v16, "\u672a\u627e\u5230\u5bf9\u5e94\u6e38\u620f\u56fe\u5c42"

    const-string v10, ""

    const-wide/16 v11, -0x1

    const-wide/16 v13, 0x0

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lcom/gzy/redmiport/FrameSampleParser$Result;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    .line 28
    :goto_6e
    return-object v7

    .line 14
    :cond_6f
    aget-object v0, v4, v12

    .line 15
    const-string v13, "PACKAGE:"

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8a

    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    move-object/from16 v16, v4

    move/from16 v17, v5

    goto/16 :goto_151

    .line 16
    :cond_8a
    const-string v13, "LAYER:"

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_113

    .line 17
    if-eqz v8, :cond_103

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_103

    invoke-static {v8, v10}, Lcom/gzy/redmiport/FrameSampleParser;->belongs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_103

    .line 18
    invoke-static {v8, v3, v1, v2}, Lcom/gzy/redmiport/FrameSampleParser;->calculate(Ljava/lang/String;Ljava/util/TreeSet;J)Lcom/gzy/redmiport/FrameSampleParser$Result;

    move-result-object v13

    const-string v15, "SurfaceView"

    invoke-virtual {v8, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_af

    const/4 v14, 0x2

    goto :goto_b9

    :cond_af
    const-string v15, "BLAST"

    invoke-virtual {v8, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b8

    goto :goto_b9

    :cond_b8
    const/4 v14, 0x0

    .line 19
    :goto_b9
    invoke-virtual {v13}, Lcom/gzy/redmiport/FrameSampleParser$Result;->available()Z

    move-result v8

    if-nez v8, :cond_d6

    if-eqz v9, :cond_cf

    move-object v15, v7

    iget-wide v6, v13, Lcom/gzy/redmiport/FrameSampleParser$Result;->last:J

    move-object/from16 v16, v4

    move/from16 v17, v5

    iget-wide v4, v9, Lcom/gzy/redmiport/FrameSampleParser$Result;->last:J

    cmp-long v4, v6, v4

    if-lez v4, :cond_db

    goto :goto_d4

    :cond_cf
    move-object/from16 v16, v4

    move/from16 v17, v5

    move-object v15, v7

    :goto_d4
    move-object v9, v13

    goto :goto_db

    :cond_d6
    move-object/from16 v16, v4

    move/from16 v17, v5

    move-object v15, v7

    .line 20
    :cond_db
    :goto_db
    invoke-virtual {v13}, Lcom/gzy/redmiport/FrameSampleParser$Result;->available()Z

    move-result v4

    if-eqz v4, :cond_101

    if-eqz v15, :cond_fe

    if-gt v14, v11, :cond_fe

    if-ne v14, v11, :cond_101

    iget-wide v4, v13, Lcom/gzy/redmiport/FrameSampleParser$Result;->last:J

    move-object v6, v15

    iget-wide v7, v6, Lcom/gzy/redmiport/FrameSampleParser$Result;->last:J

    cmp-long v4, v4, v7

    if-gtz v4, :cond_fe

    iget-wide v4, v13, Lcom/gzy/redmiport/FrameSampleParser$Result;->last:J

    iget-wide v7, v6, Lcom/gzy/redmiport/FrameSampleParser$Result;->last:J

    cmp-long v4, v4, v7

    if-nez v4, :cond_108

    iget v4, v13, Lcom/gzy/redmiport/FrameSampleParser$Result;->count:I

    iget v5, v6, Lcom/gzy/redmiport/FrameSampleParser$Result;->count:I

    if-le v4, v5, :cond_108

    :cond_fe
    move-object v7, v13

    move v11, v14

    goto :goto_109

    :cond_101
    move-object v6, v15

    goto :goto_108

    .line 17
    :cond_103
    move-object/from16 v16, v4

    move/from16 v17, v5

    move-object v6, v7

    .line 22
    :cond_108
    :goto_108
    move-object v7, v6

    :goto_109
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/TreeSet;->clear()V

    move-object v8, v0

    goto :goto_151

    .line 24
    :cond_113
    move-object/from16 v16, v4

    move/from16 v17, v5

    move-object v6, v7

    if-nez v8, :cond_11b

    goto :goto_150

    .line 25
    :cond_11b
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\s+"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x3

    if-eq v4, v5, :cond_12a

    goto :goto_150

    .line 26
    :cond_12a
    :try_start_12a
    aget-object v0, v0, v14

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v13, 0x0

    cmp-long v0, v4, v13

    if-lez v0, :cond_150

    const-wide v13, 0x7fffffffffffffffL

    cmp-long v0, v4, v13

    if-gez v0, :cond_150

    const-wide/32 v13, 0x2faf080

    add-long/2addr v13, v1

    cmp-long v0, v4, v13

    if-gtz v0, :cond_150

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_14e
    .catch Ljava/lang/NumberFormatException; {:try_start_12a .. :try_end_14e} :catch_14f

    goto :goto_150

    :catch_14f
    move-exception v0

    .line 14
    :cond_150
    :goto_150
    move-object v7, v6

    :goto_151
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v16

    move/from16 v5, v17

    goto/16 :goto_3f

    .line 12
    :cond_159
    :goto_159
    new-instance v0, Lcom/gzy/redmiport/FrameSampleParser$Result;

    const/16 v24, 0x0

    const-string v25, "\u7cfb\u7edf\u62d2\u7edd\u8bfb\u53d6\u5e27\u6570\u636e"

    const-string v19, ""

    const-wide/16 v20, -0x1

    const-wide/16 v22, 0x0

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v25}, Lcom/gzy/redmiport/FrameSampleParser$Result;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    return-object v0
.end method
