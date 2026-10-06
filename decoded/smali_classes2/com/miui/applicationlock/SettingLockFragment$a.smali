.class Lcom/miui/applicationlock/SettingLockFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$a;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$a;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/SettingLockFragment;->D0(Lcom/miui/applicationlock/SettingLockFragment;)Lc3/d;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment$a;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockFragment;->D0(Lcom/miui/applicationlock/SettingLockFragment;)Lc3/d;

    move-result-object v0

    invoke-virtual {v0}, Lc3/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc3/d;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$a;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/SettingLockFragment;->s0(Lcom/miui/applicationlock/SettingLockFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment$a;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-static {v0}, Lcom/miui/applicationlock/SettingLockFragment;->D0(Lcom/miui/applicationlock/SettingLockFragment;)Lc3/d;

    move-result-object v0

    invoke-virtual {v0}, Lc3/d;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
