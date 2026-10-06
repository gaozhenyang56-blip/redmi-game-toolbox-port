.class public final Ljc/g;
.super Ljc/f;
.source "SourceFile"


# instance fields
.field private final b:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:I

.field private final f:J

.field private final g:Z

.field private final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:Z

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:I

.field private v:I

.field private w:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJZLjava/lang/String;Ljava/lang/String;IIIIZ)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerPackageName"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "calleePackageName"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startTime"

    invoke-static {p8, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endTime"

    invoke-static {p9, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljc/f;-><init>()V

    iput-object p1, p0, Ljc/g;->b:Landroid/content/Context;

    iput-object p2, p0, Ljc/g;->c:Ljava/lang/String;

    iput-object p3, p0, Ljc/g;->d:Ljava/lang/String;

    iput p4, p0, Ljc/g;->e:I

    iput-wide p5, p0, Ljc/g;->f:J

    iput-boolean p7, p0, Ljc/g;->g:Z

    iput-object p8, p0, Ljc/g;->h:Ljava/lang/String;

    iput-object p9, p0, Ljc/g;->i:Ljava/lang/String;

    iput p10, p0, Ljc/g;->j:I

    iput p11, p0, Ljc/g;->k:I

    iput p12, p0, Ljc/g;->l:I

    iput p13, p0, Ljc/g;->m:I

    iput-boolean p14, p0, Ljc/g;->n:Z

    iput p11, p0, Ljc/g;->r:I

    const/4 p1, 0x1

    iput p1, p0, Ljc/g;->v:I

    invoke-direct {p0}, Ljc/g;->o()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJZLjava/lang/String;Ljava/lang/String;IIIIZILbk/g;)V
    .locals 16

    move/from16 v0, p15

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v15, v0

    goto :goto_0

    :cond_0
    move/from16 v15, p14

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-direct/range {v1 .. v15}, Ljc/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJZLjava/lang/String;Ljava/lang/String;IIIIZ)V

    return-void
.end method

.method private final c(I)V
    .locals 1

    iget v0, p0, Ljc/g;->u:I

    or-int/2addr p1, v0

    iput p1, p0, Ljc/g;->u:I

    return-void
.end method

.method private final o()V
    .locals 13

    iget-object v0, p0, Ljc/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Ljc/g;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljc/g;->q(Ljava/lang/String;)V

    iget v1, p0, Ljc/g;->k:I

    iput v1, p0, Ljc/g;->r:I

    iget-object v1, p0, Ljc/g;->b:Landroid/content/Context;

    iget-object v2, p0, Ljc/g;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Ljc/g;->n:Z

    if-eqz v2, :cond_0

    const v2, 0x7f1211ba

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resource.getString(R.string.permission_usage_now)"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Ljc/g;->b:Landroid/content/Context;

    iget-object v3, p0, Ljc/g;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Lmc/c;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getBehaviorDay(context, endTime)"

    :goto_0
    invoke-static {v2, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljc/f;->b(Ljava/lang/String;)V

    iget-object v2, p0, Ljc/g;->h:Ljava/lang/String;

    invoke-static {v2}, Ljc/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljc/g;->i:Ljava/lang/String;

    invoke-static {v3}, Ljc/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget v3, p0, Ljc/g;->m:I

    if-nez v3, :cond_2

    invoke-virtual {p0, v1}, Ljc/g;->t(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Ljc/g;->c:Ljava/lang/String;

    iget-object v3, p0, Ljc/g;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lz4/b;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-string v3, "resource.getString(usageInfoRes, timeWillShow)"

    const-string v4, "resource.getQuantityStri\u2026unt, timeWillShow, count)"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_6

    const/16 v1, 0x10

    invoke-direct {p0, v1}, Ljc/g;->c(I)V

    iget-object v1, p0, Ljc/g;->d:Ljava/lang/String;

    invoke-static {v1}, Lz4/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {p0, v1}, Ljc/g;->q(Ljava/lang/String;)V

    iget-object v8, p0, Ljc/g;->b:Landroid/content/Context;

    invoke-static {v8, v1}, Lz4/b;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v9, "terminalDeviceInfo.first"

    invoke-static {v1, v9}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, p0, Ljc/g;->v:I

    iget v1, p0, Ljc/g;->m:I

    const-string v9, "context.resources"

    if-nez v1, :cond_3

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v1, "terminalDeviceInfo.second"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljc/g;->t(Ljava/lang/String;)V

    sget-object v0, Ljc/h;->a:Ljc/h;

    iget-object v1, p0, Ljc/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v9}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, p0, Ljc/g;->e:I

    iget v4, p0, Ljc/g;->j:I

    invoke-virtual {v0, v1, v2, v3, v4}, Ljc/h;->d(Landroid/content/res/Resources;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    sget-object v1, Ljc/h;->a:Ljc/h;

    iget-object v8, p0, Ljc/g;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v9}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v9, p0, Ljc/g;->e:I

    invoke-virtual {v1, v8, v9}, Ljc/h;->e(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljc/g;->t(Ljava/lang/String;)V

    iget-boolean v8, p0, Ljc/g;->g:Z

    iget v9, p0, Ljc/g;->j:I

    invoke-virtual {v1, v8, v9}, Ljc/h;->i(ZI)I

    move-result v1

    iget v8, p0, Ljc/g;->j:I

    if-ne v8, v7, :cond_4

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v7

    invoke-virtual {v0, v1, v8, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initContent error for not found terminal device:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PermissionUsageData"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljc/g;->q(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljc/g;->t(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p0, v0}, Ljc/g;->s(Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_6
    iget-object v1, p0, Ljc/g;->d:Ljava/lang/String;

    invoke-static {v1}, Ljc/l;->g(Ljava/lang/String;)Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_15

    const/16 v1, 0x20

    invoke-direct {p0, v1}, Ljc/g;->c(I)V

    const-string v1, "WakePath"

    iput-object v1, p0, Ljc/g;->t:Ljava/lang/String;

    iget-object v1, p0, Ljc/g;->b:Landroid/content/Context;

    iget-object v9, p0, Ljc/g;->d:Ljava/lang/String;

    invoke-static {v1, v9}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljc/g;->s:Ljava/lang/String;

    iget-object v1, p0, Ljc/g;->d:Ljava/lang/String;

    const-string v9, "delete_picture"

    invoke-static {v9, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, Ljc/g;->m:I

    if-nez v1, :cond_a

    iget v1, p0, Ljc/g;->j:I

    if-ne v1, v7, :cond_8

    iget-boolean v1, p0, Ljc/g;->g:Z

    if-eqz v1, :cond_7

    const v1, 0x7f121181

    goto :goto_4

    :cond_7
    const v1, 0x7f1211a1

    :goto_4
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resource.getString(resId, timeWillShow)"

    :goto_5
    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    iget-boolean v3, p0, Ljc/g;->g:Z

    if-eqz v3, :cond_9

    const v3, 0x7f1000ab

    goto :goto_6

    :cond_9
    const v3, 0x7f1000cb

    :goto_6
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-virtual {v0, v3, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-static {v0, v4}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    const v1, 0x7f12119a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v8, "resource.getString(R.str\u2026mission_usage_delete_pic)"

    invoke-static {v1, v8}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljc/g;->t(Ljava/lang/String;)V

    sget-object v1, Ljc/h;->a:Ljc/h;

    iget-boolean v8, p0, Ljc/g;->g:Z

    iget v9, p0, Ljc/g;->j:I

    invoke-virtual {v1, v8, v9}, Ljc/h;->i(ZI)I

    move-result v1

    iget v8, p0, Ljc/g;->j:I

    if-ne v8, v7, :cond_b

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_b
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v7

    invoke-virtual {v0, v1, v8, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_c
    iget v1, p0, Ljc/g;->m:I

    const-string v9, "calleePackageLabel"

    if-nez v1, :cond_12

    iget v1, p0, Ljc/g;->j:I

    if-ne v1, v7, :cond_f

    iget-boolean v1, p0, Ljc/g;->g:Z

    if-eqz v1, :cond_d

    const v1, 0x7f121198

    goto :goto_8

    :cond_d
    const v1, 0x7f1211b8

    :goto_8
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v6

    iget-object v2, p0, Ljc/g;->s:Ljava/lang/String;

    if-nez v2, :cond_e

    invoke-static {v9}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_9

    :cond_e
    move-object v8, v2

    :goto_9
    aput-object v8, v3, v7

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resource.getString(resId\u2026Show, calleePackageLabel)"

    goto/16 :goto_5

    :cond_f
    iget-boolean v3, p0, Ljc/g;->g:Z

    if-eqz v3, :cond_10

    const v3, 0x7f1000c2

    goto :goto_a

    :cond_10
    const v3, 0x7f1000e2

    :goto_a
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    iget-object v2, p0, Ljc/g;->s:Ljava/lang/String;

    if-nez v2, :cond_11

    invoke-static {v9}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_b

    :cond_11
    move-object v8, v2

    :goto_b
    aput-object v8, v4, v7

    iget v2, p0, Ljc/g;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resource.getQuantityStri\u2026                        )"

    goto/16 :goto_5

    :cond_12
    const v1, 0x7f121bc1

    new-array v10, v7, [Ljava/lang/Object;

    iget-object v11, p0, Ljc/g;->s:Ljava/lang/String;

    if-nez v11, :cond_13

    invoke-static {v9}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_c

    :cond_13
    move-object v8, v11

    :goto_c
    aput-object v8, v10, v6

    invoke-virtual {v0, v1, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "resource.getString(R.str\u2026llee, calleePackageLabel)"

    invoke-static {v1, v8}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljc/g;->t(Ljava/lang/String;)V

    sget-object v1, Ljc/h;->a:Ljc/h;

    iget-boolean v8, p0, Ljc/g;->g:Z

    iget v9, p0, Ljc/g;->j:I

    invoke-virtual {v1, v8, v9}, Ljc/h;->i(ZI)I

    move-result v1

    iget v8, p0, Ljc/g;->j:I

    if-ne v8, v7, :cond_14

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_14
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v7

    invoke-virtual {v0, v1, v8, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_15
    iget-object v1, p0, Ljc/g;->c:Ljava/lang/String;

    iget v3, p0, Ljc/g;->k:I

    invoke-static {v1, v6, v3}, Ltg/a;->d(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_17

    :cond_16
    move v1, v6

    goto :goto_d

    :cond_17
    iget-object v3, p0, Ljc/g;->b:Landroid/content/Context;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3, v1}, Lxc/m;->b(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lxc/m$a;

    move-result-object v1

    sget-object v3, Lxc/m$a;->a:Lxc/m$a;

    if-eq v1, v3, :cond_16

    move v1, v7

    :goto_d
    const/16 v3, 0x40

    invoke-direct {p0, v3}, Ljc/g;->c(I)V

    const-wide v3, 0x200000000000L

    if-nez v1, :cond_19

    invoke-virtual {p0}, Ljc/g;->i()J

    move-result-wide v9

    cmp-long v9, v9, v3

    if-eqz v9, :cond_18

    sget-object v9, Ljc/h;->a:Ljc/h;

    iget v10, p0, Ljc/g;->e:I

    invoke-virtual {v9, v10}, Ljc/h;->m(I)Z

    move-result v9

    if-eqz v9, :cond_19

    :cond_18
    iget-object v9, p0, Ljc/g;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f12116c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "{\n                      \u2026ge)\n                    }"

    invoke-static {v9, v10}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_e

    :cond_19
    sget-object v9, Ljc/h;->a:Ljc/h;

    iget v10, p0, Ljc/g;->e:I

    invoke-virtual {v9, v10}, Ljc/h;->j(I)Z

    move-result v10

    if-eqz v10, :cond_1a

    iget v10, p0, Ljc/g;->e:I

    iget-object v11, p0, Ljc/g;->b:Landroid/content/Context;

    invoke-virtual {v9, v10, v11}, Ljc/h;->b(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    goto :goto_e

    :cond_1a
    invoke-virtual {p0}, Ljc/g;->i()J

    move-result-wide v10

    iget-object v12, p0, Ljc/g;->b:Landroid/content/Context;

    invoke-virtual {v9, v10, v11, v12}, Ljc/h;->c(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    :goto_e
    iput-object v9, p0, Ljc/g;->t:Ljava/lang/String;

    iget v10, p0, Ljc/g;->m:I

    const-string v11, "{\n                    va\u2026 count)\n                }"

    if-nez v10, :cond_23

    iget-boolean v8, p0, Ljc/g;->n:Z

    if-eqz v8, :cond_1b

    sget-object v1, Ljc/h;->a:Ljc/h;

    iget-wide v2, p0, Ljc/g;->f:J

    invoke-virtual {v1, v2, v3}, Ljc/h;->h(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{\n                    re\u2026ermId))\n                }"

    :goto_f
    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_1b
    if-nez v1, :cond_20

    invoke-virtual {p0}, Ljc/g;->i()J

    move-result-wide v8

    cmp-long v1, v8, v3

    if-eqz v1, :cond_1c

    sget-object v1, Ljc/h;->a:Ljc/h;

    iget v3, p0, Ljc/g;->e:I

    invoke-virtual {v1, v3}, Ljc/h;->m(I)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1c
    iget-boolean v1, p0, Ljc/g;->g:Z

    if-eqz v1, :cond_1e

    iget v1, p0, Ljc/g;->j:I

    if-ne v1, v7, :cond_1d

    const v1, 0x7f121194

    goto :goto_10

    :cond_1d
    const v1, 0x7f1000be

    goto :goto_10

    :cond_1e
    iget v1, p0, Ljc/g;->j:I

    if-ne v1, v7, :cond_1f

    const v1, 0x7f1211b4

    goto :goto_10

    :cond_1f
    const v1, 0x7f1000de

    goto :goto_10

    :cond_20
    sget-object v1, Ljc/h;->a:Ljc/h;

    iget v3, p0, Ljc/g;->e:I

    invoke-virtual {v1, v3}, Ljc/h;->j(I)Z

    move-result v3

    if-eqz v3, :cond_21

    iget v3, p0, Ljc/g;->e:I

    iget v4, p0, Ljc/g;->j:I

    iget-boolean v8, p0, Ljc/g;->g:Z

    invoke-virtual {v1, v3, v4, v8}, Ljc/h;->a(IIZ)I

    move-result v1

    goto :goto_10

    :cond_21
    iget-wide v3, p0, Ljc/g;->f:J

    iget-boolean v8, p0, Ljc/g;->g:Z

    iget v9, p0, Ljc/g;->j:I

    invoke-virtual {v1, v3, v4, v8, v9}, Ljc/h;->f(JZI)I

    move-result v1

    :goto_10
    iget v3, p0, Ljc/g;->j:I

    if-ne v3, v7, :cond_22

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_22
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-static {v0, v11}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_12
    invoke-virtual {p0, v0}, Ljc/g;->s(Ljava/lang/String;)V

    goto :goto_14

    :cond_23
    if-nez v9, :cond_24

    const-string v1, "permissionName"

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_13

    :cond_24
    move-object v8, v9

    :goto_13
    invoke-virtual {p0, v8}, Ljc/g;->t(Ljava/lang/String;)V

    iget-boolean v1, p0, Ljc/g;->n:Z

    if-eqz v1, :cond_25

    const v1, 0x7f1211bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{\n                    re\u2026access)\n                }"

    goto/16 :goto_f

    :cond_25
    sget-object v1, Ljc/h;->a:Ljc/h;

    iget-wide v3, p0, Ljc/g;->f:J

    iget-boolean v8, p0, Ljc/g;->g:Z

    iget v9, p0, Ljc/g;->j:I

    invoke-virtual {v1, v3, v4, v8, v9}, Ljc/h;->g(JZI)I

    move-result v1

    iget v3, p0, Ljc/g;->j:I

    if-ne v3, v7, :cond_26

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_26
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :goto_14
    invoke-virtual {p0}, Ljc/g;->i()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    cmp-long v2, v0, v2

    if-nez v2, :cond_27

    invoke-direct {p0, v5}, Ljc/g;->c(I)V

    goto :goto_16

    :cond_27
    const-wide/16 v2, 0x1000

    cmp-long v2, v0, v2

    if-nez v2, :cond_28

    const/4 v0, 0x4

    :goto_15
    invoke-direct {p0, v0}, Ljc/g;->c(I)V

    goto :goto_16

    :cond_28
    const-wide/32 v2, 0x20000

    cmp-long v0, v0, v2

    if-nez v0, :cond_29

    const/16 v0, 0x8

    goto :goto_15

    :cond_29
    :goto_16
    return-void
.end method


# virtual methods
.method public final d(I)Z
    .locals 1

    iget v0, p0, Ljc/g;->u:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ljc/g;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "exportPackageName"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Ljc/g;->r:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Ljc/g;->e:I

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ljc/g;->t:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "permissionName"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final i()J
    .locals 6

    iget-wide v0, p0, Ljc/g;->f:J

    const-wide v2, 0x10000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/32 v0, 0x10000000

    return-wide v0

    :cond_0
    const-wide v2, 0x20000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide v0, 0x80000000L

    return-wide v0

    :cond_1
    const-wide v2, 0x40000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    const-wide/32 v0, 0x1000000

    return-wide v0

    :cond_2
    const-wide v2, 0x80000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    const-wide/32 v0, 0x40000000

    return-wide v0

    :cond_3
    const-wide v2, 0x100000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    const-wide/16 v0, 0x40

    return-wide v0

    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_7

    iget v0, p0, Ljc/g;->e:I

    const/16 v1, 0x51

    const-wide/16 v4, -0x3

    if-eq v0, v1, :cond_6

    const/16 v1, 0x53

    if-eq v0, v1, :cond_5

    const/16 v1, 0x55

    if-eq v0, v1, :cond_5

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    move-wide v2, v4

    goto :goto_0

    :cond_6
    const-wide/16 v2, -0x2

    :goto_0
    return-wide v2

    :cond_7
    return-wide v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Ljc/g;->v:I

    return v0
.end method

.method public final k()J
    .locals 2

    iget-wide v0, p0, Ljc/g;->w:J

    return-wide v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ljc/g;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "usageInfo"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ljc/g;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "usageTitle"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Ljc/g;->n:Z

    return v0
.end method

.method public final p(Ljc/g;)Z
    .locals 1
    .param p1    # Ljc/g;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljc/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljc/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final q(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ljc/g;->q:Ljava/lang/String;

    return-void
.end method

.method public final r(J)V
    .locals 0

    iput-wide p1, p0, Ljc/g;->w:J

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ljc/g;->p:Ljava/lang/String;

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ljc/g;->o:Ljava/lang/String;

    return-void
.end method
