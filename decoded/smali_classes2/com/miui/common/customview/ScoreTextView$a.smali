.class Lcom/miui/common/customview/ScoreTextView$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/customview/ScoreTextView;->c(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/common/customview/ScoreTextView;


# direct methods
.method constructor <init>(Lcom/miui/common/customview/ScoreTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/ScoreTextView$a;->a:Lcom/miui/common/customview/ScoreTextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    iget-object p1, p0, Lcom/miui/common/customview/ScoreTextView$a;->a:Lcom/miui/common/customview/ScoreTextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/common/customview/ScoreTextView$a;->a:Lcom/miui/common/customview/ScoreTextView;

    invoke-static {v2}, Lcom/miui/common/customview/ScoreTextView;->a(Lcom/miui/common/customview/ScoreTextView;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/common/customview/ScoreTextView;->b(Lcom/miui/common/customview/ScoreTextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object p1, p0, Lcom/miui/common/customview/ScoreTextView$a;->a:Lcom/miui/common/customview/ScoreTextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/common/customview/ScoreTextView$a;->a:Lcom/miui/common/customview/ScoreTextView;

    invoke-static {v2}, Lcom/miui/common/customview/ScoreTextView;->a(Lcom/miui/common/customview/ScoreTextView;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/common/customview/ScoreTextView;->b(Lcom/miui/common/customview/ScoreTextView;Ljava/lang/CharSequence;)V

    return-void
.end method
