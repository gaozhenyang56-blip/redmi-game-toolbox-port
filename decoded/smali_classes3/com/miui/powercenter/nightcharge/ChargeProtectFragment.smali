.class public Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;
.super Lcom/miui/common/base/ui/MiuiXPreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/nightcharge/ChargeProtectFragment$d;,
        Lcom/miui/powercenter/nightcharge/ChargeProtectFragment$c;
    }
.end annotation


# static fields
.field private static q:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static r:I


# instance fields
.field private b:[I

.field private c:Lmiuix/preference/PreferenceCategory;

.field private d:Lmiuix/preference/TextPreference;

.field private e:Lmiuix/preference/TextPreference;

.field private f:Lmiuix/preference/TextPreference;

.field private g:Lmiuix/preference/TextPreference;

.field private h:Lmiuix/preference/TextPreference;

.field private i:Lmiuix/preference/TextPreference;

.field private j:Lcom/miui/powercenter/nightcharge/ChargeProtectFragment$d;

.field private k:Landroidx/preference/CheckBoxPreference;

.field private l:Landroidx/preference/CheckBoxPreference;

.field private m:Lcom/miui/powercenter/nightcharge/widget/PowerTextButtonPreference;

.field private n:Lmiuix/preference/PreferenceCategory;

.field private o:Z

.field private p:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->b:[I

    new-instance v0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment$d;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment$d;-><init>(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)V

    iput-object v0, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->j:Lcom/miui/powercenter/nightcharge/ChargeProtectFragment$d;

    new-instance v0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment$a;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment$a;-><init>(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->p:Landroid/database/ContentObserver;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f1203aa
        0x7f1203a9
        0x7f1203a8
        0x7f1203a7
    .end array-data
.end method

.method private static A0(I)Z
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0x64

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private B0()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->t0()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOnceOnProtect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lmd/o$c;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartChargeFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->n:Lmiuix/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->m:Lcom/miui/powercenter/nightcharge/widget/PowerTextButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->n:Lmiuix/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->m:Lcom/miui/powercenter/nightcharge/widget/PowerTextButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->m:Lcom/miui/powercenter/nightcharge/widget/PowerTextButtonPreference;

    const v2, 0x7f1210c4

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->m:Lcom/miui/powercenter/nightcharge/widget/PowerTextButtonPreference;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/powercenter/nightcharge/widget/PowerTextButtonPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->n:Lmiuix/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->m:Lcom/miui/powercenter/nightcharge/widget/PowerTextButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->m:Lcom/miui/powercenter/nightcharge/widget/PowerTextButtonPreference;

    const v1, 0x7f1210c5

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->m:Lcom/miui/powercenter/nightcharge/widget/PowerTextButtonPreference;

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic c0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->B0()V

    return-void
.end method

.method static synthetic d0(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->u0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->f:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->g:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic g0(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->r0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic h0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->h:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->i:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic j0()Z
    .locals 1

    invoke-static {}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->y0()Z

    move-result v0

    return v0
.end method

.method static synthetic k0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->e:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic l0(I)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->A0(I)Z

    move-result p0

    return p0
.end method

.method static synthetic m0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->d:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic n0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)[I
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->b:[I

    return-object p0
.end method

.method static synthetic o0()I
    .locals 1

    sget v0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->r:I

    return v0
.end method

.method static synthetic p0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->z0()V

    return-void
.end method

.method static synthetic q0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)Lmiuix/preference/PreferenceCategory;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->c:Lmiuix/preference/PreferenceCategory;

    return-object p0
.end method

.method private static r0(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->q:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lme/b;->D(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static s0(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.COMMON_WEB_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "title"

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "menu_enable"

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p0, 0x4000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const p0, 0x8000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private t0()I
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.miui.powercenter.provider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "getThisTimeNoProtect"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "once_no_protect"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOnceOnProtect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SmartChargeFragment"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static u0(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lme/w;->B(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lme/w;->l(Landroid/content/Context;)I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    sub-int v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    const v0, 0x7f121286

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v1, 0x1f

    if-gt v0, v1, :cond_3

    const v0, 0x7f121287

    goto :goto_0

    :cond_3
    const/16 v1, 0x2b

    if-gt v0, v1, :cond_4

    const v0, 0x7f121288

    goto :goto_0

    :cond_4
    const/16 v1, 0x2e

    if-gt v0, v1, :cond_5

    const v0, 0x7f121285

    goto :goto_0

    :cond_5
    const v0, 0x7f121284

    goto :goto_0
.end method

.method private v0()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->q:Ljava/util/HashSet;

    const-string v1, "99999999"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->q:Ljava/util/HashSet;

    const-string v1, "00000000"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private w0()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.miui.securitycenter.remoteprovider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "key_pc_this_time_no_protect"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->p:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private static x0()Z
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lme/b;->v()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->r:I

    if-nez v0, :cond_1

    invoke-static {}, Lme/b;->o()I

    move-result v0

    sput v0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->r:I

    :cond_1
    sget v0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->r:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static y0()Z
    .locals 1

    invoke-static {}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->x0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lme/b;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private z0()V
    .locals 5

    invoke-static {}, Lgd/c;->n()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12121f

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f130455

    invoke-direct {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f120fec

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1212e2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment$b;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment$b;-><init>(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    invoke-static {}, Lgd/c;->n()I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {v0}, Lgd/c;->e1(I)V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    const p1, 0x7f15001d

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "preference_key_category_battery_info"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->c:Lmiuix/preference/PreferenceCategory;

    const-string p1, "reference_battery_health"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->d:Lmiuix/preference/TextPreference;

    const-string p1, "reference_current_temp"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->e:Lmiuix/preference/TextPreference;

    const-string p1, "reference_toady_charge_time"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->f:Lmiuix/preference/TextPreference;

    const-string p1, "reference_cycle_count"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->g:Lmiuix/preference/TextPreference;

    const-string p1, "reference_production_date"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->h:Lmiuix/preference/TextPreference;

    const-string p1, "reference_first_use_date"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->i:Lmiuix/preference/TextPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lme/w;->b0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->d:Lmiuix/preference/TextPreference;

    sget-object p2, Lp4/g;->b:Ljava/lang/String;

    invoke-static {p2}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->s0(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->e:Lmiuix/preference/TextPreference;

    sget-object p2, Lp4/g;->c:Ljava/lang/String;

    invoke-static {p2}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->s0(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->f:Lmiuix/preference/TextPreference;

    sget-object p2, Lp4/g;->d:Ljava/lang/String;

    invoke-static {p2}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->s0(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    invoke-static {}, Lce/g;->E()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->c:Lmiuix/preference/PreferenceCategory;

    iget-object p2, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->e:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->c:Lmiuix/preference/PreferenceCategory;

    iget-object p2, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->f:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-direct {p0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->v0()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->c:Lmiuix/preference/PreferenceCategory;

    iget-object p2, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->g:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->c:Lmiuix/preference/PreferenceCategory;

    iget-object p2, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->h:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->c:Lmiuix/preference/PreferenceCategory;

    iget-object p2, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->i:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmd/c;->u(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->o:Z

    const-string p1, "category_features_battery_protect"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->n:Lmiuix/preference/PreferenceCategory;

    const-string p2, "cb_always_charge_protect"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->k:Landroidx/preference/CheckBoxPreference;

    iget-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->n:Lmiuix/preference/PreferenceCategory;

    const-string p2, "cb_intellect_charge_protect"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->l:Landroidx/preference/CheckBoxPreference;

    iget-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->n:Lmiuix/preference/PreferenceCategory;

    const-string p2, "key_once_no_protect"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/nightcharge/widget/PowerTextButtonPreference;

    iput-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->m:Lcom/miui/powercenter/nightcharge/widget/PowerTextButtonPreference;

    new-instance p2, Lzd/a;

    invoke-direct {p2, p0}, Lzd/a;-><init>(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmd/c;->h(Landroid/content/Context;)Z

    move-result p1

    invoke-static {}, Lmd/c;->k()Z

    move-result p2

    const-wide v0, 0x3fe99999a0000000L    # 0.800000011920929

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->k:Landroidx/preference/CheckBoxPreference;

    const v4, 0x7f121054

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->k:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-boolean p2, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->o:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->l:Landroidx/preference/CheckBoxPreference;

    xor-int/2addr p1, v3

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    iget-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->k:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->n:Lmiuix/preference/PreferenceCategory;

    iget-object p2, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->k:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    iget-boolean p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->o:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->l:Landroidx/preference/CheckBoxPreference;

    const p2, 0x7f1210ad

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {p0, p2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {}, Lgd/c;->T()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmd/c;->j(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    move v2, v3

    :cond_4
    iget-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->l:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->l:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->n:Lmiuix/preference/PreferenceCategory;

    iget-object p2, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->l:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_2
    iget-boolean p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->o:Z

    if-nez p1, :cond_6

    invoke-static {}, Lmd/c;->k()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->n:Lmiuix/preference/PreferenceCategory;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6
    new-instance p1, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment$c;

    iget-object p2, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->j:Lcom/miui/powercenter/nightcharge/ChargeProtectFragment$d;

    invoke-direct {p1, p2}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment$c;-><init>(Landroid/os/Handler;)V

    invoke-static {p1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->w0()V

    invoke-direct {p0}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->B0()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->p:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->p:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cb_always_charge_protect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SmartChargeProtectManager"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lmd/c;->s(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lgd/c;->T()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lmd/c;->s(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lmd/c;->s(Landroid/content/Context;I)V

    :goto_0
    iget-boolean p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->o:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->l:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UI_PROTECT_ALWAYS:"

    goto :goto_2

    :cond_3
    const-string v0, "cb_intellect_charge_protect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lmd/c;->s(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lmd/c;->s(Landroid/content/Context;I)V

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lgd/c;->N1(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UI_PROTECT_INTELLECT:"

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v3
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_once_no_protect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lme/f;->k(Landroid/content/Context;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
