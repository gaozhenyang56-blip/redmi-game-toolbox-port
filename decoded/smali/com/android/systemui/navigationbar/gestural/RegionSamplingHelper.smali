.class public Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/view/View;

.field private final c:Landroid/view/CompositionSamplingListener;

.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/graphics/Rect;

.field private final f:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$c;

.field private g:Z

.field private h:Z

.field private i:F

.field private j:F

.field private k:Z

.field private l:Z

.field private final m:F

.field private final n:F

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Landroid/view/SurfaceControl;

.field private s:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private t:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->a:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->d:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->e:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->g:Z

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->r:Landroid/view/SurfaceControl;

    new-instance v0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$a;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$a;-><init>(Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->s:Landroid/view/ViewTreeObserver$OnDrawListener;

    new-instance v0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$b;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$b;-><init>(Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->t:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$3;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/content/h;->a(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$3;-><init>(Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->c:Landroid/view/CompositionSamplingListener;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    const p1, 0x3f0ccccd    # 0.55f

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->m:F

    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->n:F

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->f:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$c;

    return-void
.end method

.method static synthetic a(Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->t:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic b(Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->h()V

    return-void
.end method

.method static synthetic d(Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;)Landroid/view/ViewTreeObserver$OnDrawListener;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->s:Landroid/view/ViewTreeObserver$OnDrawListener;

    return-object p0
.end method

.method static synthetic e(Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic f(Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->g:Z

    return p0
.end method

.method static synthetic g(Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->n(F)V

    return-void
.end method

.method private h()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->k:Z

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->o()V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->r:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->c:Landroid/view/CompositionSamplingListener;

    invoke-static {v0}, Landroid/view/CompositionSamplingListener;->unregister(Landroid/view/CompositionSamplingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RegionSamplingHelper"

    const-string v2, "unregisterSamplingListener: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private n(F)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->j:F

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->i:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->n:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->f:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$c;

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->m:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$c;->b(Z)V

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->i:F

    :cond_1
    return-void
.end method

.method private o()V
    .locals 6

    const-string v0, "RegionSamplingHelper"

    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->g:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->p:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->q:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->o:Z

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->b:Landroid/view/View;

    invoke-static {v1}, Lx4/i;->b(Landroid/view/View;)Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->k:Z

    if-nez v1, :cond_4

    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->k:Z

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->a:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->t:Ljava/lang/Runnable;

    invoke-static {v1, v4}, Lcom/android/systemui/navigationbar/gestural/a;->a(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->a:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->t:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->s:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v1, v4}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_4
    :goto_1
    const/4 v1, 0x0

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->d:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->e:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->r:Landroid/view/SurfaceControl;

    if-eq v4, v1, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->m()V

    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->h:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSamplingListener register stopLayerControl: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",mSamplingRequestBounds: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->d:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->c:Landroid/view/CompositionSamplingListener;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->d:Landroid/graphics/Rect;

    invoke-static {v2, v3, v1, v4}, Landroid/view/CompositionSamplingListener;->register(Landroid/view/CompositionSamplingListener;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->e:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->d:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->r:Landroid/view/SurfaceControl;

    :cond_7
    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->o:Z

    goto :goto_2

    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "updateSamplingListener: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method


# virtual methods
.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->p:Z

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->o()V

    return-void
.end method

.method public j(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->f:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$c;

    invoke-interface {v0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->g:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->i:F

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->o:Z

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->o()V

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->g:Z

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->o()V

    return-void
.end method

.method public l()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->k()V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->c:Landroid/view/CompositionSamplingListener;

    invoke-virtual {v0}, Landroid/view/CompositionSamplingListener;->destroy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RegionSamplingHelper"

    const-string v2, "stopAndDestroy: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->p()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->o()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->l()V

    return-void
.end method

.method public p()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->f:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$c;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$c;->c(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSamplingRect sampledRegion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mSamplingRequestBounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->d:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegionSamplingHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->d:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->d:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->o()V

    :cond_0
    return-void
.end method
