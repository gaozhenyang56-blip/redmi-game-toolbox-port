.class Lcom/miui/bubbles/animation/BubbleAnimator$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/bubbles/animation/BubbleAnimator;->animMoveBubbleTo(Landroid/view/View;Lmiuix/animation/base/AnimConfig;Ljava/lang/Runnable;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$config:Lmiuix/animation/base/AnimConfig;

.field final synthetic val$onFinished:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lmiuix/animation/base/AnimConfig;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/animation/BubbleAnimator$2;->val$config:Lmiuix/animation/base/AnimConfig;

    iput-object p2, p0, Lcom/miui/bubbles/animation/BubbleAnimator$2;->val$onFinished:Ljava/lang/Runnable;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/bubbles/animation/BubbleAnimator$2;->val$config:Lmiuix/animation/base/AnimConfig;

    const/4 v0, 0x1

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    iget-object p1, p0, Lcom/miui/bubbles/animation/BubbleAnimator$2;->val$onFinished:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
