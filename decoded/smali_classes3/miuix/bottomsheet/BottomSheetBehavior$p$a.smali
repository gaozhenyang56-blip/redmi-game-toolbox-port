.class Lmiuix/bottomsheet/BottomSheetBehavior$p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/bottomsheet/BottomSheetBehavior$p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/bottomsheet/BottomSheetBehavior$p;


# direct methods
.method constructor <init>(Lmiuix/bottomsheet/BottomSheetBehavior$p;)V
    .locals 0

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$p$a;->a:Lmiuix/bottomsheet/BottomSheetBehavior$p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior$p$a;->a:Lmiuix/bottomsheet/BottomSheetBehavior$p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior$p;->a(Lmiuix/bottomsheet/BottomSheetBehavior$p;Z)Z

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior$p$a;->a:Lmiuix/bottomsheet/BottomSheetBehavior$p;

    iget-object v0, v0, Lmiuix/bottomsheet/BottomSheetBehavior$p;->d:Lmiuix/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lmiuix/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/c;->n(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior$p$a;->a:Lmiuix/bottomsheet/BottomSheetBehavior$p;

    invoke-static {v0}, Lmiuix/bottomsheet/BottomSheetBehavior$p;->b(Lmiuix/bottomsheet/BottomSheetBehavior$p;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior$p;->c(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetBehavior$p$a;->a:Lmiuix/bottomsheet/BottomSheetBehavior$p;

    iget-object v1, v0, Lmiuix/bottomsheet/BottomSheetBehavior$p;->d:Lmiuix/bottomsheet/BottomSheetBehavior;

    iget v2, v1, Lmiuix/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-static {v0}, Lmiuix/bottomsheet/BottomSheetBehavior$p;->b(Lmiuix/bottomsheet/BottomSheetBehavior$p;)I

    move-result v0

    invoke-virtual {v1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    :cond_1
    :goto_0
    return-void
.end method
