.class public Lib/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lib/a$b;
    }
.end annotation


# static fields
.field private static final K:[I

.field private static final L:[I

.field private static final M:[I

.field private static final N:[I

.field private static final O:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lib/a$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:[I

.field private E:[I

.field private final F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lib/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lib/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private H:Z

.field private I:Z

.field private J:[B

.field private final a:[J

.field private final b:[J

.field private final c:[Ljava/lang/String;

.field private final d:[J

.field private final e:[J

.field private final f:[F

.field private g:Z

.field private final h:Z

.field private i:J

.field private j:F

.field private k:F

.field private l:F

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private s:J

.field private t:J

.field private u:J

.field private v:J

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lib/a;->K:[I

    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lib/a;->L:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lib/a;->M:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lib/a;->N:[I

    new-instance v0, Lib/a$a;

    invoke-direct {v0}, Lib/a$a;-><init>()V

    sput-object v0, Lib/a;->O:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    :array_1
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x2020
    .end array-data

    :array_2
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data

    :array_3
    .array-data 4
        0x4020
        0x4020
        0x4020
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 8

    const-string v0, "ProcessCpuTracker"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [J

    iput-object v2, p0, Lib/a;->a:[J

    new-array v1, v1, [J

    iput-object v1, p0, Lib/a;->b:[J

    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lib/a;->c:[Ljava/lang/String;

    new-array v2, v1, [J

    iput-object v2, p0, Lib/a;->d:[J

    new-array v1, v1, [J

    iput-object v1, p0, Lib/a;->e:[J

    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lib/a;->f:[F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lib/a;->g:Z

    const/4 v2, 0x0

    iput v2, p0, Lib/a;->j:F

    iput v2, p0, Lib/a;->k:F

    iput v2, p0, Lib/a;->l:F

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lib/a;->F:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lib/a;->G:Ljava/util/ArrayList;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lib/a;->I:Z

    const/16 v3, 0x1000

    new-array v3, v3, [B

    iput-object v3, p0, Lib/a;->J:[B

    iput-boolean p1, p0, Lib/a;->h:Z

    const-wide/16 v3, 0xa

    iput-wide v3, p0, Lib/a;->i:J

    :try_start_0
    const-string p1, "android.system.OsConstants"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v3, "_SC_CLK_TCK"

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    const-string v4, "libcore.io.Libcore"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "os"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "sysconf"

    new-array v6, v2, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v4, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v3, v1

    iput-wide v3, p0, Lib/a;->i:J
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    :goto_0
    invoke-static {v0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList<",
            "Lib/a$b;",
            ">;)[I"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p2

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v8, p5

    invoke-static {v0, v1}, Lib/c;->b(Ljava/lang/String;[I)[I

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    array-length v0, v9

    move v11, v0

    :goto_0
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v12, v0

    move v0, v10

    move v13, v0

    :goto_1
    if-ge v13, v11, :cond_11

    aget v2, v9, v13

    if-gez v2, :cond_1

    goto/16 :goto_c

    :cond_1
    const/4 v1, 0x0

    if-ge v0, v12, :cond_2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lib/a$b;

    move-object v15, v3

    goto :goto_2

    :cond_2
    move-object v15, v1

    :goto_2
    if-eqz v15, :cond_9

    iget v5, v15, Lib/a$b;->a:I

    if-ne v5, v2, :cond_9

    iput-boolean v10, v15, Lib/a$b;->z:Z

    iput-boolean v10, v15, Lib/a$b;->y:Z

    add-int/lit8 v16, v0, 0x1

    iget-boolean v0, v15, Lib/a$b;->h:Z

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v0, v6, Lib/a;->a:[J

    iget-object v5, v15, Lib/a$b;->c:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v14, Lib/a;->K:[I

    invoke-static {v5, v14, v1, v0, v1}, Lib/c;->d(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_4

    :cond_3
    move-wide/from16 v17, v3

    aget-wide v3, v0, v10

    move-wide/from16 v19, v3

    const/4 v1, 0x1

    aget-wide v3, v0, v1

    const/4 v1, 0x2

    aget-wide v21, v0, v1

    move/from16 v23, v11

    iget-wide v10, v6, Lib/a;->i:J

    move-wide/from16 v24, v3

    mul-long v3, v21, v10

    const/4 v1, 0x3

    aget-wide v21, v0, v1

    mul-long v10, v10, v21

    iget-wide v0, v15, Lib/a$b;->o:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_4

    iget-wide v0, v15, Lib/a$b;->p:J

    cmp-long v0, v10, v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iput v0, v15, Lib/a$b;->q:I

    iput v0, v15, Lib/a$b;->r:I

    iput v0, v15, Lib/a$b;->u:I

    iput v0, v15, Lib/a$b;->v:I

    iget-boolean v1, v15, Lib/a$b;->x:Z

    if-eqz v1, :cond_8

    iput-boolean v0, v15, Lib/a$b;->x:Z

    goto/16 :goto_5

    :cond_4
    iget-boolean v0, v15, Lib/a$b;->x:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, v15, Lib/a$b;->x:Z

    :cond_5
    if-gez v7, :cond_6

    iget-object v0, v15, Lib/a$b;->d:Ljava/lang/String;

    invoke-direct {v6, v15, v0}, Lib/a;->c(Lib/a$b;Ljava/lang/String;)V

    iget-object v5, v15, Lib/a$b;->f:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    iget-object v1, v15, Lib/a$b;->e:Ljava/lang/String;

    const/16 v21, 0x0

    iget-object v0, v6, Lib/a;->E:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v32, v3

    move-wide/from16 v26, v17

    move-wide/from16 v28, v19

    move-wide/from16 v30, v24

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct/range {v0 .. v5}, Lib/a;->a(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v6, Lib/a;->E:[I

    goto :goto_3

    :cond_6
    move-wide/from16 v32, v3

    move-wide/from16 v26, v17

    move-wide/from16 v28, v19

    move-wide/from16 v30, v24

    :goto_3
    iget-wide v0, v15, Lib/a$b;->m:J

    move-wide/from16 v2, v26

    sub-long v0, v2, v0

    iput-wide v0, v15, Lib/a$b;->n:J

    iput-wide v2, v15, Lib/a$b;->m:J

    iget-wide v0, v15, Lib/a$b;->o:J

    move-wide/from16 v2, v32

    sub-long v0, v2, v0

    long-to-int v0, v0

    iput v0, v15, Lib/a$b;->q:I

    iget-wide v0, v15, Lib/a$b;->p:J

    sub-long v0, v10, v0

    long-to-int v0, v0

    iput v0, v15, Lib/a$b;->r:I

    iput-wide v2, v15, Lib/a$b;->o:J

    iput-wide v10, v15, Lib/a$b;->p:J

    iget-wide v0, v15, Lib/a$b;->s:J

    move-wide/from16 v2, v28

    sub-long v0, v2, v0

    long-to-int v0, v0

    iput v0, v15, Lib/a$b;->u:I

    iget-wide v0, v15, Lib/a$b;->t:J

    move-wide/from16 v4, v30

    sub-long v0, v4, v0

    long-to-int v0, v0

    iput v0, v15, Lib/a$b;->v:I

    iput-wide v2, v15, Lib/a$b;->s:J

    iput-wide v4, v15, Lib/a$b;->t:J

    const/4 v0, 0x1

    iput-boolean v0, v15, Lib/a$b;->y:Z

    goto :goto_5

    :cond_7
    :goto_4
    move/from16 v23, v11

    :cond_8
    :goto_5
    move/from16 v0, v16

    :goto_6
    const/4 v1, 0x1

    goto/16 :goto_b

    :cond_9
    move/from16 v23, v11

    if-eqz v15, :cond_b

    iget v3, v15, Lib/a$b;->a:I

    if-le v3, v2, :cond_a

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    iput v3, v15, Lib/a$b;->q:I

    iput v3, v15, Lib/a$b;->r:I

    iput v3, v15, Lib/a$b;->u:I

    iput v3, v15, Lib/a$b;->v:I

    const/4 v1, 0x1

    iput-boolean v1, v15, Lib/a$b;->A:Z

    iput-boolean v1, v15, Lib/a$b;->y:Z

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v13, v13, -0x1

    goto :goto_6

    :cond_b
    :goto_7
    new-instance v10, Lib/a$b;

    iget-boolean v3, v6, Lib/a;->h:Z

    invoke-direct {v10, v2, v7, v3}, Lib/a$b;-><init>(IIZ)V

    invoke-virtual {v8, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v11, v0, 0x1

    add-int/lit8 v12, v12, 0x1

    iget-object v0, v6, Lib/a;->c:[Ljava/lang/String;

    iget-object v3, v6, Lib/a;->d:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v10, Lib/a$b;->m:J

    iget-object v4, v10, Lib/a$b;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lib/a;->L:[I

    invoke-static {v4, v5, v0, v3, v1}, Lib/c;->d(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x6

    aget-wide v4, v3, v1

    iput-wide v4, v10, Lib/a$b;->l:J

    iget v1, v10, Lib/a$b;->b:I

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    iput-boolean v1, v10, Lib/a$b;->h:Z

    goto :goto_8

    :cond_c
    const/4 v1, 0x1

    :goto_8
    const/4 v4, 0x0

    aget-object v0, v0, v4

    iput-object v0, v10, Lib/a$b;->i:Ljava/lang/String;

    aget-wide v4, v3, v1

    iput-wide v4, v10, Lib/a$b;->s:J

    const/4 v0, 0x2

    aget-wide v0, v3, v0

    iput-wide v0, v10, Lib/a$b;->t:J

    const/4 v0, 0x3

    aget-wide v0, v3, v0

    iget-wide v4, v6, Lib/a;->i:J

    mul-long/2addr v0, v4

    iput-wide v0, v10, Lib/a$b;->o:J

    const/4 v0, 0x4

    aget-wide v0, v3, v0

    mul-long/2addr v0, v4

    iput-wide v0, v10, Lib/a$b;->p:J

    const/4 v0, 0x5

    aget-wide v0, v3, v0

    mul-long/2addr v0, v4

    iput-wide v0, v10, Lib/a$b;->w:J

    goto :goto_9

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping unknown process pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessCpuTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "<unknown>"

    iput-object v0, v10, Lib/a$b;->i:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, v10, Lib/a$b;->p:J

    iput-wide v0, v10, Lib/a$b;->o:J

    iput-wide v0, v10, Lib/a$b;->t:J

    iput-wide v0, v10, Lib/a$b;->s:J

    :goto_9
    if-gez v7, :cond_e

    iget-object v0, v10, Lib/a$b;->d:Ljava/lang/String;

    invoke-direct {v6, v10, v0}, Lib/a;->c(Lib/a$b;Ljava/lang/String;)V

    iget-object v5, v10, Lib/a$b;->f:Ljava/util/ArrayList;

    if-eqz v5, :cond_f

    iget-object v1, v10, Lib/a$b;->e:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, v6, Lib/a;->E:[I

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lib/a;->a(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v6, Lib/a;->E:[I

    goto :goto_a

    :cond_e
    iget-boolean v0, v10, Lib/a$b;->h:Z

    if-eqz v0, :cond_f

    iget-object v0, v10, Lib/a$b;->i:Ljava/lang/String;

    iput-object v0, v10, Lib/a$b;->j:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lib/a;->g(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lib/a$b;->k:I

    :cond_f
    :goto_a
    const/4 v0, 0x0

    iput v0, v10, Lib/a$b;->q:I

    iput v0, v10, Lib/a$b;->r:I

    iput v0, v10, Lib/a$b;->u:I

    iput v0, v10, Lib/a$b;->v:I

    const/4 v1, 0x1

    iput-boolean v1, v10, Lib/a$b;->z:Z

    if-nez p3, :cond_10

    iget-boolean v0, v10, Lib/a$b;->h:Z

    if-eqz v0, :cond_10

    iput-boolean v1, v10, Lib/a$b;->y:Z

    :cond_10
    move v0, v11

    :goto_b
    add-int/2addr v13, v1

    move/from16 v11, v23

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_11
    :goto_c
    const/4 v1, 0x1

    :goto_d
    if-ge v0, v12, :cond_12

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/a$b;

    const/4 v3, 0x0

    iput v3, v2, Lib/a$b;->q:I

    iput v3, v2, Lib/a$b;->r:I

    iput v3, v2, Lib/a$b;->u:I

    iput v3, v2, Lib/a$b;->v:I

    iput-boolean v1, v2, Lib/a$b;->A:Z

    iput-boolean v1, v2, Lib/a$b;->y:Z

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v12, v12, -0x1

    goto :goto_d

    :cond_12
    return-object v9
.end method

.method private c(Lib/a$b;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p1, Lib/a$b;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "app_process"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lib/a$b;->j:Ljava/lang/String;

    const-string v2, "<pre-initialized>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lib/a;->h(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object v0, p2

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p1, Lib/a$b;->i:Ljava/lang/String;

    :cond_3
    iget-object p2, p1, Lib/a$b;->j:Ljava/lang/String;

    if-eqz p2, :cond_4

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    iput-object v0, p1, Lib/a$b;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lib/a;->g(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lib/a$b;->k:I

    :cond_5
    return-void
.end method

.method private h(Ljava/lang/String;C)Ljava/lang/String;
    .locals 6

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p1, p0, Lib/a;->J:[B

    invoke-virtual {v2, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    if-lez p1, :cond_2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p1, :cond_1

    iget-object v5, p0, Lib/a;->J:[B

    aget-byte v5, v5, v4

    if-ne v5, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/String;

    iget-object p2, p0, Lib/a;->J:[B

    invoke-direct {p1, p2, v3, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lbl/e;->b(Ljava/io/InputStream;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_2
    invoke-static {v1}, Lbl/e;->b(Ljava/io/InputStream;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p1

    :catch_0
    move-object v2, v1

    :catch_1
    :cond_2
    invoke-static {v2}, Lbl/e;->b(Ljava/io/InputStream;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget-object v0, p0, Lib/a;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final d(I)Lib/a$b;
    .locals 1

    iget-object v0, p0, Lib/a;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/a$b;

    return-object p1
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lib/a;->I:Z

    invoke-virtual {p0}, Lib/a;->i()V

    return-void
.end method

.method public f(FFF)V
    .locals 0

    return-void
.end method

.method public g(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public i()V
    .locals 20

    move-object/from16 v7, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, v7, Lib/a;->e:[J

    sget-object v5, Lib/a;->M:[I

    const-string v6, "/proc/stat"

    const/4 v8, 0x0

    invoke-static {v6, v5, v8, v4, v8}, Lib/c;->d(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v5, :cond_0

    aget-wide v5, v4, v11

    aget-wide v12, v4, v10

    add-long/2addr v5, v12

    iget-wide v12, v7, Lib/a;->i:J

    mul-long/2addr v5, v12

    aget-wide v14, v4, v9

    mul-long/2addr v14, v12

    const/16 v16, 0x3

    aget-wide v16, v4, v16

    mul-long v8, v16, v12

    const/16 v16, 0x4

    aget-wide v16, v4, v16

    mul-long v10, v16, v12

    const/16 v16, 0x5

    aget-wide v16, v4, v16

    move-wide/from16 v18, v2

    mul-long v2, v16, v12

    const/16 v16, 0x6

    aget-wide v16, v4, v16

    mul-long v12, v12, v16

    move-wide/from16 v16, v0

    iget-wide v0, v7, Lib/a;->q:J

    sub-long v0, v5, v0

    long-to-int v0, v0

    iput v0, v7, Lib/a;->w:I

    iget-wide v0, v7, Lib/a;->r:J

    sub-long v0, v14, v0

    long-to-int v0, v0

    iput v0, v7, Lib/a;->x:I

    iget-wide v0, v7, Lib/a;->s:J

    sub-long v0, v10, v0

    long-to-int v0, v0

    iput v0, v7, Lib/a;->y:I

    iget-wide v0, v7, Lib/a;->t:J

    sub-long v0, v2, v0

    long-to-int v0, v0

    iput v0, v7, Lib/a;->z:I

    iget-wide v0, v7, Lib/a;->u:J

    sub-long v0, v12, v0

    long-to-int v0, v0

    iput v0, v7, Lib/a;->A:I

    iget-wide v0, v7, Lib/a;->v:J

    sub-long v0, v8, v0

    long-to-int v0, v0

    iput v0, v7, Lib/a;->B:I

    const/4 v0, 0x1

    iput-boolean v0, v7, Lib/a;->C:Z

    iput-wide v5, v7, Lib/a;->q:J

    iput-wide v14, v7, Lib/a;->r:J

    iput-wide v10, v7, Lib/a;->s:J

    iput-wide v2, v7, Lib/a;->t:J

    iput-wide v12, v7, Lib/a;->u:J

    iput-wide v8, v7, Lib/a;->v:J

    goto :goto_0

    :cond_0
    move-wide/from16 v16, v0

    move-wide/from16 v18, v2

    :goto_0
    iget-wide v0, v7, Lib/a;->m:J

    iput-wide v0, v7, Lib/a;->n:J

    move-wide/from16 v0, v16

    iput-wide v0, v7, Lib/a;->m:J

    iget-wide v0, v7, Lib/a;->o:J

    iput-wide v0, v7, Lib/a;->p:J

    move-wide/from16 v0, v18

    iput-wide v0, v7, Lib/a;->o:J

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v8

    :try_start_0
    const-string v2, "/proc"

    const/4 v3, -0x1

    iget-boolean v4, v7, Lib/a;->I:Z

    iget-object v5, v7, Lib/a;->D:[I

    iget-object v6, v7, Lib/a;->F:Ljava/util/ArrayList;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lib/a;->a(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v7, Lib/a;->D:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    iget-object v0, v7, Lib/a;->f:[F

    iget-boolean v1, v7, Lib/a;->g:Z

    if-eqz v1, :cond_2

    sget-object v1, Lib/a;->N:[I

    const-string v2, "/proc/loadavg"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3, v0}, Lib/c;->d(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v3, 0x2

    aget v0, v0, v3

    iget v3, v7, Lib/a;->j:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    iget v3, v7, Lib/a;->k:F

    cmpl-float v3, v1, v3

    if-nez v3, :cond_1

    iget v3, v7, Lib/a;->l:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_2

    :cond_1
    iput v2, v7, Lib/a;->j:F

    iput v1, v7, Lib/a;->k:F

    iput v0, v7, Lib/a;->l:F

    invoke-virtual {v7, v2, v1, v0}, Lib/a;->f(FFF)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, v7, Lib/a;->H:Z

    iput-boolean v0, v7, Lib/a;->I:Z

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method
