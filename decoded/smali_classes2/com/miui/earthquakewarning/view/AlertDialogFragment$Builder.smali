.class public Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/earthquakewarning/view/AlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mCancelable:Z

.field mMessage:Ljava/lang/CharSequence;

.field mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field mNegativeButtonText:Ljava/lang/String;

.field mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field mPositiveButtonText:Ljava/lang/String;

.field mSetMovementMethod:Z

.field mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;->mCancelable:Z

    iput-boolean v0, p0, Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;->mSetMovementMethod:Z

    return-void
.end method


# virtual methods
.method public setCancelable(Z)Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;->mCancelable:Z

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMovementMethod(Z)Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;->mSetMovementMethod:Z

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;->mNegativeButtonText:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;->mPositiveButtonText:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public show(Landroidx/fragment/app/FragmentManager;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;->mMessage:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;->mPositiveButtonText:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;->mNegativeButtonText:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v5, p0, Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-boolean v6, p0, Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;->mCancelable:Z

    iget-boolean v7, p0, Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;->mSetMovementMethod:Z

    invoke-static/range {v0 .. v7}, Lcom/miui/earthquakewarning/view/AlertDialogFragment;->access$000(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;ZZ)Lcom/miui/earthquakewarning/view/AlertDialogFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    const-string v1, "AlertDialogFragment"

    invoke-virtual {v0, p1, v1}, Lcom/miui/earthquakewarning/view/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
