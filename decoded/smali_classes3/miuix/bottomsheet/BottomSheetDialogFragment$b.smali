.class Lmiuix/bottomsheet/BottomSheetDialogFragment$b;
.super Lmiuix/bottomsheet/BottomSheetBehavior$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/bottomsheet/BottomSheetDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lmiuix/bottomsheet/BottomSheetDialogFragment;


# direct methods
.method private constructor <init>(Lmiuix/bottomsheet/BottomSheetDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetDialogFragment$b;->a:Lmiuix/bottomsheet/BottomSheetDialogFragment;

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetBehavior$i;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/bottomsheet/BottomSheetDialogFragment;Lmiuix/bottomsheet/BottomSheetDialogFragment$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/bottomsheet/BottomSheetDialogFragment$b;-><init>(Lmiuix/bottomsheet/BottomSheetDialogFragment;)V

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

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetDialogFragment$b;->a:Lmiuix/bottomsheet/BottomSheetDialogFragment;

    invoke-static {p1}, Lmiuix/bottomsheet/BottomSheetDialogFragment;->a0(Lmiuix/bottomsheet/BottomSheetDialogFragment;)V

    :cond_0
    return-void
.end method
