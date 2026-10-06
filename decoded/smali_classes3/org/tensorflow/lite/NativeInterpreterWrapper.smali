.class Lorg/tensorflow/lite/NativeInterpreterWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field a:J

.field b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:Ljava/nio/ByteBuffer;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:[Lorg/tensorflow/lite/TensorImpl;

.field private j:[Lorg/tensorflow/lite/TensorImpl;

.field private k:Z

.field private l:Z

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljn/b;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/AutoCloseable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/tensorflow/lite/c$a;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->d:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->e:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->k:Z

    iput-boolean v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->l:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->m:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->n:Ljava/util/List;

    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->a()V

    const/16 v0, 0x200

    invoke-static {v0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->createErrorReporter(I)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->createModel(Ljava/lang/String;J)J

    move-result-wide v4

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->j(JJLorg/tensorflow/lite/c$a;)V

    return-void
.end method

.method private static native allocateTensors(JJ)J
.end method

.method private static native allowBufferHandleOutput(JZ)V
.end method

.method private static native allowFp16PrecisionForFp32(JZ)V
.end method

.method private c(Lorg/tensorflow/lite/c$a;)V
    .locals 3

    iget-boolean v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljn/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->n(Ljava/util/List;)Ljn/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->n:Ljava/util/List;

    move-object v2, v0

    check-cast v2, Ljava/lang/AutoCloseable;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->m:Ljava/util/List;

    invoke-virtual {p1}, Ljn/c;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ljn/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/tensorflow/lite/nnapi/NnApiDelegate;

    invoke-direct {v0}, Lorg/tensorflow/lite/nnapi/NnApiDelegate;-><init>()V

    iget-object v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->l(Lorg/tensorflow/lite/c$a;)V

    return-void
.end method

.method private static native createCancellationFlag(J)J
.end method

.method private static native createErrorReporter(I)J
.end method

.method private static native createInterpreter(JJILjava/util/List;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native createModel(Ljava/lang/String;J)J
.end method

.method private static native createXNNPACKDelegate(JJII)Lorg/tensorflow/lite/XnnpackDelegate;
.end method

.method private d()Z
    .locals 6

    iget-boolean v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->k:Z

    iget-wide v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->b:J

    iget-wide v4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->a:J

    invoke-static {v2, v3, v4, v5}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->allocateTensors(JJ)J

    :goto_0
    iget-object v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->j:[Lorg/tensorflow/lite/TensorImpl;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/tensorflow/lite/TensorImpl;->o()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static native delete(JJJ)V
.end method

.method private static native deleteCancellationFlag(J)J
.end method

.method private static native getInputCount(J)I
.end method

.method private static native getInputTensorIndex(JI)I
.end method

.method private static native getOutputCount(J)I
.end method

.method private static native getOutputTensorIndex(JI)I
.end method

.method private static native getSignatureKeys(J)[Ljava/lang/String;
.end method

.method private static native hasUnresolvedFlexOp(J)Z
.end method

.method private j(JJLorg/tensorflow/lite/c$a;)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    if-nez p5, :cond_0

    new-instance v1, Lorg/tensorflow/lite/c$a;

    invoke-direct {v1}, Lorg/tensorflow/lite/c$a;-><init>()V

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p5

    :goto_0
    iput-wide v7, v0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->a:J

    move-wide/from16 v10, p3

    iput-wide v10, v0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->c:J

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljn/c;->b()I

    move-result v5

    move-wide/from16 v1, p3

    move-wide/from16 v3, p1

    move-object v6, v12

    invoke-static/range {v1 .. v6}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->createInterpreter(JJILjava/util/List;)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->b:J

    invoke-static {v1, v2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->hasUnresolvedFlexOp(J)Z

    move-result v1

    iput-boolean v1, v0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->l:Z

    invoke-direct {v0, v9}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->c(Lorg/tensorflow/lite/c$a;)V

    iget-object v1, v0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v1, v0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/b;

    invoke-interface {v2}, Ljn/b;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    iget-wide v1, v0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->b:J

    move-wide/from16 v17, v1

    invoke-static/range {v13 .. v18}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->delete(JJJ)V

    invoke-virtual {v9}, Ljn/c;->b()I

    move-result v5

    move-wide/from16 v1, p3

    move-wide/from16 v3, p1

    move-object v6, v12

    invoke-static/range {v1 .. v6}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->createInterpreter(JJILjava/util/List;)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->b:J

    :cond_2
    iget-object v1, v9, Lorg/tensorflow/lite/c$a;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    iget-wide v2, v0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->b:J

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v3, v1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->allowFp16PrecisionForFp32(JZ)V

    :cond_3
    iget-object v1, v9, Lorg/tensorflow/lite/c$a;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    iget-wide v2, v0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->b:J

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v3, v1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->allowBufferHandleOutput(JZ)V

    :cond_4
    invoke-virtual {v9}, Ljn/c;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v1, v0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->b:J

    invoke-static {v1, v2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->createCancellationFlag(J)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->d:J

    :cond_5
    iget-wide v1, v0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->b:J

    invoke-static {v1, v2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputCount(J)I

    move-result v1

    new-array v1, v1, [Lorg/tensorflow/lite/TensorImpl;

    iput-object v1, v0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->i:[Lorg/tensorflow/lite/TensorImpl;

    iget-wide v1, v0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->b:J

    invoke-static {v1, v2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getOutputCount(J)I

    move-result v1

    new-array v1, v1, [Lorg/tensorflow/lite/TensorImpl;

    iput-object v1, v0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->j:[Lorg/tensorflow/lite/TensorImpl;

    iget-object v1, v9, Lorg/tensorflow/lite/c$a;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    iget-wide v2, v0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->b:J

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v3, v1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->allowFp16PrecisionForFp32(JZ)V

    :cond_6
    iget-object v1, v9, Lorg/tensorflow/lite/c$a;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    iget-wide v2, v0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->b:J

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v3, v1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->allowBufferHandleOutput(JZ)V

    :cond_7
    iget-wide v1, v0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->b:J

    invoke-static {v1, v2, v7, v8}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->allocateTensors(JJ)J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->k:Z

    return-void
.end method

.method private l(Lorg/tensorflow/lite/c$a;)V
    .locals 7

    iget-object v0, p1, Lorg/tensorflow/lite/c$a;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    move v5, v0

    const/4 v0, 0x1

    if-ne v5, v0, :cond_1

    iget-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->b:J

    iget-wide v3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->a:J

    invoke-virtual {p1}, Ljn/c;->b()I

    move-result v6

    invoke-static/range {v1 .. v6}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->createXNNPACKDelegate(JJII)Lorg/tensorflow/lite/XnnpackDelegate;

    const/4 p1, 0x0

    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private static n(Ljava/util/List;)Ljn/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljn/b;",
            ">;)",
            "Ljn/b;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "org.tensorflow.lite.flex.FlexDelegate"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/b;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    new-array v2, p0, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljn/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static native resizeInput(JJI[IZ)Z
.end method

.method private static native run(JJ)V
.end method


# virtual methods
.method public close()V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->i:[Lorg/tensorflow/lite/TensorImpl;

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/tensorflow/lite/TensorImpl;->b()V

    iget-object v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->i:[Lorg/tensorflow/lite/TensorImpl;

    aput-object v4, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->j:[Lorg/tensorflow/lite/TensorImpl;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/tensorflow/lite/TensorImpl;->b()V

    iget-object v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->j:[Lorg/tensorflow/lite/TensorImpl;

    aput-object v4, v2, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-wide v5, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->a:J

    iget-wide v7, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->c:J

    iget-wide v9, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->b:J

    invoke-static/range {v5 .. v10}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->delete(JJJ)V

    iget-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->d:J

    invoke-static {v1, v2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->deleteCancellationFlag(J)J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->a:J

    iput-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->c:J

    iput-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->b:J

    iput-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->d:J

    iput-object v4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->f:Ljava/nio/ByteBuffer;

    iput-object v4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->g:Ljava/util/Map;

    iput-object v4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->h:Ljava/util/Map;

    iput-boolean v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->k:Z

    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/AutoCloseable;

    :try_start_0
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to close flex delegate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method e(I)Lorg/tensorflow/lite/TensorImpl;
    .locals 4

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->i:[Lorg/tensorflow/lite/TensorImpl;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    iget-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->b:J

    invoke-static {v1, v2, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputTensorIndex(JI)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/tensorflow/lite/TensorImpl;->i(JI)Lorg/tensorflow/lite/TensorImpl;

    move-result-object v1

    aput-object v1, v0, p1

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid input Tensor index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method f(I)Lorg/tensorflow/lite/TensorImpl;
    .locals 4

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->j:[Lorg/tensorflow/lite/TensorImpl;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    iget-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->b:J

    invoke-static {v1, v2, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getOutputTensorIndex(JI)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/tensorflow/lite/TensorImpl;->i(JI)Lorg/tensorflow/lite/TensorImpl;

    move-result-object v1

    aput-object v1, v0, p1

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid output Tensor index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()[Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->b:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getSignatureKeys(J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method o(I[I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->p(I[IZ)V

    return-void
.end method

.method p(I[IZ)V
    .locals 7

    iget-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->b:J

    iget-wide v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->a:J

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->resizeInput(JJI[IZ)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->k:Z

    iget-object p2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->i:[Lorg/tensorflow/lite/TensorImpl;

    aget-object p1, p2, p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/tensorflow/lite/TensorImpl;->o()V

    :cond_0
    return-void
.end method

.method s([Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->e:J

    if-eqz p1, :cond_8

    array-length v0, p1

    if-eqz v0, :cond_8

    if-eqz p2, :cond_7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->e(I)Lorg/tensorflow/lite/TensorImpl;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lorg/tensorflow/lite/TensorImpl;->j(Ljava/lang/Object;)[I

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, v2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->o(I[I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->d()Z

    move-result v1

    move v2, v0

    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->e(I)Lorg/tensorflow/lite/TensorImpl;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Lorg/tensorflow/lite/TensorImpl;->p(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->b:J

    iget-wide v6, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->a:J

    invoke-static {v4, v5, v6, v7}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->run(JJ)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    if-eqz v1, :cond_4

    :goto_2
    iget-object p1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->j:[Lorg/tensorflow/lite/TensorImpl;

    array-length v1, p1

    if-ge v0, v1, :cond_4

    aget-object p1, p1, v0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/tensorflow/lite/TensorImpl;->o()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->f(I)Lorg/tensorflow/lite/TensorImpl;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/tensorflow/lite/TensorImpl;->e(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    iput-wide v4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->e:J

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Input error: Outputs should not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Input error: Inputs should not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
