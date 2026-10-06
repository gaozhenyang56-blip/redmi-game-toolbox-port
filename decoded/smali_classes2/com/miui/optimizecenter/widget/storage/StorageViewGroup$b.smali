.class Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Lcom/miui/optimizecenter/widget/storage/a;


# direct methods
.method public constructor <init>(Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;ZLcom/miui/optimizecenter/widget/storage/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$b;->a:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$b;->b:Z

    iput-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$b;->c:Lcom/miui/optimizecenter/widget/storage/a;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$b;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$b;->c:Lcom/miui/optimizecenter/widget/storage/a;

    iget-boolean v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup$b;->b:Z

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->k(Lcom/miui/optimizecenter/widget/storage/a;ZF)V

    return-void
.end method
