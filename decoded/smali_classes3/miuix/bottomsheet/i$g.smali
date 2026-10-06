.class Lmiuix/bottomsheet/i$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/bottomsheet/BottomSheetBehavior$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/bottomsheet/i;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/bottomsheet/i;


# direct methods
.method constructor <init>(Lmiuix/bottomsheet/i;)V
    .locals 0

    iput-object p1, p0, Lmiuix/bottomsheet/i$g;->a:Lmiuix/bottomsheet/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lmiuix/bottomsheet/i$g;->a:Lmiuix/bottomsheet/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/bottomsheet/i;->r(Lmiuix/bottomsheet/i;Z)Z

    iget-object v0, p0, Lmiuix/bottomsheet/i$g;->a:Lmiuix/bottomsheet/i;

    invoke-static {v0}, Lmiuix/bottomsheet/i;->j(Lmiuix/bottomsheet/i;)Landroidx/activity/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/activity/b;->setEnabled(Z)V

    return-void
.end method

.method public onAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lmiuix/bottomsheet/i$g;->a:Lmiuix/bottomsheet/i;

    invoke-static {v0}, Lmiuix/bottomsheet/i;->h(Lmiuix/bottomsheet/i;)Lmiuix/bottomsheet/i$m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/bottomsheet/i$g;->a:Lmiuix/bottomsheet/i;

    invoke-static {v0}, Lmiuix/bottomsheet/i;->h(Lmiuix/bottomsheet/i;)Lmiuix/bottomsheet/i$m;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/bottomsheet/i$m;->onShow()V

    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/i$g;->a:Lmiuix/bottomsheet/i;

    invoke-static {v0}, Lmiuix/bottomsheet/i;->k(Lmiuix/bottomsheet/i;)Lmiuix/bottomsheet/BottomSheetDragHandleView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method
