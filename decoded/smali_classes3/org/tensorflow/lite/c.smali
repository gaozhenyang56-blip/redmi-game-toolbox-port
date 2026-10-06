.class Lorg/tensorflow/lite/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/c$a;
    }
.end annotation


# instance fields
.field a:Lorg/tensorflow/lite/NativeInterpreterWrapper;


# direct methods
.method constructor <init>(Lorg/tensorflow/lite/NativeInterpreterWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/tensorflow/lite/c;->a:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    return-void
.end method


# virtual methods
.method c()V
    .locals 2

    iget-object v0, p0, Lorg/tensorflow/lite/c;->a:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal error: The Interpreter has already been closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/tensorflow/lite/c;->a:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tensorflow/lite/c;->a:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/c;->e([Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method public e([Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1
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

    invoke-virtual {p0}, Lorg/tensorflow/lite/c;->c()V

    iget-object v0, p0, Lorg/tensorflow/lite/c;->a:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {v0, p1, p2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->s([Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method protected finalize()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/tensorflow/lite/c;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
