.class Lcom/miui/applicationlock/AppLockManageFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/AppLockManageFragment;->Z0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/AppLockManageFragment;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/AppLockManageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$e;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$e;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/applicationlock/TransitionHelper;->b(Landroid/content/Context;)Z

    move-result p1

    const/16 p2, 0x1e

    const-string v0, "com.android.settings"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$e;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->s0(Lcom/miui/applicationlock/AppLockManageFragment;)Lc3/n;

    move-result-object p1

    invoke-virtual {p1}, Lc3/n;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$e;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->Q0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/app/Activity;

    move-result-object p1

    const-string v1, "com.android.settings.MiuiSecurityChooseUnlock"

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$e;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->Q0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/app/Activity;

    move-result-object p1

    const-string v1, "com.android.settings.NewFingerprintActivity"

    :goto_0
    invoke-static {p1, v0, v1}, Lc3/f;->e0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$e;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
