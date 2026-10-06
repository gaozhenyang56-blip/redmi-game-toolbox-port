.class public final Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EarthquakeWarningInfoFragment"
.end annotation


# instance fields
.field private revokeEq:Landroidx/preference/Preference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private revokeEqm:Landroidx/preference/Preference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method public static synthetic a0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->onCreatePreferences$lambda$4(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getRevokeEq$p(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->revokeEq:Landroidx/preference/Preference;

    return-object p0
.end method

.method public static final synthetic access$getRevokeEqm$p(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->revokeEqm:Landroidx/preference/Preference;

    return-object p0
.end method

.method public static final synthetic access$revoke(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Ljava/lang/String;Ltj/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->revoke(Ljava/lang/String;Ltj/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->onCreatePreferences$lambda$3$lambda$2(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private final buildUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.miui.common.base.BaseActivity"

    invoke-static {v0, v1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/common/base/BaseActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?lang="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "&region="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&dark="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic c0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->onCreatePreferences$lambda$9$lambda$8(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->onCreatePreferences$lambda$1$lambda$0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->onCreatePreferences$lambda$5(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->revokePrivacy$lambda$10(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic g0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->onCreatePreferences$lambda$7$lambda$6(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h0(Lbk/y;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->showRevokeDialog$lambda$12(Lbk/y;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic i0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->showRevokeDialog$lambda$11(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final onCreatePreferences$lambda$1$lambda$0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Landroidx/preference/Preference;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "https://embed.sec.miui.com/earthquake-early-warning"

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->startWebPage(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final onCreatePreferences$lambda$3$lambda$2(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Landroidx/preference/Preference;)Z
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final onCreatePreferences$lambda$4(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Landroidx/preference/Preference;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/miui/earthquakewarning/Constants;->URL_EARTHQUAKE_WARNING_PRIVACY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->startWebPage(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final onCreatePreferences$lambda$5(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Landroidx/preference/Preference;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "https://embed.sec.miui.com/earthquake-early-warning/dsclaimer"

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->startWebPage(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final onCreatePreferences$lambda$7$lambda$6(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Landroidx/preference/Preference;)Z
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "requireActivity()"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120748

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.string.ew_app_name)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "earthquake"

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->revokePrivacy(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final onCreatePreferences$lambda$9$lambda$8(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Landroidx/preference/Preference;)Z
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "requireActivity()"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1207cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.string.ew_monitor_title)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "earthquake_monitor"

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->revokePrivacy(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private final revoke(Ljava/lang/String;Ltj/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltj/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Llk/w0;->b()Llk/d0;

    move-result-object v0

    new-instance v1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$revoke$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$revoke$2;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Ljava/lang/String;Ltj/d;)V

    invoke-static {v0, v1, p2}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final revokePrivacy(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f120ea7

    invoke-virtual {p2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f120ea6

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f120ea4

    new-instance p3, Lcom/miui/earthquakewarning/ui/y;

    invoke-direct {p3}, Lcom/miui/earthquakewarning/ui/y;-><init>()V

    invoke-virtual {p1, p2, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->showRevokeDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final revokePrivacy$lambda$10(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private final showRevokeDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    new-instance v0, Lbk/y;

    invoke-direct {v0}, Lbk/y;-><init>()V

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1214b8

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const/4 v4, 0x2

    aput-object p2, v2, v4

    const p2, 0x7f1214b3

    invoke-virtual {p0, p2, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v1, 0x7f1214b4

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v1, Lcom/miui/earthquakewarning/ui/w;

    invoke-direct {v1, p0, p3, p1}, Lcom/miui/earthquakewarning/ui/w;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    const p1, 0x7f1214b5

    invoke-virtual {p2, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/miui/earthquakewarning/ui/x;

    invoke-direct {p2, v0}, Lcom/miui/earthquakewarning/ui/x;-><init>(Lbk/y;)V

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object p2

    const-string p3, "viewLifecycleOwner"

    invoke-static {p2, p3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object v3

    new-instance v6, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$1;

    invoke-direct {v6, p0, p1, v2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$1;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Landroid/widget/Button;Ltj/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    move-result-object p1

    iput-object p1, v0, Lbk/y;->a:Ljava/lang/Object;

    return-void
.end method

.method private static final showRevokeDialog$lambda$11(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Landroid/content/DialogInterface;I)V
    .locals 6

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$policyName"

    invoke-static {p1, p4}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$context"

    invoke-static {p2, p4}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object p3

    const-string p4, "viewLifecycleOwner"

    invoke-static {p3, p4}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v3, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;

    const/4 p3, 0x0

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment$showRevokeDialog$mRevokeDialog$1$1;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Ltj/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method private static final showRevokeDialog$lambda$12(Lbk/y;Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "$job"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lbk/y;->a:Ljava/lang/Object;

    check-cast p0, Llk/s1;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Llk/s1$a;->a(Llk/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final startWebPage(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

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
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const p1, 0x7f15002a

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "container_warning_desc"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-boolean p2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    new-instance p2, Lcom/miui/earthquakewarning/ui/q;

    invoke-direct {p2, p0}, Lcom/miui/earthquakewarning/ui/q;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :cond_0
    const-string p1, "settings"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Lcom/miui/earthquakewarning/ui/r;

    invoke-direct {v0, p0}, Lcom/miui/earthquakewarning/ui/r;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :cond_1
    const-string p2, "history"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    const-string p2, "container_warning_privacy"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/miui/earthquakewarning/ui/s;

    invoke-direct {v0, p0}, Lcom/miui/earthquakewarning/ui/s;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :goto_1
    const-string p2, "container_warning_agreement"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/miui/earthquakewarning/ui/t;

    invoke-direct {v0, p0}, Lcom/miui/earthquakewarning/ui/t;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :goto_2
    const-string p2, "earthquake_warning_revoke"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEarthquakeWarningOpen()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    new-instance v1, Lcom/miui/earthquakewarning/ui/u;

    invoke-direct {v1, p0}, Lcom/miui/earthquakewarning/ui/u;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;)V

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    goto :goto_3

    :cond_5
    move-object p2, v0

    :goto_3
    iput-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->revokeEq:Landroidx/preference/Preference;

    const-string p2, "earthquake_monitor_revoke"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEarthquakeMonitorOpen()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    new-instance v0, Lcom/miui/earthquakewarning/ui/v;

    invoke-direct {v0, p0}, Lcom/miui/earthquakewarning/ui/v;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    move-object v0, p2

    :cond_6
    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->revokeEqm:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEarthquakeWarningOpen()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_4
    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEarthquakeWarningOpen()Z

    move-result p1

    if-nez p1, :cond_9

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_9

    const-string p1, "category_settings"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_9
    :goto_5
    return-void
.end method
