.class public Lcom/miui/powercenter/batteryhistory/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/batteryhistory/b$a;
    }
.end annotation


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/miui/powercenter/batteryhistory/b$a;)V
    .locals 8

    invoke-static {p0}, Lme/w;->j(Landroid/content/Context;)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-static {p0}, Lcom/miui/powercenter/batteryhistory/b;->i(Landroid/content/Context;)J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-long v1, v1

    iget-wide v3, p1, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    cmp-long v5, v3, v1

    const/4 v6, 0x1

    const-string v7, "BatteryChargeTimeHelper"

    if-gez v5, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Use min, leftChargeTime "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    invoke-static {v3, v4}, Lme/b0;->g(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " minChargeTime "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lme/b0;->g(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v1, p1, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    iput-boolean v6, p1, Lcom/miui/powercenter/batteryhistory/b$a;->f:Z

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/miui/powercenter/batteryhistory/b$a;->e:I

    const/16 v2, 0x5a

    if-lt v1, v2, :cond_1

    const-string p0, "Don\'t use maxChargeTime in CV level"

    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p0}, Lcom/miui/powercenter/batteryhistory/b;->h(Landroid/content/Context;)J

    move-result-wide v1

    long-to-float p0, v1

    mul-float/2addr p0, v0

    float-to-long v0, p0

    iget-wide v2, p1, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    cmp-long p0, v2, v0

    if-lez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use max, leftChargeTime "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    invoke-static {v2, v3}, Lme/b0;->g(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " maxChargeTime "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lme/b0;->g(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v0, p1, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    iput-boolean v6, p1, Lcom/miui/powercenter/batteryhistory/b$a;->f:Z

    :cond_2
    return-void
.end method

.method private static b(Lcom/miui/powercenter/batteryhistory/b$a;)V
    .locals 4

    iget-wide v0, p0, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iput-wide v2, p0, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    :cond_0
    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/util/List;)Lcom/miui/powercenter/batteryhistory/b$a;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/u;",
            ">;)",
            "Lcom/miui/powercenter/batteryhistory/b$a;"
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/powercenter/batteryhistory/u;

    invoke-virtual {v15}, Lcom/miui/powercenter/batteryhistory/u;->b()J

    move-result-wide v17

    iget-byte v3, v15, Lcom/miui/powercenter/batteryhistory/u;->c:B

    iget-byte v4, v15, Lcom/miui/powercenter/batteryhistory/u;->d:B

    iget-byte v5, v15, Lcom/miui/powercenter/batteryhistory/u;->f:B

    invoke-virtual {v15}, Lcom/miui/powercenter/batteryhistory/u;->c()Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v15, 0x2

    if-nez v10, :cond_0

    if-ne v4, v15, :cond_3

    move v2, v3

    move v15, v5

    move-wide/from16 v6, v17

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    :goto_1
    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_0

    :cond_0
    if-eq v4, v15, :cond_1

    const/4 v15, 0x5

    if-eq v4, v15, :cond_1

    move v15, v5

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    if-nez v13, :cond_2

    if-le v3, v2, :cond_2

    move v13, v3

    move-wide/from16 v11, v17

    :cond_2
    if-le v3, v14, :cond_3

    move v14, v3

    move-wide/from16 v8, v17

    :cond_3
    move v15, v5

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/miui/powercenter/batteryhistory/b$a;

    invoke-direct {v1}, Lcom/miui/powercenter/batteryhistory/b$a;-><init>()V

    const-wide/16 v2, 0x0

    cmp-long v4, v6, v2

    if-eqz v4, :cond_5

    cmp-long v4, v8, v6

    if-lez v4, :cond_5

    sub-long v4, v8, v6

    iput-wide v4, v1, Lcom/miui/powercenter/batteryhistory/b$a;->b:J

    :cond_5
    cmp-long v4, v11, v2

    if-eqz v4, :cond_6

    cmp-long v2, v8, v11

    if-lez v2, :cond_6

    sub-long v2, v8, v11

    iput-wide v2, v1, Lcom/miui/powercenter/batteryhistory/b$a;->c:J

    :cond_6
    iput v13, v1, Lcom/miui/powercenter/batteryhistory/b$a;->d:I

    iput v14, v1, Lcom/miui/powercenter/batteryhistory/b$a;->e:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/miui/powercenter/batteryhistory/b$a;->f:Z

    iput v15, v1, Lcom/miui/powercenter/batteryhistory/b$a;->h:I

    iput-boolean v2, v1, Lcom/miui/powercenter/batteryhistory/b$a;->i:Z

    const/4 v3, 0x1

    if-ne v15, v3, :cond_7

    invoke-static {}, Lme/w;->z()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/powercenter/batteryhistory/b$a;->j:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const/4 v3, 0x4

    if-ne v15, v3, :cond_8

    invoke-static {}, Lme/w;->C()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/powercenter/batteryhistory/b$a;->k:Ljava/lang/String;

    :cond_8
    :goto_2
    iget-wide v3, v1, Lcom/miui/powercenter/batteryhistory/b$a;->c:J

    if-eqz v13, :cond_9

    sub-int v5, v14, v13

    goto :goto_3

    :cond_9
    move v5, v2

    :goto_3
    const/16 v2, 0x5a

    if-lt v14, v2, :cond_a

    const/4 v15, 0x2

    goto :goto_4

    :cond_a
    const/16 v2, 0xa

    move v15, v2

    :goto_4
    if-lt v5, v15, :cond_c

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    :goto_5
    if-ltz v2, :cond_c

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/powercenter/batteryhistory/u;

    iget-byte v6, v6, Lcom/miui/powercenter/batteryhistory/u;->d:B

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/powercenter/batteryhistory/u;

    iget-byte v6, v6, Lcom/miui/powercenter/batteryhistory/u;->c:B

    sub-int v7, v14, v15

    if-ne v6, v7, :cond_b

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/batteryhistory/u;

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/u;->b()J

    move-result-wide v2

    sub-long v3, v8, v2

    move v5, v15

    goto :goto_6

    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_c
    :goto_6
    iget-wide v6, v1, Lcom/miui/powercenter/batteryhistory/b$a;->c:J

    const-wide/32 v8, 0x2bf20

    cmp-long v0, v6, v8

    if-lez v0, :cond_d

    const/4 v0, 0x2

    if-lt v5, v0, :cond_d

    iget v0, v1, Lcom/miui/powercenter/batteryhistory/b$a;->h:I

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/b;->g(I)J

    move-result-wide v6

    const-wide/16 v8, 0x64

    div-long/2addr v6, v8

    int-to-long v8, v5

    div-long/2addr v3, v8

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static/range {p0 .. p0}, Lme/w;->j(Landroid/content/Context;)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x64

    int-to-long v4, v0

    mul-long/2addr v2, v4

    goto :goto_7

    :cond_d
    const-wide/16 v2, 0x0

    :goto_7
    iput-wide v2, v1, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    return-object v1
.end method

.method private static d(Lcom/miui/powercenter/batteryhistory/b$a;)V
    .locals 4

    invoke-static {}, Lme/e;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lme/e;->h()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    mul-int/lit8 v0, v0, 0x3c

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    :cond_0
    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/util/List;)Lcom/miui/powercenter/batteryhistory/b$a;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/u;",
            ">;)",
            "Lcom/miui/powercenter/batteryhistory/b$a;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/miui/powercenter/batteryhistory/b;->c(Landroid/content/Context;Ljava/util/List;)Lcom/miui/powercenter/batteryhistory/b$a;

    move-result-object p1

    iget-wide v0, p1, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/miui/powercenter/batteryhistory/b;->a(Landroid/content/Context;Lcom/miui/powercenter/batteryhistory/b$a;)V

    :cond_0
    invoke-static {p0}, Lme/w;->j(Landroid/content/Context;)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget v1, p1, Lcom/miui/powercenter/batteryhistory/b$a;->e:I

    iget v4, p1, Lcom/miui/powercenter/batteryhistory/b$a;->d:I

    sub-int/2addr v1, v4

    iget-wide v4, p1, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    cmp-long v4, v4, v2

    const-string v5, "BatteryChargeTimeHelper"

    const-string v6, " "

    if-eqz v4, :cond_2

    const/16 v4, 0x14

    if-ge v1, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/miui/powercenter/batteryhistory/b;->a(Landroid/content/Context;Lcom/miui/powercenter/batteryhistory/b$a;)V

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/b;->b(Lcom/miui/powercenter/batteryhistory/b$a;)V

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/b;->d(Lcom/miui/powercenter/batteryhistory/b$a;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Left charge time, "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    invoke-static {v0, v1}, Lme/b0;->g(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_2
    :goto_0
    add-int/lit8 v4, v1, 0xa

    int-to-float v1, v1

    int-to-float v4, v4

    div-float/2addr v1, v4

    const/high16 v7, 0x41200000    # 10.0f

    div-float/2addr v7, v4

    iget v4, p1, Lcom/miui/powercenter/batteryhistory/b$a;->h:I

    invoke-static {v4}, Lcom/miui/powercenter/batteryhistory/b;->g(I)J

    move-result-wide v8

    cmp-long v4, v8, v2

    if-eqz v4, :cond_5

    long-to-float p0, v8

    mul-float/2addr p0, v0

    float-to-long v8, p0

    iget-wide v10, p1, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    cmp-long p0, v10, v2

    if-eqz p0, :cond_4

    sget-boolean p0, Lcom/miui/powercenter/batteryhistory/b;->a:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use mixed(calc) charge time,  "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    invoke-static {v2, v3}, Lme/b0;->g(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lme/b0;->g(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-wide v2, p1, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    long-to-float p0, v2

    mul-float/2addr p0, v1

    long-to-float v1, v8

    mul-float/2addr v1, v7

    add-float/2addr p0, v1

    float-to-long v1, p0

    iput-wide v1, p1, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mixed(calc) charge time, "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    invoke-static {v0, v1}, Lme/b0;->g(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use history time, "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lme/b0;->g(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v8, p1, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    goto/16 :goto_2

    :cond_5
    invoke-static {p0}, Lcom/miui/powercenter/batteryhistory/b;->f(Landroid/content/Context;)J

    move-result-wide v8

    long-to-float p0, v8

    mul-float/2addr p0, v0

    float-to-long v8, p0

    iget-wide v10, p1, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    cmp-long p0, v10, v2

    if-eqz p0, :cond_7

    sget-boolean p0, Lcom/miui/powercenter/batteryhistory/b;->a:Z

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use mixed(default) charge time, "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    invoke-static {v2, v3}, Lme/b0;->g(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lme/b0;->g(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-wide v2, p1, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    long-to-float p0, v2

    mul-float/2addr p0, v1

    long-to-float v1, v8

    mul-float/2addr v1, v7

    add-float/2addr p0, v1

    float-to-long v1, p0

    iput-wide v1, p1, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mixed(default) charge time "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    invoke-static {v0, v1}, Lme/b0;->g(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use default time,  "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lme/b0;->g(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v8, p1, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    :goto_1
    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/miui/powercenter/batteryhistory/b$a;->i:Z

    :goto_2
    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/b;->b(Lcom/miui/powercenter/batteryhistory/b$a;)V

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/b;->d(Lcom/miui/powercenter/batteryhistory/b$a;)V

    return-object p1
.end method

.method private static f(Landroid/content/Context;)J
    .locals 6

    invoke-static {p0}, Lcom/miui/powercenter/batteryhistory/b;->i(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/miui/powercenter/batteryhistory/b;->h(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {p0}, Lme/w;->j(Landroid/content/Context;)I

    move-result p0

    const/16 v4, 0x5a

    if-le p0, v4, :cond_0

    const-string p0, "BatteryChargeTimeHelper"

    const-string v0, "Only use maxChargeTime in CV level"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    :cond_0
    const-wide/16 v4, 0x2

    div-long/2addr v0, v4

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static g(I)J
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {}, Lme/w;->z()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgd/c;->B(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    invoke-static {}, Lgd/c;->C()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    invoke-static {}, Lme/w;->C()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgd/c;->D(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static h(Landroid/content/Context;)J
    .locals 13

    invoke-static {p0}, Lme/w;->g(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0}, Lme/w;->k(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x708

    const/16 v4, 0xa8c

    const/16 v5, 0x1c2

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/16 v9, 0x384

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v2, v11, :cond_7

    invoke-static {}, Lme/w;->z()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "0"

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v5, "4"

    packed-switch v2, :pswitch_data_0

    :goto_0
    move v6, v8

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :pswitch_1
    const-string v2, "3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v6, v10

    goto :goto_1

    :pswitch_2
    const-string v2, "2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v6, v11

    goto :goto_1

    :pswitch_3
    const-string v2, "1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v6, v7

    :cond_4
    :goto_1
    const/16 v2, 0x1c20

    packed-switch v6, :pswitch_data_1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le p0, v3, :cond_5

    goto :goto_2

    :cond_5
    move v3, v9

    goto :goto_3

    :pswitch_4
    invoke-static {}, Lme/w;->m()I

    move-result p0

    const/16 v3, 0x8c

    if-lt p0, v3, :cond_6

    const/16 v3, 0xd2

    if-gt p0, v3, :cond_6

    const/16 v3, 0x6270

    goto :goto_3

    :cond_6
    :goto_2
    :pswitch_5
    move v3, v2

    goto :goto_3

    :pswitch_6
    const/16 v3, 0x1518

    goto :goto_3

    :pswitch_7
    move v3, v4

    :goto_3
    :pswitch_8
    move v5, v3

    goto/16 :goto_6

    :cond_7
    invoke-static {p0}, Lme/w;->k(Landroid/content/Context;)I

    move-result v2

    const/4 v12, 0x4

    if-ne v2, v12, :cond_11

    invoke-static {}, Lme/w;->C()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string p0, "8"

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v9, "15"

    sparse-switch v2, :sswitch_data_0

    :goto_4
    move v6, v8

    goto :goto_5

    :sswitch_0
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_4

    :cond_9
    const/4 v6, 0x6

    goto :goto_5

    :sswitch_1
    const-string v2, "14"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_4

    :cond_a
    const/4 v6, 0x5

    goto :goto_5

    :sswitch_2
    const-string v2, "13"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_4

    :cond_b
    move v6, v12

    goto :goto_5

    :sswitch_3
    const-string v2, "12"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_4

    :sswitch_4
    const-string v2, "11"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_4

    :cond_c
    move v6, v10

    goto :goto_5

    :sswitch_5
    const-string v2, "10"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_4

    :cond_d
    move v6, v11

    goto :goto_5

    :sswitch_6
    const-string v2, "9"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_4

    :cond_e
    move v6, v7

    :cond_f
    :goto_5
    const/16 v2, 0x1194

    packed-switch v6, :pswitch_data_2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le p0, v3, :cond_10

    goto/16 :goto_2

    :cond_10
    move v3, v5

    goto :goto_3

    :pswitch_9
    const/16 v3, 0xe10

    goto/16 :goto_3

    :cond_11
    invoke-static {p0}, Lme/w;->k(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v10, :cond_12

    goto :goto_6

    :cond_12
    move v5, v9

    :goto_6
    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    int-to-long v2, v5

    div-long/2addr v0, v2

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_4
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x39 -> :sswitch_6
        0x61f -> :sswitch_5
        0x620 -> :sswitch_4
        0x621 -> :sswitch_3
        0x622 -> :sswitch_2
        0x623 -> :sswitch_1
        0x624 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method private static i(Landroid/content/Context;)J
    .locals 12

    invoke-static {p0}, Lme/w;->g(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0}, Lme/w;->k(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0xe10

    const/16 v4, 0x2328

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_8

    invoke-static {}, Lme/w;->z()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "0"

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v10, "4"

    packed-switch v2, :pswitch_data_0

    :goto_0
    move v5, v7

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :pswitch_1
    const-string v2, "3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v5, v8

    goto :goto_1

    :pswitch_2
    const-string v2, "2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v5, v9

    goto :goto_1

    :pswitch_3
    const-string v2, "1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v5, v6

    :cond_4
    :goto_1
    const/16 v2, 0x3840

    packed-switch v5, :pswitch_data_1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le p0, v3, :cond_6

    :cond_5
    :goto_2
    :pswitch_4
    move v3, v2

    goto/16 :goto_5

    :cond_6
    const/16 v3, 0x708

    goto/16 :goto_5

    :pswitch_5
    invoke-static {}, Lme/w;->m()I

    move-result p0

    const/16 v3, 0x8c

    if-lt p0, v3, :cond_7

    const/16 v3, 0xd2

    if-gt p0, v3, :cond_7

    const v3, 0x8ca0

    goto/16 :goto_5

    :cond_7
    const/16 v3, 0x59

    if-lt p0, v3, :cond_5

    const/16 v3, 0x5a

    if-gt p0, v3, :cond_5

    const/16 v3, 0x1c20

    goto/16 :goto_5

    :pswitch_6
    move v3, v4

    goto/16 :goto_5

    :pswitch_7
    const/16 v3, 0x1194

    goto/16 :goto_5

    :cond_8
    invoke-static {p0}, Lme/w;->k(Landroid/content/Context;)I

    move-result v2

    const/4 v10, 0x4

    if-ne v2, v10, :cond_12

    invoke-static {}, Lme/w;->C()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string p0, "8"

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v11, "15"

    sparse-switch v2, :sswitch_data_0

    :goto_3
    move v5, v7

    goto :goto_4

    :sswitch_0
    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_a
    const/4 v5, 0x6

    goto :goto_4

    :sswitch_1
    const-string v2, "14"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_3

    :cond_b
    const/4 v5, 0x5

    goto :goto_4

    :sswitch_2
    const-string v2, "13"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_3

    :cond_c
    move v5, v10

    goto :goto_4

    :sswitch_3
    const-string v2, "12"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_3

    :sswitch_4
    const-string v2, "11"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_3

    :cond_d
    move v5, v8

    goto :goto_4

    :sswitch_5
    const-string v2, "10"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_3

    :cond_e
    move v5, v9

    goto :goto_4

    :sswitch_6
    const-string v2, "9"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_3

    :cond_f
    move v5, v6

    :cond_10
    :goto_4
    const/16 v2, 0x2db4

    packed-switch v5, :pswitch_data_2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le p0, v3, :cond_11

    goto/16 :goto_2

    :cond_11
    const/16 v3, 0x384

    goto :goto_5

    :pswitch_8
    const/16 v3, 0x1518

    goto :goto_5

    :cond_12
    invoke-static {p0}, Lme/w;->k(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v8, :cond_13

    const/16 v3, 0x514

    goto :goto_5

    :cond_13
    const/16 v3, 0xa8c

    :goto_5
    :pswitch_9
    const-wide/16 v4, 0x3c

    mul-long/2addr v0, v4

    mul-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    int-to-long v2, v3

    div-long/2addr v0, v2

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x39 -> :sswitch_6
        0x61f -> :sswitch_5
        0x620 -> :sswitch_4
        0x621 -> :sswitch_3
        0x622 -> :sswitch_2
        0x623 -> :sswitch_1
        0x624 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
