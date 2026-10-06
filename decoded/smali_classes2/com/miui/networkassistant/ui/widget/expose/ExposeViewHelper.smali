.class public abstract Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private exposeActual:Lcom/miui/networkassistant/ui/widget/expose/ExposeAction;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private hasExpose:Z

.field private final mHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;->expose$lambda$0(Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;)V

    return-void
.end method

.method private static final expose$lambda$0(Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;->exposeActual:Lcom/miui/networkassistant/ui/widget/expose/ExposeAction;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/networkassistant/ui/widget/expose/ExposeAction;->exposeActual()V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;->hasExpose:Z

    return-void
.end method


# virtual methods
.method public final cancelExpose()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;->hasExpose:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final expose()V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;->hasExpose:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/networkassistant/ui/widget/expose/d;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/widget/expose/d;-><init>(Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;->hasExpose:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getExposeActual()Lcom/miui/networkassistant/ui/widget/expose/ExposeAction;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;->exposeActual:Lcom/miui/networkassistant/ui/widget/expose/ExposeAction;

    return-object v0
.end method

.method public final getHasExpose()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;->hasExpose:Z

    return v0
.end method

.method public abstract getLocalVisibleRect(Landroid/graphics/Rect;)Z
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final getMHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final setExposeActual(Lcom/miui/networkassistant/ui/widget/expose/ExposeAction;)V
    .locals 2
    .param p1    # Lcom/miui/networkassistant/ui/widget/expose/ExposeAction;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;->exposeActual:Lcom/miui/networkassistant/ui/widget/expose/ExposeAction;

    return-void
.end method

.method public final setHasExpose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;->hasExpose:Z

    return-void
.end method
