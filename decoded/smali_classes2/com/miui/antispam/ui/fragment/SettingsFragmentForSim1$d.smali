.class Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1$d;->a:Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1$d;->a:Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;

    iget-object v1, v0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->k0(Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;)I

    move-result v0

    invoke-static {v1, p2, v0}, Lm2/a;->z(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1$d;->a:Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;

    iget-object v1, v0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->j:Lmiuix/preference/TextPreference;

    iget-object v0, v0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->o:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-virtual {v1, p2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
