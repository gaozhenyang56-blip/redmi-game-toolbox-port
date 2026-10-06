.class final Lorg/tensorflow/lite/TensorImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private final b:Ljn/a;

.field private c:[I

.field private final d:[I

.field private final e:Ljn/d;


# direct methods
.method private constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/tensorflow/lite/TensorImpl;->a:J

    invoke-static {p1, p2}, Lorg/tensorflow/lite/TensorImpl;->dtype(J)I

    move-result v0

    invoke-static {v0}, Lorg/tensorflow/lite/a;->a(I)Ljn/a;

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/TensorImpl;->b:Ljn/a;

    invoke-static {p1, p2}, Lorg/tensorflow/lite/TensorImpl;->shape(J)[I

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/TensorImpl;->c:[I

    invoke-static {p1, p2}, Lorg/tensorflow/lite/TensorImpl;->shapeSignature(J)[I

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/TensorImpl;->d:[I

    new-instance v0, Ljn/d;

    invoke-static {p1, p2}, Lorg/tensorflow/lite/TensorImpl;->quantizationScale(J)F

    move-result v1

    invoke-static {p1, p2}, Lorg/tensorflow/lite/TensorImpl;->quantizationZeroPoint(J)I

    move-result p1

    invoke-direct {v0, v1, p1}, Ljn/d;-><init>(FI)V

    iput-object v0, p0, Lorg/tensorflow/lite/TensorImpl;->e:Ljn/d;

    return-void
.end method

.method private a()Ljava/nio/ByteBuffer;
    .locals 2

    iget-wide v0, p0, Lorg/tensorflow/lite/TensorImpl;->a:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/TensorImpl;->buffer(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static native buffer(J)Ljava/nio/ByteBuffer;
.end method

.method static c(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/tensorflow/lite/TensorImpl;->c(Ljava/lang/Object;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array lengths cannot be 0."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return v0
.end method

.method private static native create(JII)J
.end method

.method private static native delete(J)V
.end method

.method private static native dtype(J)I
.end method

.method private f(Ljava/nio/Buffer;)V
    .locals 3

    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lorg/tensorflow/lite/TensorImpl;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/nio/FloatBuffer;

    invoke-direct {p0}, Lorg/tensorflow/lite/TensorImpl;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/nio/LongBuffer;

    invoke-direct {p0}, Lorg/tensorflow/lite/TensorImpl;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/LongBuffer;->put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/nio/IntBuffer;

    invoke-direct {p0}, Lorg/tensorflow/lite/TensorImpl;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/nio/ShortBuffer;

    invoke-direct {p0}, Lorg/tensorflow/lite/TensorImpl;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    :goto_0
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected output buffer type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static h(Ljava/lang/Object;I[I)V
    .locals 4

    if-eqz p2, :cond_5

    array-length v0, p2

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    aget v1, p2, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    aput v0, p2, p1

    goto :goto_0

    :cond_1
    if-ne v1, v0, :cond_4

    :goto_0
    add-int/2addr p1, v3

    array-length v1, p2

    if-ne p1, v1, :cond_2

    return-void

    :cond_2
    :goto_1
    if-ge v2, v0, :cond_3

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/tensorflow/lite/TensorImpl;->h(Ljava/lang/Object;I[I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aget p2, p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v3

    const/4 p2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p2

    const-string p1, "Mismatched lengths (%d and %d) in dimension %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    return-void
.end method

.method private static native hasDelegateBufferHandle(J)Z
.end method

.method static i(JI)Lorg/tensorflow/lite/TensorImpl;
    .locals 2

    new-instance v0, Lorg/tensorflow/lite/TensorImpl;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lorg/tensorflow/lite/TensorImpl;->create(JII)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/tensorflow/lite/TensorImpl;-><init>(J)V

    return-object v0
.end method

.method private static k(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/nio/Buffer;

    return p0
.end method

.method private static l(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/nio/ByteBuffer;

    return p0
.end method

.method private static native name(J)Ljava/lang/String;
.end method

.method private static native numBytes(J)I
.end method

.method private q(Ljava/nio/Buffer;)V
    .locals 3

    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    :goto_0
    iget-wide v0, p0, Lorg/tensorflow/lite/TensorImpl;->a:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/lite/TensorImpl;->writeDirectBuffer(JLjava/nio/Buffer;)V

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Lorg/tensorflow/lite/TensorImpl;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    :cond_1
    instance-of v0, p1, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/nio/LongBuffer;

    invoke-virtual {v0}, Ljava/nio/LongBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/nio/LongBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/tensorflow/lite/TensorImpl;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/LongBuffer;->put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;

    goto/16 :goto_1

    :cond_3
    instance-of v0, p1, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    if-ne v1, v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lorg/tensorflow/lite/TensorImpl;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    goto :goto_1

    :cond_5
    instance-of v0, p1, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    if-ne v1, v2, :cond_6

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lorg/tensorflow/lite/TensorImpl;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    goto :goto_1

    :cond_7
    instance-of v0, p1, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    if-ne v1, v2, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lorg/tensorflow/lite/TensorImpl;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    :goto_1
    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected input buffer type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native quantizationScale(J)F
.end method

.method private static native quantizationZeroPoint(J)I
.end method

.method private r(Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lorg/tensorflow/lite/TensorImpl;->k(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/nio/Buffer;

    invoke-virtual {p0}, Lorg/tensorflow/lite/TensorImpl;->n()I

    move-result v5

    invoke-static {p1}, Lorg/tensorflow/lite/TensorImpl;->l(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    iget-object v0, p0, Lorg/tensorflow/lite/TensorImpl;->b:Ljn/a;

    invoke-virtual {v0}, Ljn/a;->a()I

    move-result v0

    mul-int/2addr p1, v0

    :goto_0
    if-gt v5, p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/tensorflow/lite/TensorImpl;->m()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "Cannot copy from a TensorFlowLite tensor (%s) with %d bytes to a Java Buffer with %d bytes."

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/TensorImpl;->d(Ljava/lang/Object;)[I

    move-result-object p1

    iget-object v0, p0, Lorg/tensorflow/lite/TensorImpl;->c:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/tensorflow/lite/TensorImpl;->m()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v3, p0, Lorg/tensorflow/lite/TensorImpl;->c:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "Cannot copy from a TensorFlowLite tensor (%s) with shape %s to a Java object with shape %s."

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native readMultiDimensionalArray(JLjava/lang/Object;)V
.end method

.method private s(Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lorg/tensorflow/lite/TensorImpl;->k(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/nio/Buffer;

    invoke-virtual {p0}, Lorg/tensorflow/lite/TensorImpl;->n()I

    move-result v5

    invoke-static {p1}, Lorg/tensorflow/lite/TensorImpl;->l(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    iget-object v0, p0, Lorg/tensorflow/lite/TensorImpl;->b:Ljn/a;

    invoke-virtual {v0}, Ljn/a;->a()I

    move-result v0

    mul-int/2addr p1, v0

    :goto_0
    if-ne v5, p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/tensorflow/lite/TensorImpl;->m()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "Cannot copy to a TensorFlowLite tensor (%s) with %d bytes from a Java Buffer with %d bytes."

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/TensorImpl;->d(Ljava/lang/Object;)[I

    move-result-object p1

    iget-object v0, p0, Lorg/tensorflow/lite/TensorImpl;->c:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/tensorflow/lite/TensorImpl;->m()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v3, p0, Lorg/tensorflow/lite/TensorImpl;->c:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "Cannot copy to a TensorFlowLite tensor (%s) with shape %s from a Java object with shape %s."

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native shape(J)[I
.end method

.method private static native shapeSignature(J)[I
.end method

.method private t(Ljava/lang/Object;)V
    .locals 5

    invoke-static {p1}, Lorg/tensorflow/lite/TensorImpl;->l(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/TensorImpl;->g(Ljava/lang/Object;)Ljn/a;

    move-result-object v0

    iget-object v1, p0, Lorg/tensorflow/lite/TensorImpl;->b:Ljn/a;

    if-eq v0, v1, :cond_2

    invoke-static {v0}, Lorg/tensorflow/lite/a;->b(Ljn/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/tensorflow/lite/TensorImpl;->b:Ljn/a;

    invoke-static {v2}, Lorg/tensorflow/lite/a;->b(Ljn/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/tensorflow/lite/TensorImpl;->b:Ljn/a;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object v0, v2, p1

    const-string p1, "Cannot convert between a TensorFlowLite tensor with type %s and a Java object of type %s (which is compatible with the TensorFlowLite type %s)."

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method private static native writeDirectBuffer(JLjava/nio/Buffer;)V
.end method

.method private static native writeMultiDimensionalArray(JLjava/lang/Object;)V
.end method

.method private static native writeScalar(JLjava/lang/Object;)V
.end method


# virtual methods
.method b()V
    .locals 2

    iget-wide v0, p0, Lorg/tensorflow/lite/TensorImpl;->a:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/TensorImpl;->delete(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/tensorflow/lite/TensorImpl;->a:J

    return-void
.end method

.method d(Ljava/lang/Object;)[I
    .locals 3

    invoke-static {p1}, Lorg/tensorflow/lite/TensorImpl;->c(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/tensorflow/lite/TensorImpl;->b:Ljn/a;

    sget-object v2, Ljn/a;->f:Ljn/a;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lorg/tensorflow/lite/TensorImpl;->h(Ljava/lang/Object;I[I)V

    return-object v0
.end method

.method e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_1

    iget-wide v0, p0, Lorg/tensorflow/lite/TensorImpl;->a:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/TensorImpl;->hasDelegateBufferHandle(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null outputs are allowed only if the Tensor is bound to a buffer handle."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/TensorImpl;->t(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lorg/tensorflow/lite/TensorImpl;->r(Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/tensorflow/lite/TensorImpl;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/nio/Buffer;

    invoke-direct {p0, v0}, Lorg/tensorflow/lite/TensorImpl;->f(Ljava/nio/Buffer;)V

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lorg/tensorflow/lite/TensorImpl;->a:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/lite/TensorImpl;->readMultiDimensionalArray(JLjava/lang/Object;)V

    :goto_0
    return-object p1
.end method

.method g(Ljava/lang/Object;)Ljn/a;
    .locals 3

    const-class v0, Ljava/lang/String;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p1, Ljn/a;->b:Ljn/a;

    return-object p1

    :cond_1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p1, Ljn/a;->c:Ljn/a;

    return-object p1

    :cond_2
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object p1, Ljn/a;->h:Ljn/a;

    return-object p1

    :cond_3
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p1, p0, Lorg/tensorflow/lite/TensorImpl;->b:Ljn/a;

    sget-object v0, Ljn/a;->f:Ljn/a;

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    sget-object p1, Ljn/a;->d:Ljn/a;

    return-object p1

    :cond_5
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object p1, Ljn/a;->e:Ljn/a;

    return-object p1

    :cond_6
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object p1, Ljn/a;->g:Ljn/a;

    return-object p1

    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object p1, Ljn/a;->f:Ljn/a;

    return-object p1

    :cond_8
    const-class v2, Ljava/lang/Float;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    instance-of v2, p1, Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_9

    goto :goto_4

    :cond_9
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    instance-of v2, p1, Ljava/nio/IntBuffer;

    if-eqz v2, :cond_a

    goto :goto_3

    :cond_a
    const-class v2, Ljava/lang/Short;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    instance-of v2, p1, Ljava/nio/ShortBuffer;

    if-eqz v2, :cond_b

    goto :goto_2

    :cond_b
    const-class v2, Ljava/lang/Byte;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object p1, Ljn/a;->d:Ljn/a;

    return-object p1

    :cond_c
    const-class v2, Ljava/lang/Long;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    instance-of v2, p1, Ljava/nio/LongBuffer;

    if-eqz v2, :cond_d

    goto :goto_1

    :cond_d
    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object p1, Ljn/a;->g:Ljn/a;

    return-object p1

    :cond_e
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object p1, Ljn/a;->f:Ljn/a;

    return-object p1

    :cond_f
    :goto_1
    sget-object p1, Ljn/a;->e:Ljn/a;

    return-object p1

    :cond_10
    :goto_2
    sget-object p1, Ljn/a;->h:Ljn/a;

    return-object p1

    :cond_11
    :goto_3
    sget-object p1, Ljn/a;->c:Ljn/a;

    return-object p1

    :cond_12
    :goto_4
    sget-object p1, Ljn/a;->b:Ljn/a;

    return-object p1

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataType error: cannot resolve DataType of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method j(Ljava/lang/Object;)[I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/tensorflow/lite/TensorImpl;->k(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/TensorImpl;->t(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/TensorImpl;->d(Ljava/lang/Object;)[I

    move-result-object p1

    iget-object v1, p0, Lorg/tensorflow/lite/TensorImpl;->c:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method

.method public m()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/tensorflow/lite/TensorImpl;->a:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/TensorImpl;->name(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()I
    .locals 2

    iget-wide v0, p0, Lorg/tensorflow/lite/TensorImpl;->a:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/TensorImpl;->numBytes(J)I

    move-result v0

    return v0
.end method

.method o()V
    .locals 2

    iget-wide v0, p0, Lorg/tensorflow/lite/TensorImpl;->a:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/TensorImpl;->shape(J)[I

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/TensorImpl;->c:[I

    return-void
.end method

.method p(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_1

    iget-wide v0, p0, Lorg/tensorflow/lite/TensorImpl;->a:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/TensorImpl;->hasDelegateBufferHandle(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null inputs are allowed only if the Tensor is bound to a buffer handle."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/TensorImpl;->t(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lorg/tensorflow/lite/TensorImpl;->s(Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/tensorflow/lite/TensorImpl;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p1, Ljava/nio/Buffer;

    invoke-direct {p0, p1}, Lorg/tensorflow/lite/TensorImpl;->q(Ljava/nio/Buffer;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/tensorflow/lite/TensorImpl;->b:Ljn/a;

    sget-object v1, Ljn/a;->f:Ljn/a;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/tensorflow/lite/TensorImpl;->c:[I

    array-length v0, v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lorg/tensorflow/lite/TensorImpl;->a:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/lite/TensorImpl;->writeMultiDimensionalArray(JLjava/lang/Object;)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-wide v0, p0, Lorg/tensorflow/lite/TensorImpl;->a:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/lite/TensorImpl;->writeScalar(JLjava/lang/Object;)V

    :goto_1
    return-void
.end method
