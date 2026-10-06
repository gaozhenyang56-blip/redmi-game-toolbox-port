.class Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->A0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$b;->b:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    iput-object p2, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$b;->b:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    invoke-static {p1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->i0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$b;->b:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$b;->b:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    invoke-static {v0}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->j0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$i;

    iget-object v2, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$b;->b:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    iget-object v3, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$b;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$i;-><init>(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Ljava/lang/String;)V

    new-instance v2, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$j;

    iget-object v3, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$b;->b:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    iget-object v4, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$b;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$j;-><init>(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Ljava/lang/String;)V

    invoke-static {p1, v0, v1, v2, p2}, Lw2/t;->R(Landroid/content/Context;Ljava/util/List;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$b;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lo2/h;->A(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$b;->b:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    invoke-static {p1, p2}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->l0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Z)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$b;->a:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lo2/h;->A(Ljava/lang/String;Z)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
