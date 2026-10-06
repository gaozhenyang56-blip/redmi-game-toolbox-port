.class Lcom/miui/antivirus/ui/PlentyCircleAnimView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/ui/PlentyCircleAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antivirus/ui/PlentyCircleAnimView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/ui/PlentyCircleAnimView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->e(Lcom/miui/antivirus/ui/PlentyCircleAnimView;)[F

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_4

    add-int/lit8 v2, v1, 0x8

    invoke-static {v0}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->e(Lcom/miui/antivirus/ui/PlentyCircleAnimView;)[F

    move-result-object v3

    aget v3, v3, v1

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->b(Lcom/miui/antivirus/ui/PlentyCircleAnimView;)[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    move-result-object v3

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v0}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->e(Lcom/miui/antivirus/ui/PlentyCircleAnimView;)[F

    move-result-object v4

    aget v4, v4, v1

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_3

    invoke-static {v0}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->b(Lcom/miui/antivirus/ui/PlentyCircleAnimView;)[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v0}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->c(Lcom/miui/antivirus/ui/PlentyCircleAnimView;)[F

    move-result-object v5

    aget v5, v5, v2

    mul-float/2addr v5, v3

    iput v5, v4, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;->c:F

    invoke-static {v0}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->b(Lcom/miui/antivirus/ui/PlentyCircleAnimView;)[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->d()[F

    move-result-object v5

    aget v2, v5, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v4, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;->e:I

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/ui/PlentyCircleAnimView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method
