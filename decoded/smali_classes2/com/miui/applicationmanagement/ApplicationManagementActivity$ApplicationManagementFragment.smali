.class public final Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationmanagement/ApplicationManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApplicationManagementFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/pm/PackageInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:I

.field private d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Landroid/app/AppOpsManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Ljava/com/miui/applicationmanagement/AppIconTitlePreference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Lmiuix/preference/CheckBoxPreference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Lmiuix/preference/CheckBoxPreference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->i:Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private final a0(IZ)Z
    .locals 4

    const/16 v0, 0x2740

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->a:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/appmanager/AppManageUtils;->F(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->a:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->e:Landroid/app/AppOpsManager;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->b:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Landroid/app/AppOpsManagerCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;IILjava/lang/String;)I

    move-result v0

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->b:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "expose"

    const-string v3, "ApplicationManagementActivity"

    invoke-static {v2, v3, p2, p1, v1}, Lmb/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    :cond_4
    return v0
.end method

.method private final b0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->b:Ljava/lang/String;

    const-string v1, "view"

    const-string v2, "ApplicationManagementActivity"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v3}, Lmb/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    const-string v0, "app_icon_title"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Ljava/com/miui/applicationmanagement/AppIconTitlePreference;

    iput-object v0, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->f:Ljava/com/miui/applicationmanagement/AppIconTitlePreference;

    iget v0, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->c:I

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg_icon_xspace://"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg_icon://"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->a:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->f:Ljava/com/miui/applicationmanagement/AppIconTitlePreference;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Ljava/com/miui/applicationmanagement/AppIconTitlePreference;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/com/miui/applicationmanagement/AppIconTitlePreference;->f(Ljava/lang/String;)V

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/com/miui/applicationmanagement/AppIconTitlePreference;->g(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.AppOpsManager"

    invoke-static {v0, v1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->e:Landroid/app/AppOpsManager;

    const-string v0, "app_management_for_install"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/permcenter/o;->E(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const/16 v1, 0x2740

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->a0(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    iput-object v0, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->g:Lmiuix/preference/CheckBoxPreference;

    const-string v0, "app_management_for_chain_start"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    sget-boolean v1, Lcom/miui/permcenter/o;->t:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/miui/permcenter/o;->y:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const/16 v1, 0x2741

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->a0(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    move-object v3, v0

    :cond_4
    iput-object v3, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->h:Lmiuix/preference/CheckBoxPreference;

    return-void
.end method

.method private final c0(IZ)V
    .locals 6

    iget-object v2, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->a:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_1

    const/16 v0, 0x2740

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->e:Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->b:Ljava/lang/String;

    const/4 v5, 0x1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/appmanager/AppManageUtils;->y0(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->e:Landroid/app/AppOpsManager;

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->b:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2, p2}, Landroid/app/AppOpsManagerCompat;->setMode(Landroid/app/AppOpsManager;IILjava/lang/String;I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->b:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "click"

    const-string v2, "ApplicationManagementActivity"

    invoke-static {v1, v2, v0, p1, p2}, Lmb/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const p1, 0x7f150017

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "app_packageName"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->b:Ljava/lang/String;

    invoke-static {}, Lx4/z1;->y()I

    move-result p2

    const-string v0, "app_userId"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->c:I

    :cond_0
    iget-object p1, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->b:Ljava/lang/String;

    const/16 p2, 0x1000

    iget v0, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->c:I

    invoke-static {p1, p2, v0}, Ltg/a;->d(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->a:Landroid/content/pm/PackageInfo;

    iget-object p2, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->b:Ljava/lang/String;

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->b0()V

    return-void

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPackageName:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\uff0cmPackageInfo == null is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->a:Landroid/content/pm/PackageInfo;

    if-nez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ApplicationManagementActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_4
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Landroidx/preference/Preference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "preference"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newValue"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "app_management_for_install"

    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x2740

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/miui/applicationmanagement/ApplicationManagementActivity$ApplicationManagementFragment;->c0(IZ)V

    goto :goto_1

    :cond_0
    const-string v0, "app_management_for_chain_start"

    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2741

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1
.end method
