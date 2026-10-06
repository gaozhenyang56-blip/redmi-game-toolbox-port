.class Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->n0()V
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

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1$b;->a:Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    invoke-static {p1}, Lef/x;->R(Z)V

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1$b;->a:Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lx4/u;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1$b;->a:Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;

    invoke-virtual {p1}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->o0()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1$b;->a:Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;

    invoke-static {p1}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->j0(Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;)V

    :goto_0
    return-void
.end method
