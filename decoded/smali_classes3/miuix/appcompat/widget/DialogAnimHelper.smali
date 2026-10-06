.class public Lmiuix/appcompat/widget/DialogAnimHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;
    }
.end annotation


# instance fields
.field private mDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelAnimator()V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/widget/DialogAnimHelper;->mDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmiuix/appcompat/widget/dialoganim/IDialogAnim;->cancelAnimator()V

    :cond_0
    return-void
.end method

.method public executeDismissAnim(Landroid/view/View;ZLandroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/widget/DialogAnimHelper;->mDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance p2, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;

    invoke-direct {p2}, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p2, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    invoke-direct {p2}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;-><init>()V

    :goto_0
    iput-object p2, p0, Lmiuix/appcompat/widget/DialogAnimHelper;->mDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    :cond_1
    iget-object p2, p0, Lmiuix/appcompat/widget/DialogAnimHelper;->mDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    invoke-interface {p2, p1, p3, p4}, Lmiuix/appcompat/widget/dialoganim/IDialogAnim;->executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/appcompat/widget/DialogAnimHelper;->mDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    return-void
.end method

.method public executeShowAnim(Landroid/view/View;Landroid/view/View;ZZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/widget/DialogAnimHelper;->mDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    new-instance p3, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;

    invoke-direct {p3}, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p3, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    invoke-direct {p3}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;-><init>()V

    :goto_0
    iput-object p3, p0, Lmiuix/appcompat/widget/DialogAnimHelper;->mDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    :cond_1
    iget-object p3, p0, Lmiuix/appcompat/widget/DialogAnimHelper;->mDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    invoke-interface {p3, p1, p2, p4, p5}, Lmiuix/appcompat/widget/dialoganim/IDialogAnim;->executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    return-void
.end method
