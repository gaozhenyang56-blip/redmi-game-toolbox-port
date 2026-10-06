.class public Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;
.super Lcom/miui/common/base/ui/MiuiXPreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/ui/activity/BackSoundActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackSoundFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$MyResultReceiver;
    }
.end annotation


# static fields
.field private static final m:Landroid/net/Uri;

.field private static final n:Landroid/net/Uri;


# instance fields
.field private final b:[Ljava/lang/String;

.field private c:Lmiuix/preference/SingleChoicePreferenceCategory;

.field private d:Lmiuix/appcompat/app/AppCompatActivity;

.field private e:Lmiuix/preference/TextPreference;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lmiuix/appcompat/app/ProgressDialog;

.field private i:I

.field private j:Lmiuix/preference/SingleChoicePreference;

.field private k:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$MyResultReceiver;

.field private l:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "tel:*74"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->m:Landroid/net/Uri;

    const-string v0, "tel:*740"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->n:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->b:[Ljava/lang/String;

    new-instance v0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$a;-><init>(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->l:Landroid/os/Handler;

    return-void
.end method

.method public static A0()Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;
    .locals 1

    new-instance v0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-direct {v0}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;-><init>()V

    return-object v0
.end method

.method private B0(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->d:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "backsound_mode"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object p1, Lmiui/provider/ExtraTelephony$AntiSpamSim;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private C0()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->d:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1200f1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1200f0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$d;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$d;-><init>(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)V

    const v2, 0x7f1219b0

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private D0(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->d:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const p2, 0x7f120374

    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;

    invoke-direct {v0, p0, p1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;-><init>(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;I)V

    const p1, 0x104000a

    invoke-virtual {p2, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/miui/antispam/ui/activity/c;

    invoke-direct {p2, p0}, Lcom/miui/antispam/ui/activity/c;-><init>(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)V

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private E0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->h:Lmiuix/appcompat/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->d:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->h:Lmiuix/appcompat/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->h:Lmiuix/appcompat/app/ProgressDialog;

    const v1, 0x7f121623

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->h:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->z0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic d0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)Lmiuix/appcompat/app/AppCompatActivity;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->d:Lmiuix/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->b:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->i:I

    return p0
.end method

.method static synthetic g0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->i:I

    return p1
.end method

.method static synthetic h0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)I
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->y0()I

    move-result p0

    return p0
.end method

.method static synthetic i0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->C0()V

    return-void
.end method

.method static synthetic j0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;Lmiuix/preference/SingleChoicePreference;)Lmiuix/preference/SingleChoicePreference;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->j:Lmiuix/preference/SingleChoicePreference;

    return-object p1
.end method

.method static synthetic k0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->D0(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic l0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->m:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic m0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->n:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic n0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)Lmiuix/preference/SingleChoicePreferenceCategory;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->c:Lmiuix/preference/SingleChoicePreferenceCategory;

    return-object p0
.end method

.method static synthetic o0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->w0()V

    return-void
.end method

.method static synthetic p0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->E0()V

    return-void
.end method

.method static synthetic q0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->v0()V

    return-void
.end method

.method static synthetic r0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->B0(I)V

    return-void
.end method

.method static synthetic s0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->g:I

    return p0
.end method

.method static synthetic t0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$MyResultReceiver;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->k:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$MyResultReceiver;

    return-object p0
.end method

.method static synthetic u0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->l:Landroid/os/Handler;

    return-object p0
.end method

.method private v0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->h:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->h:Lmiuix/appcompat/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method private w0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->c:Lmiuix/preference/SingleChoicePreferenceCategory;

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->y0()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/SingleChoicePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/preference/SingleChoicePreference;->setChecked(Z)V

    return-void
.end method

.method private y0()I
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->d:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$AntiSpamSim;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim_id = \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->f:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "backsound_mode"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method private synthetic z0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->w0()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f15001a

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->d:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "sim_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->f:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->d:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "sim_slot"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->g:I

    const-string p1, "key_open_call_wait"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->e:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string p1, "key_st_antispam_backsound_mode_defined"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/SingleChoicePreferenceCategory;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->c:Lmiuix/preference/SingleChoicePreferenceCategory;

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->x0()V

    new-instance p1, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$MyResultReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$MyResultReceiver;-><init>(Landroid/os/Handler;Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)V

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->k:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$MyResultReceiver;

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->e:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->f:Ljava/lang/String;

    const-string v0, "46003"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030058

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->d:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$e;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$e;-><init>(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)V

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120c9d

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget v0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.settings.GsmUmtsCallWaitingSetting"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public x0()V
    .locals 3

    new-instance v0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$c;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$c;-><init>(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)V

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->c:Lmiuix/preference/SingleChoicePreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->c:Lmiuix/preference/SingleChoicePreferenceCategory;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->b:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->y0()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lmiuix/preference/SingleChoicePreferenceCategory;->x(Ljava/lang/String;)V

    return-void
.end method
