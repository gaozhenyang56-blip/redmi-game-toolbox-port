.class Lmiuix/bottomsheet/BottomSheetBehavior$a;
.super Lmiuix/animation/listener/TransitionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/bottomsheet/BottomSheetBehavior;->startBottomEnterAnim(Lmiuix/bottomsheet/BottomSheetBehavior$h;Landroid/view/View;Landroid/view/View;Z)V
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

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$a;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    iput-object p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior$a;->a:Landroid/view/View;

    iput-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior$a;->b:Lmiuix/bottomsheet/BottomSheetBehavior$h;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$a;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->access$102(Lmiuix/bottomsheet/BottomSheetBehavior;Z)Z

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$a;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$a;->b:Lmiuix/bottomsheet/BottomSheetBehavior$h;

    invoke-interface {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$h;->a()V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$a;->b:Lmiuix/bottomsheet/BottomSheetBehavior$h;

    invoke-interface {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$h;->onAnimationEnd()V

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$a;->c:Lmiuix/bottomsheet/BottomSheetBehavior;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->access$102(Lmiuix/bottomsheet/BottomSheetBehavior;Z)Z

    return-void
.end method
