.class public Lcom/miui/earthquakewarning/view/AlertDialogFragment;
.super Lcom/miui/earthquakewarning/view/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/view/AlertDialogFragment$Builder;
    }
.end annotation


# static fields
.field private static final CANCELABLE_DIALOG:Ljava/lang/String; = "cancelable"

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "AlertDialogFragment"

.field private static final MESSAGE_DIALOG:Ljava/lang/String; = "message"

.field private static final NEGATIVE_BTN_DIALOG:Ljava/lang/String; = "negative"

.field private static final POSITIVE_BTN_DIALOG:Ljava/lang/String; = "positive"

.field private static final SET_MOVEMENT_METHOD_DIALOG:Ljava/lang/String; = "set_movement_method"

.field private static final TITLE_DIALOG:Ljava/lang/String; = "title"


# instance fields
.field private mNegativeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/earthquakewarning/view/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;ZZ)Lcom/miui/earthquakewarning/view/AlertDialogFragment;
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/miui/earthquakewarning/view/AlertDialogFragment;->createDialogFragment(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;ZZ)Lcom/miui/earthquakewarning/view/AlertDialogFragment;

    move-result-object p0

    return-object p0
.end method

.method private static createDialogFragment(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;ZZ)Lcom/miui/earthquakewarning/view/AlertDialogFragment;
    .locals 3

    new-instance v0, Lcom/miui/earthquakewarning/view/AlertDialogFragment;

    invoke-direct {v0}, Lcom/miui/earthquakewarning/view/AlertDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p0, "message"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p0, "positive"

    invoke-virtual {v1, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "negative"

    invoke-virtual {v1, p0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "cancelable"

    invoke-virtual {v1, p0, p6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "set_movement_method"

    invoke-virtual {v1, p0, p7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-direct {v0, p4}, Lcom/miui/earthquakewarning/view/AlertDialogFragment;->setPositiveClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-direct {v0, p5}, Lcom/miui/earthquakewarning/view/AlertDialogFragment;->setNegativeClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    return-object v0
.end method

.method private setNegativeClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/view/AlertDialogFragment;->mNegativeClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private setPositiveClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/view/AlertDialogFragment;->mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultViewModelCreationExtras()Lp0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/k;)Lp0/a;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "positive"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "negative"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cancelable"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    new-instance v4, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/miui/earthquakewarning/view/AlertDialogFragment;->mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v2, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/earthquakewarning/view/AlertDialogFragment;->mNegativeClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "set_movement_method"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0b0778

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-void
.end method
