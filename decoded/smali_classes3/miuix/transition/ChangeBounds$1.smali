.class Lmiuix/transition/ChangeBounds$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lmiuix/transition/ChangeBounds;

.field final synthetic val$listener:Lmiuix/animation/base/AnimConfig;


# direct methods
.method constructor <init>(Lmiuix/transition/ChangeBounds;Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    iput-object p2, p0, Lmiuix/transition/ChangeBounds$1;->val$listener:Lmiuix/animation/base/AnimConfig;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "changebounds_end"

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "changebounds_end"

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
