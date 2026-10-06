.class public Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;
.super Lcom/miui/common/base/ui/MiuiXPreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallInterceptSettingsFragment"
.end annotation


# instance fields
.field private b:Landroidx/preference/CheckBoxPreference;

.field private c:Landroidx/preference/CheckBoxPreference;

.field private d:Landroidx/preference/CheckBoxPreference;

.field private e:Lmiuix/preference/TextPreference;

.field private f:Landroidx/preference/CheckBoxPreference;

.field private g:Landroidx/preference/CheckBoxPreference;

.field private h:Landroidx/preference/PreferenceCategory;

.field private i:Lmiuix/preference/TextPreference;

.field private j:Lmiuix/preference/TextPreference;

.field private k:Landroid/content/Context;

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic c0()Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->k0()Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d0(Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->m0()V

    return-void
.end method

.method static synthetic e0(Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->f:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->k:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->l:I

    return p0
.end method

.method private i0(Lmiuix/preference/TextPreference;Ljava/lang/String;IIZ)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move/from16 v3, p3

    move/from16 v4, p5

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v5

    const/4 v6, 0x2

    const v7, 0x7f12180d

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_6

    if-nez v5, :cond_0

    if-nez v4, :cond_6

    :cond_0
    new-instance v10, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$c;

    invoke-direct {v10, v1, v0, v4, v3}, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$c;-><init>(Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;Ljava/lang/String;ZI)V

    invoke-virtual {v2, v10}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v3, v1, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->k:Landroid/content/Context;

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v10

    invoke-static {v3, v10}, Lm2/f;->D(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->k:Landroid/content/Context;

    invoke-static {v3}, Lm2/f;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->k:Landroid/content/Context;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v6, v9

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v8

    invoke-virtual {v3, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const v5, 0x7f1217f0

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->k:Landroid/content/Context;

    const v6, 0x7f1217f2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, v1, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->k:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lmiui/provider/ExtraTelephony$AntiSpamSim;->CONTENT_URI:Landroid/net/Uri;

    const/4 v12, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sim_id=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "backsound_mode"

    if-eqz v5, :cond_3

    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v0, v1, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f030063

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_5

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget v0, v1, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->l:I

    invoke-static {v0, v3}, Le2/b;->s(II)V

    goto :goto_2

    :cond_3
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "sim_id"

    invoke-virtual {v7, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "name"

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const-string v3, ""

    :goto_1
    invoke-virtual {v7, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lmiui/provider/ExtraTelephony$AntiSpamSim;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_2
    invoke-static {v5}, Lbl/e;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :goto_3
    invoke-static {v5}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_6
    iget-object v0, v1, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->k:Landroid/content/Context;

    new-array v3, v6, [Ljava/lang/Object;

    const v4, 0x7f121808

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v9}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_4
    invoke-virtual {v2, v8}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private j0()V
    .locals 14

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->i:Lmiuix/preference/TextPreference;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_0
    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->i0(Lmiuix/preference/TextPreference;Ljava/lang/String;IIZ)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->k:Landroid/content/Context;

    invoke-static {v0}, Lm2/a;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->i:Lmiuix/preference/TextPreference;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iget v2, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->l:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lmiui/telephony/TelephonyManager;->getSubscriberIdForSlot(I)Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->l:I

    add-int/lit8 v5, v6, -0x1

    goto :goto_1

    :cond_1
    iget-object v9, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->i:Lmiuix/preference/TextPreference;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmiui/telephony/TelephonyManager;->getSubscriberIdForSlot(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->i0(Lmiuix/preference/TextPreference;Ljava/lang/String;IIZ)V

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->j:Lmiuix/preference/TextPreference;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManager;->getSubscriberIdForSlot(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    :goto_1
    const/4 v7, 0x1

    goto :goto_0

    :goto_2
    return-void
.end method

.method private static k0()Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;
    .locals 1

    new-instance v0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;

    invoke-direct {v0}, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;-><init>()V

    return-object v0
.end method

.method private l0(Landroidx/preference/Preference;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->f:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    const v0, 0x7f1217c6

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    const v0, 0x7f1217c7

    goto :goto_0

    :cond_1
    const v0, 0x7f1217c8

    :goto_0
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12157b

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1217c5

    new-instance v2, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$b;

    invoke-direct {v2, p0, p1}, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$b;-><init>(Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;Landroidx/preference/Preference;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment$a;-><init>(Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private m0()V
    .locals 7

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->k:Landroid/content/Context;

    iget v1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->l:I

    const-string v2, "stranger_call_mode"

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->k:Landroid/content/Context;

    iget v2, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->l:I

    const-string v4, "contact_call_mode"

    invoke-static {v1, v4, v2, v3}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->k:Landroid/content/Context;

    iget v4, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->l:I

    const-string v5, "oversea_call_mode"

    invoke-static {v2, v5, v4, v3}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->k:Landroid/content/Context;

    iget v5, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->l:I

    const-string v6, "empty_call_mode"

    invoke-static {v4, v6, v5, v3}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v4

    iget-object v5, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    invoke-virtual {v5, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->f:Landroidx/preference/CheckBoxPreference;

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v6

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    if-nez v2, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v6

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->g:Landroidx/preference/CheckBoxPreference;

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    move v3, v6

    :goto_3
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    iget v1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->l:I

    invoke-static {v1}, Le2/b;->g(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->k:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "key_sim_id"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->l:I

    const-string v0, "is_from_intercept_notification"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "oversea_function_guide"

    const-string v0, "oversea_intercept"

    const-string v1, "click"

    invoke-static {p1, v0, v1}, Lc2/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const p1, 0x7f15000c

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    const-string p1, "key_call_stranger"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    const-string p1, "key_call_forwarding"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    const-string p1, "key_call_oversea"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    const-string p1, "key_call_reported"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->e:Lmiuix/preference/TextPreference;

    const-string p1, "key_call_contacts"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->f:Landroidx/preference/CheckBoxPreference;

    const-string p1, "key_call_unknown"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->g:Landroidx/preference/CheckBoxPreference;

    const-string p1, "backsound_group"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->h:Landroidx/preference/PreferenceCategory;

    const-string p1, "backsound_1"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->i:Lmiuix/preference/TextPreference;

    const-string p1, "backsound_2"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->j:Lmiuix/preference/TextPreference;

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->e:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->f:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->g:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_1

    const-string p1, "call_stranger_group"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->e:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_2

    sget-boolean p1, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->h:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->m0()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->f:Landroidx/preference/CheckBoxPreference;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->l:I

    invoke-static {p1, p2}, Le2/b;->t(IZ)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->g:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->k:Landroid/content/Context;

    iget v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->l:I

    xor-int/2addr p2, v1

    const-string v2, "empty_call_mode"

    invoke-static {p1, v2, v0, p2}, Le2/b;->r(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->l0(Landroidx/preference/Preference;)V

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->f:Landroidx/preference/CheckBoxPreference;

    if-ne p1, p2, :cond_4

    const-string p1, "contact_call_mode"

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    if-ne p1, p2, :cond_5

    const-string p1, "oversea_call_mode"

    goto :goto_1

    :cond_5
    const-string p1, "stranger_call_mode"

    :goto_1
    iget-object p2, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->k:Landroid/content/Context;

    iget v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->l:I

    invoke-static {p2, p1, v0, v1}, Le2/b;->r(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_6
    :goto_2
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->e:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->k:Landroid/content/Context;

    const-class v1, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v0, p0, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->l:I

    const-string v1, "key_sim_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity$CallInterceptSettingsFragment;->j0()V

    :cond_0
    return-void
.end method
