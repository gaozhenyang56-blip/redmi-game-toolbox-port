.class public Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAllergy:Landroid/widget/EditText;

.field private mBack:Landroid/widget/ImageView;

.field private mBirthday:Landroid/widget/EditText;

.field private mBloodType:Landroid/widget/EditText;

.field private mChoiceBloodType:[Ljava/lang/String;

.field private mChoiceOrganDonation:[Ljava/lang/String;

.field private mChooseBloodType:I

.field private mChooseOrganDonation:I

.field private mIdcard:Landroid/widget/EditText;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mMedical:Landroid/widget/EditText;

.field private mMedicine:Landroid/widget/EditText;

.field private mName:Landroid/widget/EditText;

.field private mOk:Landroid/widget/ImageView;

.field private mOrganDonation:Landroid/widget/EditText;

.field private mResutMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mViewRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mChooseBloodType:I

    iput v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mChooseOrganDonation:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mResutMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mBirthday:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mChooseBloodType:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mChoiceBloodType:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mBloodType:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$402(Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mChooseOrganDonation:I

    return p1
.end method

.method static synthetic access$500(Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mChoiceOrganDonation:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mOrganDonation:Landroid/widget/EditText;

    return-object p0
.end method

.method private getEmergencyAllergy()Ljava/lang/String;
    .locals 3

    const-string v0, "preference_key_earthquake_warning_emergency_allergy"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    return-object v1
.end method

.method private getEmergencyBirthday()Ljava/lang/String;
    .locals 3

    const-string v0, "preference_key_earthquake_warning_emergency_birthday"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    return-object v1
.end method

.method private getEmergencyBloodType()Ljava/lang/String;
    .locals 2

    const-string v0, "preference_key_earthquake_warning_emergency_blood_type"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v1, :cond_0

    iput v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mChooseBloodType:I

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mChoiceBloodType:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private getEmergencyIdcard()Ljava/lang/String;
    .locals 3

    const-string v0, "preference_key_earthquake_warning_emergency_idcard"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    return-object v1
.end method

.method private getEmergencyMedical()Ljava/lang/String;
    .locals 3

    const-string v0, "preference_key_earthquake_warning_emergency_medical"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    return-object v1
.end method

.method private getEmergencyMedicine()Ljava/lang/String;
    .locals 3

    const-string v0, "preference_key_earthquake_warning_emergency_medicine"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    return-object v1
.end method

.method private getEmergencyName()Ljava/lang/String;
    .locals 3

    const-string v0, "preference_key_earthquake_warning_emergency_name"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    return-object v1
.end method

.method private getEmergencyOrganDonation()Ljava/lang/String;
    .locals 2

    const-string v0, "preference_key_earthquake_warning_emergency_organ_donation"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v1, :cond_0

    iput v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mChooseOrganDonation:I

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mChoiceOrganDonation:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private saveAllInfo()V
    .locals 5

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mResutMap:Ljava/util/Map;

    const-string v3, "name"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "preference_key_earthquake_warning_emergency_name"

    invoke-static {v2, v0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mBirthday:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v1, v3

    :cond_0
    iget-object v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mResutMap:Ljava/util/Map;

    const-string v4, "birthday"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "preference_key_earthquake_warning_emergency_birthday"

    invoke-static {v2, v0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mIdcard:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v3

    :cond_1
    iget-object v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mResutMap:Ljava/util/Map;

    const-string v4, "idcard"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "preference_key_earthquake_warning_emergency_idcard"

    invoke-static {v2, v0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mBloodType:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v1, v3

    :cond_2
    iget-object v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mResutMap:Ljava/util/Map;

    const-string v4, "bloodType"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mChooseBloodType:I

    const-string v2, "preference_key_earthquake_warning_emergency_blood_type"

    invoke-static {v2, v0}, Lr4/a;->p(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mAllergy:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move v1, v3

    :cond_3
    iget-object v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mResutMap:Ljava/util/Map;

    const-string v4, "allergy"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "preference_key_earthquake_warning_emergency_allergy"

    invoke-static {v2, v0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mMedicine:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    move v1, v3

    :cond_4
    iget-object v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mResutMap:Ljava/util/Map;

    const-string v4, "medicine"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "preference_key_earthquake_warning_emergency_medicine"

    invoke-static {v2, v0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mMedical:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move v1, v3

    :cond_5
    iget-object v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mResutMap:Ljava/util/Map;

    const-string v4, "medical"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "preference_key_earthquake_warning_emergency_medical"

    invoke-static {v2, v0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mOrganDonation:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    move v3, v1

    :goto_0
    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mResutMap:Ljava/util/Map;

    const-string v2, "organDonation"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mChooseOrganDonation:I

    const-string v1, "preference_key_earthquake_warning_emergency_organ_donation"

    invoke-static {v1, v0}, Lr4/a;->p(Ljava/lang/String;I)V

    invoke-static {v3}, Lcom/miui/earthquakewarning/utils/Utils;->setEmergencyDeleteAll(Z)V

    invoke-static {}, Lcom/miui/earthquakewarning/utils/MsgObservable;->getInstance()Lcom/miui/earthquakewarning/utils/MsgObservable;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mResutMap:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/miui/earthquakewarning/utils/MsgObservable;->sendMessage(ILjava/lang/Object;)V

    const-string v0, "main_emergency"

    invoke-static {v0}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackMainResultActionModuleClick(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private showBloodTypeChooseDialog()V
    .locals 4

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const-string v0, "preference_key_earthquake_warning_emergency_blood_type"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    iget v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mChooseBloodType:I

    if-ne v2, v1, :cond_0

    iput v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mChooseBloodType:I

    :cond_0
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12075f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mChoiceBloodType:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mChooseBloodType:I

    new-instance v3, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity$2;

    invoke-direct {v3, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity$2;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120499

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private showChooseBirthdayDialog()V
    .locals 11

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v1, Lmiuix/appcompat/app/DatePickerDialog;

    new-instance v7, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity$1;

    invoke-direct {v7, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity$1;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v10

    move-object v5, v1

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lmiuix/appcompat/app/DatePickerDialog;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/DatePickerDialog;->setLunarMode(Z)V

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private showOrganDonationChooseDialog()V
    .locals 4

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const-string v0, "preference_key_earthquake_warning_emergency_organ_donation"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    iget v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mChooseOrganDonation:I

    if-ne v2, v1, :cond_0

    iput v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mChooseOrganDonation:I

    :cond_0
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12076e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mChoiceOrganDonation:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mChooseOrganDonation:I

    new-instance v3, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity$3;

    invoke-direct {v3, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity$3;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120499

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

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

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->showOrganDonationChooseDialog()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->saveAllInfo()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->showBloodTypeChooseDialog()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->showChooseBirthdayDialog()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b0178 -> :sswitch_4
        0x7f0b017d -> :sswitch_3
        0x7f0b01fc -> :sswitch_2
        0x7f0b082e -> :sswitch_1
        0x7f0b0843 -> :sswitch_0
    .end sparse-switch
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
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    const p1, 0x7f0e0140

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030029

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mChoiceBloodType:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03002a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mChoiceOrganDonation:[Ljava/lang/String;

    const p1, 0x7f0b09c2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mViewRoot:Landroid/view/ViewGroup;

    const p1, 0x7f0b082e

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mOk:Landroid/widget/ImageView;

    const p1, 0x7f0b01fc

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mBack:Landroid/widget/ImageView;

    const p1, 0x7f0b07e7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mName:Landroid/widget/EditText;

    const p1, 0x7f0b0178

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mBirthday:Landroid/widget/EditText;

    const p1, 0x7f0b0532

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mIdcard:Landroid/widget/EditText;

    const p1, 0x7f0b017d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mBloodType:Landroid/widget/EditText;

    const p1, 0x7f0b00a7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mAllergy:Landroid/widget/EditText;

    const p1, 0x7f0b076e

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mMedicine:Landroid/widget/EditText;

    const p1, 0x7f0b076d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mMedical:Landroid/widget/EditText;

    const p1, 0x7f0b0843

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mOrganDonation:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mBack:Landroid/widget/ImageView;

    const v0, 0x7f080a41

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mOk:Landroid/widget/ImageView;

    const v0, 0x7f080a47

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    invoke-static {}, Lx4/a0;->x()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071832

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-static {p0}, Lx4/a0;->n(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr v0, p1

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mViewRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mViewRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mBirthday:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mBloodType:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mOrganDonation:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mOk:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mBack:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->getEmergencyName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mName:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->getEmergencyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->getEmergencyBirthday()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mBirthday:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->getEmergencyBirthday()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->getEmergencyIdcard()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mIdcard:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->getEmergencyIdcard()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->getEmergencyBloodType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mBloodType:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->getEmergencyBloodType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->getEmergencyAllergy()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mAllergy:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->getEmergencyAllergy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->getEmergencyMedicine()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mMedicine:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->getEmergencyMedicine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->getEmergencyMedical()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mMedical:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->getEmergencyMedical()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->getEmergencyOrganDonation()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mOrganDonation:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->getEmergencyOrganDonation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyEditActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method
