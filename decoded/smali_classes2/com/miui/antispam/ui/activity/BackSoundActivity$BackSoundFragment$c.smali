.class Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->x0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$c;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$c;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->s0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$c;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->s0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiui/telephony/TelephonyManager;->getSubscriberIdForSlot(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$c;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->d0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    const v1, 0x7f1216b7

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$c;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->n0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)Lmiuix/preference/SingleChoicePreferenceCategory;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$c;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->e0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$c;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->h0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Lmiuix/preference/SingleChoicePreferenceCategory;->x(Ljava/lang/String;)V

    return v0

    :cond_1
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$c;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->s0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)I

    move-result p1

    invoke-static {p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getOperatorStr(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "CBN"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$c;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->i0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)V

    return v0

    :cond_2
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$c;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->n0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)Lmiuix/preference/SingleChoicePreferenceCategory;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/preference/SingleChoicePreferenceCategory;->r()I

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->g0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;I)I

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$c;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->n0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)Lmiuix/preference/SingleChoicePreferenceCategory;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$c;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->n0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)Lmiuix/preference/SingleChoicePreferenceCategory;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/preference/SingleChoicePreferenceCategory;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/SingleChoicePreference;

    invoke-static {p1, v1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->j0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;Lmiuix/preference/SingleChoicePreference;)Lmiuix/preference/SingleChoicePreference;

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$c;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->f0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$c;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->e0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$c;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v3}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->f0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {p1, v1, v2}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->k0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$c;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->n0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)Lmiuix/preference/SingleChoicePreferenceCategory;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$c;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->e0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$c;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->f0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Lmiuix/preference/SingleChoicePreferenceCategory;->x(Ljava/lang/String;)V

    return v0
.end method
