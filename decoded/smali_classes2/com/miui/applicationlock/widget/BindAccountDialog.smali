.class public Lcom/miui/applicationlock/widget/BindAccountDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/applicationlock/widget/BindAccountDialog$d;,
        Lcom/miui/applicationlock/widget/BindAccountDialog$a;,
        Lcom/miui/applicationlock/widget/BindAccountDialog$b;,
        Lcom/miui/applicationlock/widget/BindAccountDialog$c;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/applicationlock/widget/BindAccountDialog$c;

.field private b:Lcom/miui/applicationlock/widget/BindAccountDialog$b;

.field private c:Lcom/miui/applicationlock/widget/BindAccountDialog$a;

.field private d:Lcom/miui/applicationlock/widget/BindAccountDialog$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic a0(Lcom/miui/applicationlock/widget/BindAccountDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/BindAccountDialog;->f0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic b0(Landroid/content/DialogInterface;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/applicationlock/widget/BindAccountDialog;->e0(Landroid/content/DialogInterface;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/applicationlock/widget/BindAccountDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/widget/BindAccountDialog;->h0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/applicationlock/widget/BindAccountDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/widget/BindAccountDialog;->g0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic e0(Landroid/content/DialogInterface;Landroid/widget/CompoundButton;Z)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCheckedChangeListener isChecked = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BindAccountDialog"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p0, Lmiuix/appcompat/app/AlertDialog;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private synthetic f0(Landroid/content/DialogInterface;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lmiuix/appcompat/app/AlertDialog;

    const v1, 0x1020001

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/applicationlock/widget/d;

    invoke-direct {v1, p1}, Lcom/miui/applicationlock/widget/d;-><init>(Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/BindAccountDialog;->d:Lcom/miui/applicationlock/widget/BindAccountDialog$d;

    if-eqz v0, :cond_1

    const-string v0, "BindAccountDialog"

    const-string v1, "onShowListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/applicationlock/widget/BindAccountDialog;->d:Lcom/miui/applicationlock/widget/BindAccountDialog$d;

    invoke-interface {v0, p1}, Lcom/miui/applicationlock/widget/BindAccountDialog$d;->onShow(Landroid/content/DialogInterface;)V

    :cond_1
    return-void
.end method

.method private synthetic g0(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/BindAccountDialog;->a:Lcom/miui/applicationlock/widget/BindAccountDialog$c;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPositiveButtonClickListener which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BindAccountDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/applicationlock/widget/BindAccountDialog;->a:Lcom/miui/applicationlock/widget/BindAccountDialog$c;

    invoke-interface {v0, p1, p2}, Lcom/miui/applicationlock/widget/BindAccountDialog$c;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method private synthetic h0(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/BindAccountDialog;->b:Lcom/miui/applicationlock/widget/BindAccountDialog$b;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNegativeButtonClickListener which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BindAccountDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/applicationlock/widget/BindAccountDialog;->b:Lcom/miui/applicationlock/widget/BindAccountDialog$b;

    invoke-interface {v0, p1, p2}, Lcom/miui/applicationlock/widget/BindAccountDialog$b;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public i0(Lcom/miui/applicationlock/widget/BindAccountDialog$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/BindAccountDialog;->c:Lcom/miui/applicationlock/widget/BindAccountDialog$a;

    return-void
.end method

.method public j0(Lcom/miui/applicationlock/widget/BindAccountDialog$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/BindAccountDialog;->b:Lcom/miui/applicationlock/widget/BindAccountDialog$b;

    return-void
.end method

.method public k0(Lcom/miui/applicationlock/widget/BindAccountDialog$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/BindAccountDialog;->a:Lcom/miui/applicationlock/widget/BindAccountDialog$c;

    return-void
.end method

.method public l0(Lcom/miui/applicationlock/widget/BindAccountDialog$d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/BindAccountDialog;->d:Lcom/miui/applicationlock/widget/BindAccountDialog$d;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120fcd

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120fcb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120865

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/applicationlock/widget/a;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/widget/a;-><init>(Lcom/miui/applicationlock/widget/BindAccountDialog;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120fcc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/applicationlock/widget/b;

    invoke-direct {v2, p0}, Lcom/miui/applicationlock/widget/b;-><init>(Lcom/miui/applicationlock/widget/BindAccountDialog;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120410

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/applicationlock/widget/c;

    invoke-direct {v2, p0}, Lcom/miui/applicationlock/widget/c;-><init>(Lcom/miui/applicationlock/widget/BindAccountDialog;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/BindAccountDialog;->c:Lcom/miui/applicationlock/widget/BindAccountDialog$a;

    if-eqz v0, :cond_0

    const-string v0, "BindAccountDialog"

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/applicationlock/widget/BindAccountDialog;->c:Lcom/miui/applicationlock/widget/BindAccountDialog$a;

    invoke-interface {v0, p1}, Lcom/miui/applicationlock/widget/BindAccountDialog$a;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
