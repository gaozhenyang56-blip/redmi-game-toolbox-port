.class public Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;
.super Lcom/miui/common/base/ui/MiuiXPreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerDetailFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$f;,
        Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$e;
    }
.end annotation


# static fields
.field private static final G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lmiuix/preference/SingleChoicePreference;

.field private B:Lmiuix/preference/SingleChoicePreference;

.field private C:Lmiuix/preference/SingleChoicePreference;

.field private D:Lmiuix/preference/SingleChoicePreference;

.field private E:Lmiuix/preference/CommentPreference;

.field private F:I

.field private b:I

.field private c:I

.field private d:[Ljava/lang/String;

.field private e:Landroid/app/admin/DevicePolicyManager;

.field private f:Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;

.field private g:Landroidx/preference/PreferenceCategory;

.field private h:Landroidx/preference/PreferenceCategory;

.field private i:Landroidx/preference/PreferenceCategory;

.field private j:Lcom/miui/permcenter/settings/model/TitleOnlyPreference;

.field private k:Landroid/view/MenuItem;

.field private l:Landroid/view/MenuItem;

.field private m:Landroid/view/MenuItem;

.field private n:Z

.field private o:Landroid/os/Handler;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:D

.field private t:Ljava/lang/String;

.field private u:Lcom/miui/powerkeeper/IPowerKeeper;

.field private v:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$b;

.field private w:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$a;

.field private x:Landroid/content/ServiceConnection;

.field private y:Ljava/lang/String;

.field private z:Landroidx/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->G:Ljava/util/List;

    const-string v1, "com.trendmicro.tmmssuite.oemkddi.jp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.airtelx.airtelkiosk"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->n:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->p:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->u:Lcom/miui/powerkeeper/IPowerKeeper;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->y:Ljava/lang/String;

    return-void
.end method

.method private A0(Ljava/lang/Object;III)V
    .locals 8

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v3, v0, v1

    new-instance v5, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d;

    invoke-direct {v5, p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d;-><init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)V

    move-object v2, p1

    move v4, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Ltg/a;->b(Ljava/lang/Object;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    return-void
.end method

.method private B0()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->b:I

    invoke-static {v0, v1}, Lcom/miui/powercenter/legacypowerrank/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private C0()V
    .locals 3

    new-instance v0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$b;-><init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)V

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->v:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$b;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private D0()V
    .locals 6

    const-string v0, "single_choice_preference_group"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->z:Landroidx/preference/PreferenceCategory;

    const-string v0, "radiobutton_no_restrict"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/SingleChoicePreference;

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->A:Lmiuix/preference/SingleChoicePreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :cond_0
    const-string v0, "radiobutton_miui_auto"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/SingleChoicePreference;

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->B:Lmiuix/preference/SingleChoicePreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :cond_1
    const-string v0, "radiobutton_restrict_running"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/SingleChoicePreference;

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->C:Lmiuix/preference/SingleChoicePreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const v2, 0x7f12022c

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->C:Lmiuix/preference/SingleChoicePreference;

    sget-object v2, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->G:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->t:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->C:Lmiuix/preference/SingleChoicePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :cond_2
    const-string v0, "radiobutton_restrict_bg"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/SingleChoicePreference;

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->D:Lmiuix/preference/SingleChoicePreference;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->G:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->t:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->D:Lmiuix/preference/SingleChoicePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :cond_3
    const-string v0, "config_description"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/CommentPreference;

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->E:Lmiuix/preference/CommentPreference;

    return-void
.end method

.method private E0()V
    .locals 3

    new-instance v0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$a;

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->t:Ljava/lang/String;

    iget v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->c:I

    invoke-static {v2}, Lx4/z1;->m(I)I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$a;-><init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->w:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$a;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private F0()Z
    .locals 2

    iget v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private G0()Z
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_3

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    aget-object v0, v0, v2

    const-string v1, "com.facemoji.lite.xiaomi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, "com.kikaoem.xiaomi.qisiemoji.inputmethod"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, "com.preff.kb.xm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, "com.miui.android.fashiongallery"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    return v2
.end method

.method private H0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1201c9

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1201c8

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1201c1

    new-instance v2, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$f;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$f;-><init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1201bf

    new-instance v2, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$b;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$b;-><init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private synthetic I0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->y:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->N0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic J0(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "no_bg"

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->y:Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->t:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->M0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->E:Lmiuix/preference/CommentPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private synthetic K0(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->y:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->N0(Ljava/lang/String;)V

    return-void
.end method

.method private L0(Landroid/content/Context;[Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 11

    const-string v0, "miui.securitycenter.utils.SecurityCenterHelper"

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v2, "package"

    const/4 v4, 0x0

    aget-object v5, p2, v4

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.extra.user_handle"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v7, "getUserId"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    aput-object v5, v9, v4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v8, v4

    invoke-static {v2, v5, v7, v9, v8}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/io/Serializable;

    invoke-virtual {v3, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p3, "android.intent.extra.PACKAGES"

    invoke-virtual {v3, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-class p3, Landroid/os/UserHandle;

    const-string v0, "getUserAll"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p2, p3, v0, v6, v1}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    move-object v6, p4

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "PowerDetailActivity"

    const-string p3, "sendQueryPackageIntent exception: "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private M0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->u:Lcom/miui/powerkeeper/IPowerKeeper;

    const-string v1, "PowerDetailActivity"

    if-nez v0, :cond_0

    const-string p1, "setConfig failed for service is unbidden"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "App"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->F:I

    const/16 v2, 0x3e7

    if-ne p1, v2, :cond_1

    invoke-static {}, Lx4/z1;->y()I

    move-result p1

    :cond_1
    const-string v2, "UserId"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "AppConfigure"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->u:Lcom/miui/powerkeeper/IPowerKeeper;

    invoke-interface {p1, v0}, Lcom/miui/powerkeeper/IPowerKeeper;->B7(Landroid/os/Bundle;)I

    move-result p1

    if-nez p1, :cond_2

    sget-boolean p1, Luf/a;->a:Z

    if-eqz p1, :cond_3

    const-string p1, "setConfig success"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p1, "setConfig failed"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setConfig failed e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private N0(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "no_bg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "no_restrict"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "restrict_bg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_0

    :sswitch_3
    const-string v0, "miui_auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->D:Lmiuix/preference/SingleChoicePreference;

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->A:Lmiuix/preference/SingleChoicePreference;

    :goto_1
    invoke-virtual {p1, v2}, Lmiuix/preference/SingleChoicePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->E:Lmiuix/preference/CommentPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->C:Lmiuix/preference/SingleChoicePreference;

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->B:Lmiuix/preference/SingleChoicePreference;

    invoke-virtual {p1, v2}, Lmiuix/preference/SingleChoicePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->E:Lmiuix/preference/CommentPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5db2d0a2 -> :sswitch_3
        -0x5d0c1358 -> :sswitch_2
        -0x288d3886 -> :sswitch_1
        0x641ff83 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private O0()V
    .locals 5

    iget v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->c:I

    invoke-static {v0}, Lme/m;->b(I)I

    move-result v0

    invoke-static {v0}, Lx4/b2;->d(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "package"

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    aget-object v1, v3, v1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.applications.InstalledAppDetailsTop"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "is_xspace_app"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lx4/f1;->R(Landroid/content/Context;Landroid/content/Intent;)Z

    :goto_0
    return-void
.end method

.method private P0()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121af0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121aef

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$c;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$c;-><init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private Q0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->c:I

    invoke-static {v1}, Lx4/z1;->m(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->t:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/appmanager/AppManageUtils;->e0(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->j:Lcom/miui/permcenter/settings/model/TitleOnlyPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->j:Lcom/miui/permcenter/settings/model/TitleOnlyPreference;

    new-instance v1, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$a;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$a;-><init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->j:Lcom/miui/permcenter/settings/model/TitleOnlyPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private R0()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->z0()V

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->F0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->y0()V

    :cond_0
    return-void
.end method

.method public static synthetic c0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->I0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->J0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->K0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic f0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->n:Z

    return p1
.end method

.method static synthetic g0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->f:Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->o:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Lcom/miui/powerkeeper/IPowerKeeper;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->u:Lcom/miui/powerkeeper/IPowerKeeper;

    return-object p0
.end method

.method static synthetic j0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;Lcom/miui/powerkeeper/IPowerKeeper;)Lcom/miui/powerkeeper/IPowerKeeper;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->u:Lcom/miui/powerkeeper/IPowerKeeper;

    return-object p1
.end method

.method static synthetic k0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->C0()V

    return-void
.end method

.method static synthetic l0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->F:I

    return p0
.end method

.method static synthetic m0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Landroidx/preference/PreferenceCategory;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->z:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static synthetic n0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Lmiuix/preference/CommentPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->E:Lmiuix/preference/CommentPreference;

    return-object p0
.end method

.method static synthetic o0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic p0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->N0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic q0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->c:I

    return p0
.end method

.method static synthetic r0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->t:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic s0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Lcom/miui/permcenter/settings/model/TitleOnlyPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->j:Lcom/miui/permcenter/settings/model/TitleOnlyPreference;

    return-object p0
.end method

.method static synthetic t0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->k:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic u0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic v0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;Ljava/lang/Object;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->A0(Ljava/lang/Object;III)V

    return-void
.end method

.method static synthetic w0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->l:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic x0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->m:Landroid/view/MenuItem;

    return-object p0
.end method

.method private y0()V
    .locals 9

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->k:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->c:I

    const/16 v3, 0x2710

    if-ge v1, v3, :cond_1

    goto/16 :goto_3

    :cond_1
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    array-length v1, v1

    const/4 v3, 0x1

    if-ge v0, v1, :cond_3

    :try_start_0
    const-string v1, "miui.securitycenter.utils.SecurityCenterHelper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v5, "packageHasActiveAdmins"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/app/admin/DevicePolicyManager;

    aput-object v8, v7, v2

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->e:Landroid/app/admin/DevicePolicyManager;

    aput-object v8, v6, v2

    iget-object v8, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    aget-object v8, v8, v0

    aput-object v8, v6, v3

    invoke-static {v1, v4, v5, v7, v6}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "PowerDetailActivity"

    const-string v4, "checkForceStop exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->k:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_2
    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x200000

    and-int/2addr v1, v4

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->k:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    aget-object v1, v1, v2

    iget v3, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->c:I

    invoke-static {v3}, Lme/m;->b(I)I

    move-result v3

    invoke-static {v0, v1, v3}, Lx4/t;->N(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " should keep alive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enterprise"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->k:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_6
    return-void

    :cond_7
    :goto_3
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private z0()V
    .locals 7

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->l:Landroid/view/MenuItem;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->k:Landroid/view/MenuItem;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->m:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->c:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    aget-object v1, v1, v3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    const/4 v4, 0x1

    if-eqz v1, :cond_3

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_3

    move v5, v4

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    iget-object v6, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->k:Landroid/view/MenuItem;

    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->F0()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    if-eqz v6, :cond_6

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->m:Landroid/view/MenuItem;

    array-length v6, v6

    if-ne v6, v4, :cond_4

    move v6, v4

    goto :goto_3

    :cond_4
    move v6, v3

    :goto_3
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->G0()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->l:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->l:Landroid/view/MenuItem;

    xor-int/2addr v5, v4

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Lo9/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo9/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->l:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->m:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->l:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_7
    :goto_4
    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->F0()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "activity"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v5, :cond_9

    aget-object v5, v5, v3

    goto :goto_5

    :cond_9
    move-object v5, v2

    :goto_5
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->k:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_a
    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    aget-object v1, v1, v3

    iget v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->c:I

    invoke-static {v2}, Lme/m;->b(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lx4/t;->N(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "Package "

    const-string v2, "Enterprise"

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " should keep alive"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->k:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget v5, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->c:I

    invoke-static {v5}, Lme/m;->b(I)I

    move-result v5

    invoke-static {v0, v4, v5}, Lx4/t;->K(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is protected from delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->l:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_c
    :goto_6
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f150050

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->e:Landroid/app/admin/DevicePolicyManager;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->o:Landroid/os/Handler;

    const-string p1, "preference_key_power_usage_details_title"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->f:Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;

    const-string p1, "category_key_power_usage_details"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->i:Landroidx/preference/PreferenceCategory;

    const-string p1, "category_key_power_usage_packages"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->g:Landroidx/preference/PreferenceCategory;

    const-string p1, "category_key_power_abnormal_analysis"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->h:Landroidx/preference/PreferenceCategory;

    const-string p1, "key_power_abnormal_autostart_title"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/settings/model/TitleOnlyPreference;

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->j:Lcom/miui/permcenter/settings/model/TitleOnlyPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "PowerDetailActivity"

    const-string v0, "getActivity is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "iconPackage"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->t:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "package_name"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->t:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->t:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->t:Ljava/lang/String;

    :cond_2
    const/4 v0, 0x6

    const-string v1, "drainType"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->b:I

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->f:Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->B0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "uid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->c:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v2, "UserId"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->F:I

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->f:Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->t:Ljava/lang/String;

    invoke-static {v0, v3}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v2, v0}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "percent"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    cmpl-float v2, v0, v2

    const-string v3, "%.2f"

    const/4 v4, 0x1

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->E0()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->f:Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->e(I)V

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->f:Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;

    const v5, 0x7f1210d9

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v8, v1

    invoke-static {v7, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-virtual {p0, v5, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->d(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v0, "showMenus"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->p:Z

    const-string v0, "iconId"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$e;

    iget-object v5, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->t:Ljava/lang/String;

    iget v6, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->c:I

    invoke-direct {v2, p0, v5, v0, v6}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$e;-><init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;Ljava/lang/String;II)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v0, v5}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v0, "abnormalType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->r:Ljava/lang/String;

    const-string v0, "value"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v0, v5, v6}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v7

    iput-wide v7, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->s:D

    const-string v0, "types"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    const-string v2, "values"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object p1

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    move v2, v1

    :goto_1
    array-length v7, v0

    if-ge v2, v7, :cond_6

    aget-wide v7, p1, v2

    cmpg-double v7, v7, v5

    if-gtz v7, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    aget v8, v0, v2

    invoke-static {v7, v8}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    aget v8, v0, v2

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    aget-wide v10, p1, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v1

    const-string v10, "%d%%"

    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    aget-wide v9, p1, v2

    invoke-static {v8, v9, v10}, Lme/b0;->d(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    aget-wide v9, p1, v2

    invoke-static {v8, v9, v10}, Lme/b0;->f(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v8

    :goto_3
    new-instance v9, Lmiuix/preference/TextPreference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/f;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/preference/f;->b()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v8}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->i:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v7, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->i:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->i:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->i:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_7
    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->r:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/f;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/powercenter/abnormalscan/a;->c(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->t:Ljava/lang/String;

    invoke-static {p1, v2}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_8
    const-string p1, ""

    :goto_5
    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->q:Ljava/lang/String;

    new-instance p1, Lmiuix/preference/TextPreference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/f;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/f;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f121237

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    iget-wide v9, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->s:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v7, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-virtual {v2, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->r:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->h:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    invoke-static {}, Lhd/a;->q()V

    goto :goto_6

    :cond_9
    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->h:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->h:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->j:Lcom/miui/permcenter/settings/model/TitleOnlyPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_6
    iget p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->c:I

    if-lt p1, v4, :cond_a

    const/16 v2, 0x3e8

    if-eq p1, v2, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->c:I

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    if-eqz v2, :cond_a

    array-length v2, v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_a

    move v2, v1

    :goto_7
    iget-object v3, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    array-length v5, v3

    if-ge v2, v5, :cond_a

    :try_start_0
    aget-object v3, v3, v2

    invoke-virtual {p1, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v5, Lmiuix/preference/TextPreference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/f;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/preference/f;->b()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->g:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->g:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->g:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->g:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->d:[Ljava/lang/String;

    iget v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->c:I

    new-instance v2, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$c;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$c;-><init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->L0(Landroid/content/Context;[Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->D0()V

    new-instance p1, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$d;

    invoke-direct {p1, p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$d;-><init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)V

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->x:Landroid/content/ServiceConnection;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.miui.powerkeeper"

    const-string v1, "com.miui.powerkeeper.PowerKeeperBackgroundService"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->x:Landroid/content/ServiceConnection;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-static {v0, p1, v1, v4, v2}, Lx4/v;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x7f121b12
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-boolean v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->p:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lpg/i;->k()I

    move-result v0

    const/16 v1, 0xa

    const v2, 0x7f0b05b2

    const v3, 0x7f0b05d0

    const v4, 0x7f0b05b4

    if-lt v0, v1, :cond_0

    const v0, 0x7f0f000e

    goto :goto_0

    :cond_0
    const v0, 0x7f0f000d

    :goto_0
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->k:Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->l:Landroid/view/MenuItem;

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->m:Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->u:Lcom/miui/powerkeeper/IPowerKeeper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->x:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->x:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->v:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$b;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->w:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$a;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b05b2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x7f0b05b4

    if-eq v0, v1, :cond_1

    const v1, 0x7f0b05d0

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->P0()V

    return v2

    :cond_1
    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->H0()V

    return v2

    :cond_2
    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->O0()V

    return v2
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "radiobutton_no_restrict"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "radiobutton_restrict_bg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "radiobutton_restrict_running"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_0

    :sswitch_3
    const-string v0, "radiobutton_miui_auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string p1, "no_restrict"

    :goto_1
    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->t:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->M0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->E:Lmiuix/preference/CommentPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    :pswitch_1
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120559

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x1040009

    new-instance v2, Lcom/miui/powercenter/legacypowerrank/b;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/legacypowerrank/b;-><init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)V

    invoke-virtual {p1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    new-instance v2, Lcom/miui/powercenter/legacypowerrank/c;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/legacypowerrank/c;-><init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)V

    invoke-virtual {p1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/powercenter/legacypowerrank/d;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/legacypowerrank/d;-><init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    goto :goto_2

    :pswitch_2
    const-string p1, "restrict_bg"

    goto :goto_1

    :pswitch_3
    const-string p1, "miui_auto"

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->t:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->M0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->E:Lmiuix/preference/CommentPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_2
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3eaec774 -> :sswitch_3
        -0x36a31db2 -> :sswitch_2
        0x111a6256 -> :sswitch_1
        0x45993d28 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->R0()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->R0()V

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->Q0()V

    return-void
.end method
