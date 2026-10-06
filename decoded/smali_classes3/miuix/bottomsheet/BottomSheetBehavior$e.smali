.class Lmiuix/bottomsheet/BottomSheetBehavior$e;
.super Lmiuix/animation/listener/TransitionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/bottomsheet/BottomSheetBehavior;->startSettling(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lmiuix/bottomsheet/BottomSheetBehavior;


# direct methods
.method constructor <init>(Lmiuix/bottomsheet/BottomSheetBehavior;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$e;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    iput p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior$e;->a:I

    iput-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior$e;->b:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$e;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    invoke-static {p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->access$600(Lmiuix/bottomsheet/BottomSheetBehavior;)Lmiuix/bottomsheet/BottomSheetBehavior$n;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$e;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    invoke-static {p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->access$600(Lmiuix/bottomsheet/BottomSheetBehavior;)Lmiuix/bottomsheet/BottomSheetBehavior$n;

    move-result-object p1

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior$e;->a:I

    invoke-interface {p1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior$n;->a(I)V

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 2

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$e;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    iget v0, p1, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior$e;->a:I

    invoke-virtual {p1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$e;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    invoke-static {p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->access$600(Lmiuix/bottomsheet/BottomSheetBehavior;)Lmiuix/bottomsheet/BottomSheetBehavior$n;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$e;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    invoke-static {p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->access$600(Lmiuix/bottomsheet/BottomSheetBehavior;)Lmiuix/bottomsheet/BottomSheetBehavior$n;

    move-result-object p1

    iget v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior$e;->a:I

    invoke-interface {p1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior$n;->b(I)V

    :cond_0
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

    const-string p1, "folme_key"

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior$e;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result p1

    sub-int/2addr p1, p2

    iget-object p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior$e;->b:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$e;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    invoke-static {p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->access$700(Lmiuix/bottomsheet/BottomSheetBehavior;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$e;->a:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$e;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    invoke-static {p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->access$300(Lmiuix/bottomsheet/BottomSheetBehavior;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$e;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    invoke-static {p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->access$700(Lmiuix/bottomsheet/BottomSheetBehavior;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {p1, p2}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
