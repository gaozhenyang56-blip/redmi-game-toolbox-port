.class Lcom/miui/applicationlock/SettingLockFragment$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/SettingLockFragment;->T0()V
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

    iput-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$i;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$i;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/SettingLockFragment;->o0(Lcom/miui/applicationlock/SettingLockFragment;)Lmiuix/preference/TextPreference;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/applicationlock/SettingLockFragment$i;->a:Lcom/miui/applicationlock/SettingLockFragment;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/miui/applicationlock/SettingLockFragment;->n0(Lcom/miui/applicationlock/SettingLockFragment;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$i;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/SettingLockFragment;->D0(Lcom/miui/applicationlock/SettingLockFragment;)Lc3/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lc3/d;->y(I)V

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$i;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-static {p1, v0}, Lcom/miui/applicationlock/SettingLockFragment;->p0(Lcom/miui/applicationlock/SettingLockFragment;I)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/applicationlock/SettingLockFragment$i;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-static {p2}, Lcom/miui/applicationlock/SettingLockFragment;->o0(Lcom/miui/applicationlock/SettingLockFragment;)Lmiuix/preference/TextPreference;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment$i;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-static {v0, p1}, Lcom/miui/applicationlock/SettingLockFragment;->n0(Lcom/miui/applicationlock/SettingLockFragment;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/applicationlock/SettingLockFragment$i;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-static {p2}, Lcom/miui/applicationlock/SettingLockFragment;->D0(Lcom/miui/applicationlock/SettingLockFragment;)Lc3/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lc3/d;->y(I)V

    iget-object p2, p0, Lcom/miui/applicationlock/SettingLockFragment$i;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-static {p2, p1}, Lcom/miui/applicationlock/SettingLockFragment;->p0(Lcom/miui/applicationlock/SettingLockFragment;I)V

    :goto_0
    const/4 p1, 0x4

    invoke-static {p1}, Lc3/f;->l0(I)V

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$i;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/SettingLockFragment;->r0(Lcom/miui/applicationlock/SettingLockFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method
