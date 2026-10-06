.class public Lmiuix/bottomsheet/BottomSheetDialogFragment;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/bottomsheet/BottomSheetDialogFragment$b;
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a0(Lmiuix/bottomsheet/BottomSheetDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetDialogFragment;->dismissAfterAnimation()V

    return-void
.end method

.method private b0(Lmiuix/bottomsheet/BottomSheetBehavior;Z)V
    .locals 2
    .param p1    # Lmiuix/bottomsheet/BottomSheetBehavior;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/bottomsheet/BottomSheetBehavior<",
            "*>;Z)V"
        }
    .end annotation

    iput-boolean p2, p0, Lmiuix/bottomsheet/BottomSheetDialogFragment;->a:Z

    invoke-virtual {p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->getState()I

    move-result p2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetDialogFragment;->dismissAfterAnimation()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    instance-of p2, p2, Lmiuix/bottomsheet/d;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    check-cast p2, Lmiuix/bottomsheet/d;

    invoke-virtual {p2}, Lmiuix/bottomsheet/d;->removeDefaultCallback()V

    :cond_1
    new-instance p2, Lmiuix/bottomsheet/BottomSheetDialogFragment$b;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lmiuix/bottomsheet/BottomSheetDialogFragment$b;-><init>(Lmiuix/bottomsheet/BottomSheetDialogFragment;Lmiuix/bottomsheet/BottomSheetDialogFragment$a;)V

    invoke-virtual {p1, p2}, Lmiuix/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lmiuix/bottomsheet/BottomSheetBehavior$i;)V

    invoke-virtual {p1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->setState(I)V

    :goto_0
    return-void
.end method

.method private dismissAfterAnimation()V
    .locals 1

    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetDialogFragment;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :goto_0
    return-void
.end method

.method private tryDismissWithAnimation(Z)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    instance-of v1, v0, Lmiuix/bottomsheet/d;

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/bottomsheet/d;

    invoke-virtual {v0}, Lmiuix/bottomsheet/d;->c()Lmiuix/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->isHideable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lmiuix/bottomsheet/d;->getDismissWithAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, p1}, Lmiuix/bottomsheet/BottomSheetDialogFragment;->b0(Lmiuix/bottomsheet/BottomSheetBehavior;Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/bottomsheet/BottomSheetDialogFragment;->tryDismissWithAnimation(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiuix/bottomsheet/BottomSheetDialogFragment;->tryDismissWithAnimation(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p1, Lmiuix/bottomsheet/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lmiuix/bottomsheet/d;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method
