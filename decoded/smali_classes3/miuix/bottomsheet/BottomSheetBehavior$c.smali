.class Lmiuix/bottomsheet/BottomSheetBehavior$c;
.super Lmiuix/animation/listener/TransitionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/bottomsheet/BottomSheetBehavior;->startBottomExitAnimation(Lmiuix/bottomsheet/BottomSheetBehavior$h;Landroid/view/View;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lmiuix/bottomsheet/BottomSheetBehavior$h;

.field final synthetic c:Lmiuix/bottomsheet/BottomSheetBehavior;


# direct methods
.method constructor <init>(Lmiuix/bottomsheet/BottomSheetBehavior;Landroid/view/View;Lmiuix/bottomsheet/BottomSheetBehavior$h;)V
    .locals 0

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$c;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    iput-object p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior$c;->a:Landroid/view/View;

    iput-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior$c;->b:Lmiuix/bottomsheet/BottomSheetBehavior$h;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$c;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->access$102(Lmiuix/bottomsheet/BottomSheetBehavior;Z)Z

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$c;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$c;->b:Lmiuix/bottomsheet/BottomSheetBehavior$h;

    invoke-interface {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$h;->a()V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$c;->b:Lmiuix/bottomsheet/BottomSheetBehavior$h;

    invoke-interface {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$h;->onAnimationEnd()V

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$c;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->access$102(Lmiuix/bottomsheet/BottomSheetBehavior;Z)Z

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$c;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    invoke-static {p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->access$200(Lmiuix/bottomsheet/BottomSheetBehavior;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$c;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    invoke-static {p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->access$300(Lmiuix/bottomsheet/BottomSheetBehavior;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$c;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    invoke-static {p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->access$200(Lmiuix/bottomsheet/BottomSheetBehavior;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {p1, p2}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
