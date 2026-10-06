.class public Lcom/miui/optimizecenter/widget/storage/SizeTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizecenter/widget/storage/SizeTextView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/animation/ValueAnimator;

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/optimizecenter/widget/storage/SizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p2, 0x0

    invoke-static {p1, p2, p3}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public setCurrentSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/optimizecenter/widget/storage/SizeTextView;->b:J

    return-void
.end method

.method public setSize(J)V
    .locals 6

    iget-wide v0, p0, Lcom/miui/optimizecenter/widget/storage/SizeTextView;->c:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Lcom/miui/optimizecenter/widget/storage/SizeTextView;->c:J

    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/SizeTextView;->a:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/optimizecenter/widget/storage/SizeTextView;->a:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x2bc

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/SizeTextView;->a:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/miui/optimizecenter/widget/storage/SizeTextView$a;

    iget-wide v2, p0, Lcom/miui/optimizecenter/widget/storage/SizeTextView;->b:J

    iget-wide v4, p0, Lcom/miui/optimizecenter/widget/storage/SizeTextView;->c:J

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/optimizecenter/widget/storage/SizeTextView$a;-><init>(Lcom/miui/optimizecenter/widget/storage/SizeTextView;JJ)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/SizeTextView;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
