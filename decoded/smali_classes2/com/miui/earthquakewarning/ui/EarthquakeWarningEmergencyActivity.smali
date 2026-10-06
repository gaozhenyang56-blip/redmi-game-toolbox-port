.class public Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private mAllergy:Landroid/widget/TextView;

.field private mBirthday:Landroid/widget/TextView;

.field private mBloodType:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mIdcard:Landroid/widget/TextView;

.field private mMedical:Landroid/widget/TextView;

.field private mMedicine:Landroid/widget/TextView;

.field private mName:Landroid/widget/TextView;

.field private mOrganDonation:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->lambda$showDeleteAllDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static deleteAllInfo()V
    .locals 3

    const-string v0, "preference_key_earthquake_warning_emergency_name"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "preference_key_earthquake_warning_emergency_birthday"

    invoke-static {v0, v1}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "preference_key_earthquake_warning_emergency_idcard"

    invoke-static {v0, v1}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "preference_key_earthquake_warning_emergency_blood_type"

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lr4/a;->p(Ljava/lang/String;I)V

    const-string v0, "preference_key_earthquake_warning_emergency_allergy"

    invoke-static {v0, v1}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "preference_key_earthquake_warning_emergency_medicine"

    invoke-static {v0, v1}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "preference_key_earthquake_warning_emergency_medical"

    invoke-static {v0, v1}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "preference_key_earthquake_warning_emergency_organ_donation"

    invoke-static {v0, v2}, Lr4/a;->p(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/earthquakewarning/utils/Utils;->setEmergencyDeleteAll(Z)V

    return-void
.end method

.method public static synthetic e0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->lambda$showDeleteAllDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private initData()V
    .locals 6

    const-string v0, "preference_key_earthquake_warning_emergency_name"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const-string v0, "preference_key_earthquake_warning_emergency_birthday"

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mBirthday:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mBirthday:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const-string v0, "preference_key_earthquake_warning_emergency_idcard"

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mIdcard:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mIdcard:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const-string v0, "preference_key_earthquake_warning_emergency_blood_type"

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mBloodType:Landroid/widget/TextView;

    aget-object v0, v4, v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mBloodType:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    const-string v0, "preference_key_earthquake_warning_emergency_allergy"

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mAllergy:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mAllergy:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    const-string v0, "preference_key_earthquake_warning_emergency_medicine"

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mMedicine:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mMedicine:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    const-string v0, "preference_key_earthquake_warning_emergency_medical"

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mMedical:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_6
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mMedical:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    const-string v0, "preference_key_earthquake_warning_emergency_organ_donation"

    invoke-static {v0, v2}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v2, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mOrganDonation:Landroid/widget/TextView;

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_7
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mOrganDonation:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    return-void
.end method

.method private synthetic lambda$showDeleteAllDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->deleteAllInfo()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$showDeleteAllDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private showDeleteAllDialog()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12079b

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120761

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/earthquakewarning/ui/m;

    invoke-direct {v1, p0}, Lcom/miui/earthquakewarning/ui/m;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/earthquakewarning/ui/n;

    invoke-direct {v1}, Lcom/miui/earthquakewarning/ui/n;-><init>()V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private updateData(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const-string v0, "birthday"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mBirthday:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mBirthday:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mBirthday:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const-string v0, "idcard"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mIdcard:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mIdcard:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mIdcard:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const-string v0, "bloodType"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mBloodType:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mBloodType:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mBloodType:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    const-string v0, "allergy"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mAllergy:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mAllergy:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mAllergy:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    const-string v0, "medicine"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mMedicine:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mMedicine:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mMedicine:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    const-string v0, "medical"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mMedical:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mMedical:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_6
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mMedical:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    const-string v0, "organDonation"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mOrganDonation:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mOrganDonation:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_7
    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mOrganDonation:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultViewModelCreationExtras()Lp0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/k;)Lp0/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRatioUiBaseWidthDp()I
    .locals 1

    invoke-static {p0}, Lmiuix/autodensity/i;->a(Lmiuix/autodensity/j;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onActivityCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/common/base/b;->a(Lcom/miui/common/base/c;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onActivityDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->b(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityPause()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->c(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityResume()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->d(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityStart()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->e(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityStop()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->f(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070cc6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v0, 0x7f0b027f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    const p1, 0x7f0e013f

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    new-instance p1, Landroid/content/ComponentName;

    const-class v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/warningcenter/AlertWindowHelper;->setWindowFeatures(Landroid/view/Window;)V

    :cond_0
    iput-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/earthquakewarning/utils/MsgObservable;->getInstance()Lcom/miui/earthquakewarning/utils/MsgObservable;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    const p1, 0x7f0b07e7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mName:Landroid/widget/TextView;

    const p1, 0x7f0b0178

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mBirthday:Landroid/widget/TextView;

    const p1, 0x7f0b0532

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mIdcard:Landroid/widget/TextView;

    const p1, 0x7f0b017d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mBloodType:Landroid/widget/TextView;

    const p1, 0x7f0b00a7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mAllergy:Landroid/widget/TextView;

    const p1, 0x7f0b076e

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mMedicine:Landroid/widget/TextView;

    const p1, 0x7f0b076d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mMedical:Landroid/widget/TextView;

    const p1, 0x7f0b0843

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mOrganDonation:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->initData()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    invoke-static {}, Lcom/miui/earthquakewarning/utils/MsgObservable;->getInstance()Lcom/miui/earthquakewarning/utils/MsgObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->showDeleteAllDialog()V

    :goto_0
    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0366
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    instance-of p1, p2, Landroid/os/Message;

    if-eqz p1, :cond_0

    check-cast p2, Landroid/os/Message;

    iget p1, p2, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;->updateData(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method
