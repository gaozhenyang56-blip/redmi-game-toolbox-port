.class Lcom/miui/applicationlock/SettingLockFragment$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/SettingLockFragment;->I0()V
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

    iput-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$k;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$k;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/SettingLockFragment;->D0(Lcom/miui/applicationlock/SettingLockFragment;)Lc3/d;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/applicationlock/SettingLockFragment$k;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-static {p2}, Lcom/miui/applicationlock/SettingLockFragment;->q0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lc3/w;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc3/d;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$k;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/SettingLockFragment;->s0(Lcom/miui/applicationlock/SettingLockFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$k;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/SettingLockFragment;->t0(Lcom/miui/applicationlock/SettingLockFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
