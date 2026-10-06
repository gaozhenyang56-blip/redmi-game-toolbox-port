.class public Lcom/miui/appmanager/fragment/AMAppInformationFragment;
.super Lcom/miui/common/base/ui/MiuiXPreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/appmanager/fragment/AMAppInformationFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/common/base/ui/MiuiXPreferenceFragment;",
        "Landroidx/loader/app/a$a<",
        "Lcom/miui/appmanager/fragment/a;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Landroidx/preference/PreferenceCategory;

.field private c:Lmiuix/preference/TextPreference;

.field private d:Lmiuix/preference/TextPreference;

.field private e:Lmiuix/preference/TextPreference;

.field private f:Landroid/content/pm/PackageInfo;

.field private g:Lcom/miui/appmanager/fragment/a;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:[Ljava/lang/String;

.field private k:[Ljava/lang/String;

.field private l:I

.field private m:Lcom/miui/appmanager/fragment/AMAppInformationFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic c0(Lcom/miui/appmanager/fragment/AMAppInformationFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d0(Lcom/miui/appmanager/fragment/AMAppInformationFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/appmanager/fragment/AMAppInformationFragment;Landroid/content/Context;Lorg/json/JSONObject;)Lcom/miui/appmanager/fragment/a;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->i0(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/miui/appmanager/fragment/a;

    move-result-object p0

    return-object p0
.end method

.method private f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lmiuix/preference/TextPreference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/f;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/f;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->b:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private finish()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private g0()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->j:[Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->k:[Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->j:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    aget-object v2, v2, v1

    const-string v3, "install_source"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->g:Lcom/miui/appmanager/fragment/a;

    iget-object v2, v2, Lcom/miui/appmanager/fragment/a;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->j:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->k:[Ljava/lang/String;

    aget-object v4, v4, v1

    :goto_1
    invoke-direct {p0, v3, v4, v2}, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    iget-object v2, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->j:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, "install_time"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->g:Lcom/miui/appmanager/fragment/a;

    iget-wide v5, v2, Lcom/miui/appmanager/fragment/a;->c:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->j:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->k:[Ljava/lang/String;

    aget-object v3, v3, v1

    :goto_2
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->j:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v5, "update_source"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->g:Lcom/miui/appmanager/fragment/a;

    iget-object v2, v2, Lcom/miui/appmanager/fragment/a;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->j:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->k:[Ljava/lang/String;

    aget-object v4, v4, v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->j:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v5, "update_time"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->g:Lcom/miui/appmanager/fragment/a;

    iget-wide v5, v2, Lcom/miui/appmanager/fragment/a;->d:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->j:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->k:[Ljava/lang/String;

    aget-object v3, v3, v1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private h0()J
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    :try_start_0
    const-string v2, "2012/01/01 00:00:00"

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AMAppInformationFragment"

    const-string v3, "getDefaultTime error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private i0(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/miui/appmanager/fragment/a;
    .locals 5

    new-instance v0, Lcom/miui/appmanager/fragment/a;

    invoke-direct {v0}, Lcom/miui/appmanager/fragment/a;-><init>()V

    invoke-static {p1}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v1

    const-string v2, "Exception getLabel"

    const-string v3, "AMAppInformationFragment"

    if-eqz p2, :cond_1

    const-string p1, "installer_pkg_name"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "update_pkg_name"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    invoke-virtual {v1, p1}, Li4/a;->f(Ljava/lang/String;)Li4/b;

    move-result-object v4

    invoke-virtual {v4}, Li4/b;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/appmanager/fragment/a;->a:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-static {v3, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object p1, v0, Lcom/miui/appmanager/fragment/a;->a:Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    :try_start_1
    invoke-virtual {v1, p2}, Li4/a;->f(Ljava/lang/String;)Li4/b;

    move-result-object p1

    invoke-virtual {p1}, Li4/b;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/appmanager/fragment/a;->b:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {v3, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object p2, v0, Lcom/miui/appmanager/fragment/a;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->h:Ljava/lang/String;

    invoke-static {p1, p2}, Le3/b;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    :try_start_2
    invoke-virtual {v1, p1}, Li4/a;->f(Ljava/lang/String;)Li4/b;

    move-result-object p2

    invoke-virtual {p2}, Li4/b;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/miui/appmanager/fragment/a;->b:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p2

    invoke-static {v3, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object p1, v0, Lcom/miui/appmanager/fragment/a;->b:Ljava/lang/String;

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->h0()J

    move-result-wide p1

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->f:Landroid/content/pm/PackageInfo;

    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    cmp-long v4, v2, p1

    if-lez v4, :cond_3

    iput-wide v2, v0, Lcom/miui/appmanager/fragment/a;->c:J

    :cond_3
    iget-wide v1, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long p1, v1, p1

    if-lez p1, :cond_4

    iput-wide v1, v0, Lcom/miui/appmanager/fragment/a;->d:J

    :cond_4
    return-object v0
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Lcom/miui/appmanager/fragment/a;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/miui/appmanager/fragment/a;

    invoke-virtual {p0, p1, p2}, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->j0(Lq0/c;Lcom/miui/appmanager/fragment/a;)V

    return-void
.end method

.method public j0(Lq0/c;Lcom/miui/appmanager/fragment/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Lcom/miui/appmanager/fragment/a;",
            ">;",
            "Lcom/miui/appmanager/fragment/a;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->d:Lmiuix/preference/TextPreference;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->g:Lcom/miui/appmanager/fragment/a;

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->g0()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object p1

    const/16 p2, 0x82

    invoke-virtual {p1, p2}, Landroidx/loader/app/a;->a(I)V

    :cond_1
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Lcom/miui/appmanager/fragment/a;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lcom/miui/appmanager/fragment/AMAppInformationFragment$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/miui/appmanager/fragment/AMAppInformationFragment$a;-><init>(Landroid/content/Context;Lcom/miui/appmanager/fragment/AMAppInformationFragment;)V

    iput-object p2, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->m:Lcom/miui/appmanager/fragment/AMAppInformationFragment$a;

    :cond_0
    iget-object p1, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->m:Lcom/miui/appmanager/fragment/AMAppInformationFragment$a;

    return-object p1
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    const p2, 0x7f150013

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "am_app_pkgname"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->h:Ljava/lang/String;

    const-string v0, "am_app_uid"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->l:I

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->h:Ljava/lang/String;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Ltg/a;->d(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->f:Landroid/content/pm/PackageInfo;

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->finish()V

    return-void

    :cond_0
    new-instance p2, Lcom/miui/appmanager/fragment/a;

    invoke-direct {p2}, Lcom/miui/appmanager/fragment/a;-><init>()V

    iput-object p2, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->g:Lcom/miui/appmanager/fragment/a;

    const-string p2, "category_app_infomation"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    iput-object p2, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->b:Landroidx/preference/PreferenceCategory;

    const-string p2, "am_info_pkgname"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lmiuix/preference/TextPreference;

    iput-object p2, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->c:Lmiuix/preference/TextPreference;

    iget-object p2, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->h:Ljava/lang/String;

    const-string v0, "com.miui.dmregservice"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->b:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->c:Lmiuix/preference/TextPreference;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->c:Lmiuix/preference/TextPreference;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->h:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_0
    const-string p2, "am_info_label"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lmiuix/preference/TextPreference;

    iput-object p2, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->d:Lmiuix/preference/TextPreference;

    const-string p2, "am_info_version"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lmiuix/preference/TextPreference;

    iput-object p2, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->e:Lmiuix/preference/TextPreference;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->f:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object p2

    const/16 v0, 0x82

    invoke-virtual {p2, v0}, Landroidx/loader/app/a;->d(I)Lq0/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_2

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p2, v0, v2, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "am_info_pkgname"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    iget-object v2, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->h:Ljava/lang/String;

    const-string v3, "pkgName"

    invoke-static {v3, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1201ae

    invoke-static {v0, v1}, Leg/c;->n(Landroid/content/Context;I)V

    :cond_0
    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
