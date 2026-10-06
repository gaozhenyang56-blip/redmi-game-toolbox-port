.class Lmiuix/transition/ChangeBounds$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lmiuix/transition/ChangeBounds;

.field final synthetic val$listener:Lmiuix/animation/base/AnimConfig;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lmiuix/transition/ChangeBounds;Lmiuix/animation/base/AnimConfig;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p2, p0, Lmiuix/transition/ChangeBounds$2;->val$listener:Lmiuix/animation/base/AnimConfig;

    iput-object p3, p0, Lmiuix/transition/ChangeBounds$2;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "changebounds_end"

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lmiuix/transition/ChangeBounds$2;->val$listener:Lmiuix/animation/base/AnimConfig;

    const/4 v0, 0x1

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    iget-object p1, p0, Lmiuix/transition/ChangeBounds$2;->val$parent:Landroid/view/ViewGroup;

    invoke-static {p1, v1}, Landroidx/transition/x;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method
