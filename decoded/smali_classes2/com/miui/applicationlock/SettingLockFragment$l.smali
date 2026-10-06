.class Lcom/miui/applicationlock/SettingLockFragment$l;
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

    iput-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$l;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$l;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/SettingLockFragment;->D0(Lcom/miui/applicationlock/SettingLockFragment;)Lc3/d;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lc3/d;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$l;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/SettingLockFragment;->s0(Lcom/miui/applicationlock/SettingLockFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
