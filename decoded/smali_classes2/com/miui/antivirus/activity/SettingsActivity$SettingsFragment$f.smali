.class Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$f;
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

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$f;->a:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    invoke-static {p1}, Lef/x;->R(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$f;->a:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    invoke-static {p1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->c0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Lcom/miui/antivirus/activity/SettingsActivity;

    move-result-object p1

    invoke-static {p1}, Lx4/u;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$f;->a:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    invoke-virtual {p1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->G0()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$f;->a:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    invoke-static {p1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->n0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)V

    :goto_0
    return-void
.end method
