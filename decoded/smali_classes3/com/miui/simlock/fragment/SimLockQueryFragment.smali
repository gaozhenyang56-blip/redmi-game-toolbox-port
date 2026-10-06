.class public Lcom/miui/simlock/fragment/SimLockQueryFragment;
.super Lcom/miui/simlock/fragment/SimLockBaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/simlock/fragment/SimLockQueryFragment$b;
    }
.end annotation


# instance fields
.field private d:Lmiuix/preference/TextPreference;

.field private e:Lmiuix/preference/TextPreference;

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Lmiuix/appcompat/app/AlertDialog;

.field private final j:Landroidx/preference/Preference$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/simlock/fragment/SimLockBaseFragment;-><init>()V

    new-instance v0, Lhg/b;

    invoke-direct {v0, p0}, Lhg/b;-><init>(Lcom/miui/simlock/fragment/SimLockQueryFragment;)V

    iput-object v0, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment;->j:Landroidx/preference/Preference$d;

    return-void
.end method

.method public static synthetic b0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/simlock/fragment/SimLockQueryFragment;->m0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/simlock/fragment/SimLockQueryFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/simlock/fragment/SimLockQueryFragment;->j0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d0(Lcom/miui/simlock/fragment/SimLockQueryFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/simlock/fragment/SimLockQueryFragment;->l0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/simlock/fragment/SimLockQueryFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/simlock/fragment/SimLockQueryFragment;->k0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic f0(Lcom/miui/simlock/fragment/SimLockQueryFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment;->g:I

    return p0
.end method

.method static synthetic g0(Lcom/miui/simlock/fragment/SimLockQueryFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment;->d:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/simlock/fragment/SimLockQueryFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment;->f:I

    return p0
.end method

.method static synthetic i0(Lcom/miui/simlock/fragment/SimLockQueryFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment;->h:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic j0(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/simlock/fragment/SimLockQueryFragment;->o0()V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic k0(Landroid/content/DialogInterface;I)V
    .locals 0

    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    invoke-direct {p0, p1}, Lcom/miui/simlock/fragment/SimLockQueryFragment;->n0(Lmiuix/appcompat/app/AlertDialog;)V

    return-void
.end method

.method private synthetic l0(Landroid/content/DialogInterface;)V
    .locals 4

    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    const v0, 0x7f0b08c2

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f121680

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/miui/simlock/fragment/SimLockQueryFragment;->p0(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic m0(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private n0(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 6

    const v0, 0x7f0b08c2

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f0b08c1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f12169a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x8

    const/4 v3, 0x4

    if-lt p1, v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment;->d:Lmiuix/preference/TextPreference;

    invoke-virtual {p1}, Lmiuix/preference/TextPreference;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f12169b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    iput-object v0, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/simlock/fragment/SimLockQueryFragment;->q0(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f121699

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_1
    return-void
.end method

.method private o0()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121695    # 1.9418454E38f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e004a

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1216aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1216a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lhg/c;

    invoke-direct {v2, p0}, Lhg/c;-><init>(Lcom/miui/simlock/fragment/SimLockQueryFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lhg/d;

    invoke-direct {v1, p0}, Lhg/d;-><init>(Lcom/miui/simlock/fragment/SimLockQueryFragment;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment;->i:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private p0(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lhg/e;

    invoke-direct {v0, p1}, Lhg/e;-><init>(Landroid/view/View;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private q0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/miui/simlock/fragment/SimLockQueryFragment$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/simlock/fragment/SimLockQueryFragment$b;-><init>(Lcom/miui/simlock/fragment/SimLockQueryFragment;Ljava/lang/String;Lcom/miui/simlock/fragment/SimLockQueryFragment$a;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public a0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->b:Landroid/content/Context;

    iget v1, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment;->f:I

    invoke-static {v0, v1}, Lcom/miui/simlock/a;->b(Landroid/content/Context;I)Lcom/miui/simlock/a$c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/simlock/a$c;->g()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment;->d:Lmiuix/preference/TextPreference;

    invoke-virtual {v0}, Lcom/miui/simlock/a$c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->a:Lmiui/telephony/SubscriptionManager;

    iget v2, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment;->f:I

    invoke-virtual {v1, v2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment;->f:I

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManager;->getSimStateForSlot(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment;->d:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment;->e:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment;->i:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/miui/simlock/fragment/SimLockBaseFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result p1

    iput p1, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment;->f:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget v0, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment;->f:I

    invoke-static {p1, v0}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result p1

    iput p1, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment;->f:I

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SimLockQueryFragment::onCreatePreferences::mSlotId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimLock"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->a:Lmiui/telephony/SubscriptionManager;

    iget v0, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment;->f:I

    invoke-virtual {p1, v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result p1

    iput p1, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment;->g:I

    const p1, 0x7f150006

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "pin"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment;->d:Lmiuix/preference/TextPreference;

    const-string p1, "new_pin"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment;->e:Lmiuix/preference/TextPreference;

    iget-object p2, p0, Lcom/miui/simlock/fragment/SimLockQueryFragment;->j:Landroidx/preference/Preference$d;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/miui/simlock/fragment/SimLockQueryFragment;->a0()V

    return-void
.end method
