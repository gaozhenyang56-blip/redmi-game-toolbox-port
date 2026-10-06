.class Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->F0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$d;->a:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$d;->a:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$d;->a:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p2, v0}, Leg/o;->c(Landroid/content/Context;Z)V

    invoke-static {p1}, Lx4/u;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$d;->a:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    invoke-virtual {p1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->G0()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$d;->a:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    invoke-static {p1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->n0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)V

    :goto_0
    const/4 p1, 0x0

    invoke-static {p1, v0}, Lqf/c;->L0(ZZ)V

    :cond_2
    :goto_1
    return-void
.end method
