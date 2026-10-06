.class Lcom/miui/powercenter/PowerSettingsFragment$f;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/PowerSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/PowerSettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/PowerSettingsFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$f;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$f;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-virtual {p1}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->a0()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$f;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-static {p1}, Lcom/miui/powercenter/PowerSettingsFragment;->k0(Lcom/miui/powercenter/PowerSettingsFragment;)V

    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$f;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-static {p1}, Lcom/miui/powercenter/PowerSettingsFragment;->B0(Lcom/miui/powercenter/PowerSettingsFragment;)Lmiuix/preference/DropDownPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment$f;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-static {v0}, Lcom/miui/powercenter/PowerSettingsFragment;->C0(Lcom/miui/powercenter/PowerSettingsFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/preference/DropDownPreference;->E(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$f;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-static {p1}, Lcom/miui/powercenter/PowerSettingsFragment;->j0(Lcom/miui/powercenter/PowerSettingsFragment;)Lmiuix/preference/TextPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment$f;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-static {v0}, Lcom/miui/powercenter/PowerSettingsFragment;->l0(Lcom/miui/powercenter/PowerSettingsFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/powercenter/PowerSettingsFragment;->m0(Lcom/miui/powercenter/PowerSettingsFragment;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
