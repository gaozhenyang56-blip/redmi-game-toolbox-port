.class Lmiuix/bottomsheet/BottomSheetBehavior$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/bottomsheet/BottomSheetBehavior;->createAccessibilityViewCommandForState(I)Lc0/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lmiuix/bottomsheet/BottomSheetBehavior;


# direct methods
.method constructor <init>(Lmiuix/bottomsheet/BottomSheetBehavior;I)V
    .locals 0

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$g;->b:Lmiuix/bottomsheet/BottomSheetBehavior;

    iput p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior$g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Landroid/view/View;Lc0/q$a;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lc0/q$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$g;->b:Lmiuix/bottomsheet/BottomSheetBehavior;

    iget p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior$g;->a:I

    invoke-virtual {p1, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->setState(I)V

    const/4 p1, 0x1

    return p1
.end method
