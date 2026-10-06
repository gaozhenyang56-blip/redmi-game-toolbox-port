.class Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;
.super Landroid/view/MiuiCompositionSamplingListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/blur/sdk/backdrop/BlurManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompositionSamplingListenerWrapper"
.end annotation


# static fields
.field private static final b:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/GraphicBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->b:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-static {}, Lcom/miui/blur/sdk/backdrop/BlurManager;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, v0}, Landroid/view/MiuiCompositionSamplingListener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static a()Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;
    .locals 1

    sget-object v0, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->b:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    invoke-direct {v0}, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static b(Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->c()V

    sget-object v0, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->b:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->destroy()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->a:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public d(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/GraphicBuffer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->a:Ljava/util/function/Consumer;

    return-void
.end method

.method public onSampleCollected(Landroid/graphics/GraphicBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->a:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
