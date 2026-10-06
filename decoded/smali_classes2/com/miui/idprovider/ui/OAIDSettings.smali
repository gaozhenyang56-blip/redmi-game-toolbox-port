.class public final Lcom/miui/idprovider/ui/OAIDSettings;
.super Lcom/miui/common/base/ui/MiuiXPreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# instance fields
.field private b:Landroidx/preference/Preference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Landroidx/preference/Preference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;-><init>()V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/idprovider/ui/OAIDSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/idprovider/ui/OAIDSettings;->d0(Lcom/miui/idprovider/ui/OAIDSettings;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final d0(Lcom/miui/idprovider/ui/OAIDSettings;Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "content://com.miui.idprovider/oaid"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/idprovider/ui/OAIDSettings;->e0()V

    sget-object p0, Lmb/b;->a:Lmb/b;

    const-string p1, "1127.37.0.1.35767"

    invoke-virtual {p0, p1}, Lmb/b;->m(Ljava/lang/String;)V

    return-void
.end method

.method private final e0()V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ly4/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/idprovider/ui/OAIDSettings;->c:Landroidx/preference/Preference;

    const/4 v3, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setSelectable(Z)V

    :goto_0
    iget-object v1, p0, Lcom/miui/idprovider/ui/OAIDSettings;->c:Landroidx/preference/Preference;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lbk/m;->b(Ljava/lang/Object;)V

    const v5, 0x7f12065b

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/miui/idprovider/ui/OAIDSettings;->c:Landroidx/preference/Preference;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    :goto_1
    iget-object v0, p0, Lcom/miui/idprovider/ui/OAIDSettings;->c:Landroidx/preference/Preference;

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type miuix.appcompat.app.AppCompatActivity"

    invoke-static {p1, v0}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    const p1, 0x7f15003f

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    const-string p1, "restore_oaid"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/idprovider/ui/OAIDSettings;->b:Landroidx/preference/Preference;

    const-string p1, "oaid_string"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/idprovider/ui/OAIDSettings;->c:Landroidx/preference/Preference;

    iget-object p1, p0, Lcom/miui/idprovider/ui/OAIDSettings;->b:Landroidx/preference/Preference;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :goto_0
    invoke-direct {p0}, Lcom/miui/idprovider/ui/OAIDSettings;->e0()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2
    .param p1    # Landroidx/preference/Preference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "preference"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    const v1, 0x7f130023

    invoke-direct {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f120659

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12065a

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setHapticFeedbackEnabled(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lt9/j;

    invoke-direct {v0, p0}, Lt9/j;-><init>(Lcom/miui/idprovider/ui/OAIDSettings;)V

    const v1, 0x7f120f48

    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120499

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    const/4 p1, 0x0

    return p1
.end method
