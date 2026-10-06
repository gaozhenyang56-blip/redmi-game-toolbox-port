.class Lcom/miui/applicationlock/SettingLockFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/SettingLockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/SettingLockFragment;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/SettingLockFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$d;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$d;->a:Lcom/miui/applicationlock/SettingLockFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/applicationlock/SettingLockFragment;->y0(Lcom/miui/applicationlock/SettingLockFragment;I)I

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$d;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/SettingLockFragment;->A0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockFragment$d;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-static {v1}, Lcom/miui/applicationlock/SettingLockFragment;->q0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120863

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$d;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/SettingLockFragment;->q0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, La3/b;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$d;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/SettingLockFragment;->h0(Lcom/miui/applicationlock/SettingLockFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$d;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-virtual {p1}, Lcom/miui/applicationlock/SettingLockFragment;->G0()V

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$d;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/SettingLockFragment;->q0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lc3/f;->j0(Landroid/content/Context;Z)V

    return-void
.end method
