.class Lcom/miui/applicationlock/SettingLockFragment$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/SettingLockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "m"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/applicationlock/SettingLockFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/applicationlock/SettingLockFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment$m;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/applicationlock/SettingLockFragment;Lcom/miui/applicationlock/SettingLockFragment$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/SettingLockFragment$m;-><init>(Lcom/miui/applicationlock/SettingLockFragment;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment$m;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/SettingLockFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockFragment;->f0(Lcom/miui/applicationlock/SettingLockFragment;)I

    move-result v1

    invoke-static {p1, v1}, Lc3/f;->b(II)V

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockFragment;->q0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, La3/b;->a:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockFragment;->q0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12086a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockFragment;->x0(Lcom/miui/applicationlock/SettingLockFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {}, Lx4/a0;->t()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockFragment;->x0(Lcom/miui/applicationlock/SettingLockFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockFragment;->x0(Lcom/miui/applicationlock/SettingLockFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :goto_0
    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/miui/applicationlock/SettingLockFragment;->y0(Lcom/miui/applicationlock/SettingLockFragment;I)I

    invoke-virtual {v0}, Lcom/miui/applicationlock/SettingLockFragment;->G0()V

    return-void
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment$m;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/SettingLockFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockFragment;->A0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/widget/TextView;

    move-result-object p1

    const v1, 0x7f12086c

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockFragment;->z0(Lcom/miui/applicationlock/SettingLockFragment;)I

    move-result p1

    const/4 v1, 0x5

    if-ge p1, v1, :cond_2

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockFragment;->A0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockFragment;->q0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12086b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockFragment;->q0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc3/f;->t0(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/miui/applicationlock/SettingLockFragment;->y0(Lcom/miui/applicationlock/SettingLockFragment;I)I

    invoke-static {}, Lx4/a0;->t()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockFragment;->x0(Lcom/miui/applicationlock/SettingLockFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockFragment;->x0(Lcom/miui/applicationlock/SettingLockFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :goto_0
    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockFragment;->q0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockFragment;->q0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120869

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockFragment;->q0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, La3/b;->a:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v0}, Lcom/miui/applicationlock/SettingLockFragment;->G0()V

    :goto_1
    return-void
.end method
