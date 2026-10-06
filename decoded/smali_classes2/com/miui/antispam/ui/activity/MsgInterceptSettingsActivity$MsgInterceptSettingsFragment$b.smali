.class Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->n0(Landroidx/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroidx/preference/Preference;

.field final synthetic c:Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;Ljava/lang/String;Landroidx/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$b;->c:Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;

    iput-object p2, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$b;->b:Landroidx/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$b;->c:Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->e0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$b;->c:Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->f0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)I

    move-result v2

    invoke-static {v0, v1, v2, p2}, Le2/b;->r(Landroid/content/Context;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$b;->b:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$b;->c:Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->i0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)Lmiuix/preference/TextPreference;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$b;->c:Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->i0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$b;->c:Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->j0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)[Ljava/lang/String;

    move-result-object v1

    aget-object p2, v1, p2

    :goto_0
    invoke-virtual {v0, p2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$b;->b:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$b;->c:Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->k0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)Lmiuix/preference/TextPreference;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$b;->c:Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->k0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$b;->c:Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->j0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)[Ljava/lang/String;

    move-result-object v1

    aget-object p2, v1, p2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$b;->c:Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->d0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$b;->c:Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->l0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)[Ljava/lang/String;

    move-result-object v1

    aget-object p2, v1, p2

    goto :goto_0

    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
