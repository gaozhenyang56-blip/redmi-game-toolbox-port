.class Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->i0(Lmiuix/preference/TextPreference;Ljava/lang/String;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;Ljava/lang/String;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$c;->d:Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;

    iput-object p2, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$c;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$c;->b:Z

    iput p4, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$c;->d:Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->g0(Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/miui/antispam/ui/activity/BackSoundActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$c;->a:Ljava/lang/String;

    const-string v1, "sim_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$c;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$c;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const-string v1, "sim_slot"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$c;->d:Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;

    invoke-virtual {v0, p1}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method
