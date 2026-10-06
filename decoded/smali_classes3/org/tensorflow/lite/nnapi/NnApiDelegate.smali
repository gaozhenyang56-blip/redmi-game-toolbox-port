.class public Lorg/tensorflow/lite/nnapi/NnApiDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljn/b;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;
    }
.end annotation


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;

    invoke-direct {v0}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;-><init>()V

    invoke-direct {p0, v0}, Lorg/tensorflow/lite/nnapi/NnApiDelegate;-><init>(Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;)V

    return-void
.end method

.method public constructor <init>(Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->a()V

    invoke-static {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;->a(Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;)I

    move-result v0

    invoke-static {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;->b(Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;->c(Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;->d(Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;->e(Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;->e(Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    invoke-static {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;->f(Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    invoke-static {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;->f(Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;)Ljava/lang/Boolean;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-static {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;->f(Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    move v6, v7

    :cond_3
    :goto_2
    invoke-static {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;->g(Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;)Ljava/lang/Boolean;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-static {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;->g(Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    :cond_4
    invoke-static {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;->h(Lorg/tensorflow/lite/nnapi/NnApiDelegate$a;)J

    move-result-wide v8

    invoke-static/range {v0 .. v9}, Lorg/tensorflow/lite/nnapi/NnApiDelegate;->createDelegate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate;->a:J

    return-void
.end method

.method private static native createDelegate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZJ)J
.end method

.method private static native deleteDelegate(J)V
.end method


# virtual methods
.method public c()J
    .locals 2

    iget-wide v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate;->a:J

    return-wide v0
.end method

.method public close()V
    .locals 5

    iget-wide v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate;->deleteDelegate(J)V

    iput-wide v2, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate;->a:J

    :cond_0
    return-void
.end method
