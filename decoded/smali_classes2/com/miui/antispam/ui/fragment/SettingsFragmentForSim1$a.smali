.class Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj2/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->q0()V
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

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1$a;->a:Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1$a;->a:Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;

    const v0, 0x7f121a88

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1$a;->a:Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;

    const v0, 0x7f121a87

    :goto_0
    invoke-static {p1, v0}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->h0(Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;I)V

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1$a;->a:Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;

    invoke-static {p1}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->i0(Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1$a;->a:Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;

    const v0, 0x7f121a85

    invoke-static {p1, v0}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->h0(Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;I)V

    :goto_1
    return-void
.end method
