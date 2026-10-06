.class public Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WarningCenterDisasterFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$MyCallBack;
    }
.end annotation


# instance fields
.field private mAllPreference:Landroidx/preference/Preference;

.field private mAreaPreference:Lmiuix/preference/TextPreference;

.field private mItems:[Ljava/lang/CharSequence;

.field private mItemsStrong:[Ljava/lang/CharSequence;

.field private mPrefChangeListener:Landroidx/preference/Preference$c;

.field private mPrefClickListener:Landroidx/preference/Preference$d;

.field private mRecentCategory:Landroidx/preference/PreferenceCategory;

.field private mRecentPreference:Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;

.field private mSettings:Landroidx/preference/Preference;

.field private mStrongCheck:Landroidx/preference/CheckBoxPreference;

.field private mStrongLevel:Lmiuix/preference/TextPreference;

.field private mSystemCheck:Landroidx/preference/CheckBoxPreference;

.field private mSystemLevel:Lmiuix/preference/TextPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$1;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mPrefClickListener:Landroidx/preference/Preference$d;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$2;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mPrefChangeListener:Landroidx/preference/Preference$c;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mSettings:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mAllPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)Landroidx/preference/PreferenceCategory;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mRecentCategory:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mRecentPreference:Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)[Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mItemsStrong:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)[Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mItems:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mSystemLevel:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->showSystemChooseDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mStrongLevel:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->showStrongChooseDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mAreaPreference:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mSystemCheck:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mStrongCheck:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method private buildStrongLevelText()V
    .locals 7

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getStrongPushLevel()I

    move-result v0

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mItemsStrong:[Ljava/lang/CharSequence;

    array-length v1, v1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mItemsStrong:[Ljava/lang/CharSequence;

    array-length v4, v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/Utils;->LEVEL:[I

    aget v4, v4, v3

    and-int v6, v0, v4

    if-ne v6, v4, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    aput-boolean v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v0, ""

    move-object v4, v0

    move v3, v2

    :goto_2
    iget-object v6, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mItemsStrong:[Ljava/lang/CharSequence;

    array-length v6, v6

    if-ge v3, v6, :cond_3

    aget-boolean v6, v1, v3

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mItemsStrong:[Ljava/lang/CharSequence;

    aget-object v4, v4, v3

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\u3001"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mStrongLevel:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private buildSystemLevelText()V
    .locals 7

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getSystemPushLevel()I

    move-result v0

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mItems:[Ljava/lang/CharSequence;

    array-length v1, v1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mItems:[Ljava/lang/CharSequence;

    array-length v4, v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/Utils;->LEVEL:[I

    aget v4, v4, v3

    and-int v6, v0, v4

    if-ne v6, v4, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    aput-boolean v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v0, ""

    move-object v4, v0

    move v3, v2

    :goto_2
    iget-object v6, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mItems:[Ljava/lang/CharSequence;

    array-length v6, v6

    if-ge v3, v6, :cond_3

    aget-boolean v6, v1, v3

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mItems:[Ljava/lang/CharSequence;

    aget-object v4, v4, v3

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\u3001"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mSystemLevel:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private getData()V
    .locals 3

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;-><init>(Landroid/content/Context;Z)V

    new-instance v1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$MyCallBack;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$MyCallBack;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->setCallBack(Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask$CallBack;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private showStrongChooseDialog()V
    .locals 7

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getStrongPushLevel()I

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [Z

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    sget-object v5, Lcom/miui/warningcenter/disasterwarning/Utils;->LEVEL:[I

    aget v5, v5, v4

    and-int v6, v0, v5

    if-ne v6, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    aput-boolean v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121c0b

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mItemsStrong:[Ljava/lang/CharSequence;

    new-instance v4, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$5;

    invoke-direct {v4, p0, v2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$5;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;[Z)V

    invoke-virtual {v1, v3, v2, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f120f48

    new-instance v4, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$4;

    invoke-direct {v4, p0, v2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$4;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;[Z)V

    invoke-virtual {v1, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120499

    new-instance v3, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$3;

    invoke-direct {v3, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$3;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)V

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private showSystemChooseDialog()V
    .locals 7

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getSystemPushLevel()I

    move-result v0

    const/4 v1, 0x4

    new-array v2, v1, [Z

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    sget-object v5, Lcom/miui/warningcenter/disasterwarning/Utils;->LEVEL:[I

    aget v5, v5, v4

    and-int v6, v0, v5

    if-ne v6, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    aput-boolean v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121c0b

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mItems:[Ljava/lang/CharSequence;

    new-instance v4, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$8;

    invoke-direct {v4, p0, v2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$8;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;[Z)V

    invoke-virtual {v1, v3, v2, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f120f48

    new-instance v4, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$7;

    invoke-direct {v4, p0, v2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$7;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;[Z)V

    invoke-virtual {v1, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120499

    new-instance v3, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$6;

    invoke-direct {v3, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$6;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)V

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

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

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    const p1, 0x7f150074

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f121c0e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f121c0d

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, p1, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f121c0f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    aput-object p2, p1, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f121c0c

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x3

    aput-object p2, p1, v2

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mItems:[Ljava/lang/CharSequence;

    new-array p1, v1, [Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mItemsStrong:[Ljava/lang/CharSequence;

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mItemsStrong:[Ljava/lang/CharSequence;

    iget-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mItems:[Ljava/lang/CharSequence;

    aget-object p2, p2, v0

    aput-object p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "preference_key_recent"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mRecentPreference:Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;

    const-string p1, "preference_key_settings"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mSettings:Landroidx/preference/Preference;

    const-string p1, "preference_key_all"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mAllPreference:Landroidx/preference/Preference;

    const-string p1, "preference_key_system_receive"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mSystemCheck:Landroidx/preference/CheckBoxPreference;

    const-string p1, "preference_key_system_receive_level"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mSystemLevel:Lmiuix/preference/TextPreference;

    const-string p1, "preference_key_strong_receive"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mStrongCheck:Landroidx/preference/CheckBoxPreference;

    const-string p1, "preference_key_strong_receive_level"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mStrongLevel:Lmiuix/preference/TextPreference;

    const-string p1, "preference_key_place_subscribe"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mAreaPreference:Lmiuix/preference/TextPreference;

    const-string p1, "category_key_recent"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mRecentCategory:Landroidx/preference/PreferenceCategory;

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mSettings:Landroidx/preference/Preference;

    iget-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mPrefClickListener:Landroidx/preference/Preference$d;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mAllPreference:Landroidx/preference/Preference;

    iget-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mPrefClickListener:Landroidx/preference/Preference$d;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mSystemLevel:Lmiuix/preference/TextPreference;

    iget-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mPrefClickListener:Landroidx/preference/Preference$d;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mStrongLevel:Lmiuix/preference/TextPreference;

    iget-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mPrefClickListener:Landroidx/preference/Preference$d;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mAreaPreference:Lmiuix/preference/TextPreference;

    iget-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mPrefClickListener:Landroidx/preference/Preference$d;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mSystemCheck:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mPrefChangeListener:Landroidx/preference/Preference$c;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mStrongCheck:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mPrefChangeListener:Landroidx/preference/Preference$c;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->getData()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mStrongCheck:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getStrongPushToggle()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mStrongLevel:Lmiuix/preference/TextPreference;

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getStrongPushToggle()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mSystemCheck:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getSystemPushToggle()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->mSystemLevel:Lmiuix/preference/TextPreference;

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getSystemPushToggle()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->buildStrongLevelText()V

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->buildSystemLevelText()V

    return-void
.end method
