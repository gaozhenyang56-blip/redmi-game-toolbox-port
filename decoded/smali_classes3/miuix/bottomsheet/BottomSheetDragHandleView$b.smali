.class Lmiuix/bottomsheet/BottomSheetDragHandleView$b;
.super Landroidx/core/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/bottomsheet/BottomSheetDragHandleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView$b;->a:Lmiuix/bottomsheet/BottomSheetDragHandleView;

    invoke-direct {p0}, Landroidx/core/view/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p2    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetDragHandleView$b;->a:Lmiuix/bottomsheet/BottomSheetDragHandleView;

    invoke-static {p1}, Lmiuix/bottomsheet/BottomSheetDragHandleView;->c(Lmiuix/bottomsheet/BottomSheetDragHandleView;)Z

    :cond_0
    return-void
.end method
