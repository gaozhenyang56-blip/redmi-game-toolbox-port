.class public Laa/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:F

.field public c:Lorg/tensorflow/lite/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.bin"

    iput-object v0, p0, Laa/c;->a:Ljava/lang/String;

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Laa/c;->b:F

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Laa/c;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/tensorflow/lite/b;

    invoke-direct {p1, v0}, Lorg/tensorflow/lite/b;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Laa/c;->c:Lorg/tensorflow/lite/b;

    return-void
.end method


# virtual methods
.method public a([[F)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iget-object v1, p0, Laa/c;->c:Lorg/tensorflow/lite/b;

    invoke-virtual {v1, p1, v0}, Lorg/tensorflow/lite/b;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    aget-object v0, v0, p1

    aget v0, v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlaw score:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnlawRecognizer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Laa/c;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data
.end method
