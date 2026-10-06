.class public Lcom/miui/optimizecenter/widget/storage/SizeTextView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizecenter/widget/storage/SizeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/optimizecenter/widget/storage/SizeTextView;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>(Lcom/miui/optimizecenter/widget/storage/SizeTextView;JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/optimizecenter/widget/storage/SizeTextView$a;->a:Ljava/lang/ref/WeakReference;

    iput-wide p2, p0, Lcom/miui/optimizecenter/widget/storage/SizeTextView$a;->b:J

    iput-wide p4, p0, Lcom/miui/optimizecenter/widget/storage/SizeTextView$a;->c:J

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/SizeTextView$a;->a:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/optimizecenter/widget/storage/SizeTextView;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    iget-wide v2, p0, Lcom/miui/optimizecenter/widget/storage/SizeTextView$a;->b:J

    iget-wide v4, p0, Lcom/miui/optimizecenter/widget/storage/SizeTextView$a;->c:J

    sub-long/2addr v4, v2

    long-to-float v4, v4

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr v4, p1

    float-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/optimizecenter/widget/storage/SizeTextView;->setCurrentSize(J)V

    invoke-static {v0, v2, v3}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
