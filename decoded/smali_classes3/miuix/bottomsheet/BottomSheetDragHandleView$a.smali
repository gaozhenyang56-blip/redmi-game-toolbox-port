.class Lmiuix/bottomsheet/BottomSheetDragHandleView$a;
.super Lmiuix/bottomsheet/BottomSheetBehavior$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/bottomsheet/BottomSheetDragHandleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/bottomsheet/BottomSheetDragHandleView;


# direct methods
.method constructor <init>(Lmiuix/bottomsheet/BottomSheetDragHandleView;)V
    .locals 0

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView$a;->a:Lmiuix/bottomsheet/BottomSheetDragHandleView;

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior$i;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;F)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView$a;->a:Lmiuix/bottomsheet/BottomSheetDragHandleView;

    invoke-static {p1, p2}, Lmiuix/bottomsheet/BottomSheetDragHandleView;->b(Lmiuix/bottomsheet/BottomSheetDragHandleView;I)V

    return-void
.end method
