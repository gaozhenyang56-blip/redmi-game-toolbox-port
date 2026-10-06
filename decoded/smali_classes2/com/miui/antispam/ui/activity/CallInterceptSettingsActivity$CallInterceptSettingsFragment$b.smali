.class Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->l0(Landroidx/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/preference/Preference;

.field final synthetic b:Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;Landroidx/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$b;->b:Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;

    iput-object p2, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$b;->a:Landroidx/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$b;->a:Landroidx/preference/Preference;

    iget-object p2, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$b;->b:Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;

    invoke-static {p2}, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->e0(Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const-string p1, "contact_call_mode"

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$b;->a:Landroidx/preference/Preference;

    iget-object p2, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$b;->b:Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;

    invoke-static {p2}, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->f0(Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    if-ne p1, p2, :cond_1

    const-string p1, "oversea_call_mode"

    goto :goto_0

    :cond_1
    const-string p1, "stranger_call_mode"

    :goto_0
    iget-object p2, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$b;->b:Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;

    invoke-static {p2}, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->g0(Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$b;->b:Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->h0(Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, p1, v0, v1}, Le2/b;->r(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method
