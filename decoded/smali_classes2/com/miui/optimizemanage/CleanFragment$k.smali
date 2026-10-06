.class Lcom/miui/optimizemanage/CleanFragment$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizemanage/CleanFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/optimizemanage/CleanFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/CleanFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/CleanFragment$k;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment$k;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/CleanFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0}, Lcom/miui/optimizemanage/CleanFragment;->q0(Lcom/miui/optimizemanage/CleanFragment;)J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-long v1, v1

    const-wide/32 v3, 0x100000

    add-long/2addr v1, v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const-wide/16 v1, 0x0

    :cond_1
    invoke-static {v0, v1, v2}, Lcom/miui/optimizemanage/CleanFragment;->r0(Lcom/miui/optimizemanage/CleanFragment;J)V

    :cond_2
    :goto_0
    return-void
.end method
