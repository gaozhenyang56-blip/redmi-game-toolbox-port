.class Lcom/miui/applicationlock/AppLockManageFragment$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/AppLockManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "u"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/applicationlock/AppLockManageFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/applicationlock/AppLockManageFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$u;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/applicationlock/AppLockManageFragment;Lcom/miui/applicationlock/AppLockManageFragment$k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/AppLockManageFragment$u;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$u;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/AppLockManageFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->O0(Lcom/miui/applicationlock/AppLockManageFragment;)I

    move-result v1

    invoke-static {p1, v1}, Lc3/f;->b(II)V

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->P0(Lcom/miui/applicationlock/AppLockManageFragment;)Lc3/d;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lc3/d;->B(Z)V

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->Q0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->Q0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12086a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-static {v0, v2}, Lcom/miui/applicationlock/AppLockManageFragment;->R0(Lcom/miui/applicationlock/AppLockManageFragment;I)I

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->d0(Lcom/miui/applicationlock/AppLockManageFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->d0(Lcom/miui/applicationlock/AppLockManageFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->e0(Lcom/miui/applicationlock/AppLockManageFragment;)V

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->f0(Lcom/miui/applicationlock/AppLockManageFragment;)V

    return-void
.end method

.method public b(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$u;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/AppLockManageFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->g0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/widget/TextView;

    move-result-object p1

    const v1, 0x7f12086c

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->S0(Lcom/miui/applicationlock/AppLockManageFragment;)I

    move-result p1

    const/4 v1, 0x5

    if-ge p1, v1, :cond_2

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->g0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12086b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lc3/f;->t0(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/miui/applicationlock/AppLockManageFragment;->R0(Lcom/miui/applicationlock/AppLockManageFragment;I)I

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->d0(Lcom/miui/applicationlock/AppLockManageFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->Q0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120869

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->P0(Lcom/miui/applicationlock/AppLockManageFragment;)Lc3/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc3/d;->B(Z)V

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->e0(Lcom/miui/applicationlock/AppLockManageFragment;)V

    :goto_0
    return-void
.end method
