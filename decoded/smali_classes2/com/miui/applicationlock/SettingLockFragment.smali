.class public Lcom/miui/applicationlock/SettingLockFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;
.implements Lcom/miui/applicationlock/SettingLockActivity$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/applicationlock/SettingLockFragment$p;,
        Lcom/miui/applicationlock/SettingLockFragment$n;,
        Lcom/miui/applicationlock/SettingLockFragment$o;,
        Lcom/miui/applicationlock/SettingLockFragment$m;
    }
.end annotation


# instance fields
.field private A:Lmiuix/appcompat/app/AlertDialog;

.field private B:Lmiuix/appcompat/app/AlertDialog;

.field private C:Landroid/widget/TextView;

.field private D:Z

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:[Ljava/lang/String;

.field private I:Landroid/content/Context;

.field public J:Z

.field private K:Z

.field private L:Z

.field private final M:Lc3/l;

.field private N:Landroid/content/DialogInterface$OnDismissListener;

.field private O:Landroid/content/DialogInterface$OnClickListener;

.field private P:Landroid/content/DialogInterface$OnClickListener;

.field private Q:Landroid/content/DialogInterface$OnClickListener;

.field private R:Lmiuix/appcompat/app/AlertDialog;

.field private a:Landroidx/preference/CheckBoxPreference;

.field private b:Landroidx/preference/CheckBoxPreference;

.field private c:Landroidx/preference/CheckBoxPreference;

.field private d:Landroidx/preference/Preference;

.field private e:Lmiuix/appcompat/app/AlertDialog;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Lc3/n;

.field private i:I

.field public j:Z

.field private k:Landroidx/preference/CheckBoxPreference;

.field private l:Lc3/d;

.field private m:Lmiuix/preference/TextPreference;

.field private n:Landroidx/preference/CheckBoxPreference;

.field private o:Landroidx/preference/CheckBoxPreference;

.field private p:Lmiuix/preference/DropDownPreference;

.field private q:Lmiuix/preference/TextPreference;

.field private r:Landroidx/preference/PreferenceCategory;

.field private s:Landroidx/preference/PreferenceCategory;

.field private t:Landroidx/preference/PreferenceCategory;

.field private u:Z

.field private v:Lmiui/security/SecurityManager;

.field private w:Lc3/m;

.field private x:Lmiuix/appcompat/app/AlertDialog;

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->i:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->j:Z

    iput-boolean v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->D:Z

    iput-boolean v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->L:Z

    new-instance v0, Lcom/miui/applicationlock/SettingLockFragment$o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/applicationlock/SettingLockFragment$o;-><init>(Lcom/miui/applicationlock/SettingLockFragment;Lcom/miui/applicationlock/SettingLockFragment$d;)V

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->M:Lc3/l;

    new-instance v0, Lcom/miui/applicationlock/SettingLockFragment$d;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/SettingLockFragment$d;-><init>(Lcom/miui/applicationlock/SettingLockFragment;)V

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->N:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v0, Lcom/miui/applicationlock/SettingLockFragment$e;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/SettingLockFragment$e;-><init>(Lcom/miui/applicationlock/SettingLockFragment;)V

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->O:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/applicationlock/SettingLockFragment$f;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/SettingLockFragment$f;-><init>(Lcom/miui/applicationlock/SettingLockFragment;)V

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->P:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/applicationlock/SettingLockFragment$g;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/SettingLockFragment$g;-><init>(Lcom/miui/applicationlock/SettingLockFragment;)V

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->Q:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic A0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/SettingLockFragment;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic B0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/SettingLockFragment;->C:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic C0(Lcom/miui/applicationlock/SettingLockFragment;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/SettingLockFragment;->B:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic D0(Lcom/miui/applicationlock/SettingLockFragment;)Lc3/d;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    return-object p0
.end method

.method private H0()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12027e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12027d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120ccc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120cc2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/applicationlock/SettingLockFragment$b;

    invoke-direct {v2, p0}, Lcom/miui/applicationlock/SettingLockFragment$b;-><init>(Lcom/miui/applicationlock/SettingLockFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private J0(Landroidx/fragment/app/FragmentActivity;)V
    .locals 4

    new-instance v0, Lc3/u;

    new-instance v1, Lz2/i0;

    invoke-direct {v1, p0}, Lz2/i0;-><init>(Lcom/miui/applicationlock/SettingLockFragment;)V

    invoke-direct {v0, p1, v1}, Lc3/u;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Runnable;)V

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->B:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0234

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0278

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->C:Landroid/widget/TextView;

    const v3, 0x7f120853

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->B:Lmiuix/appcompat/app/AlertDialog;

    const v3, 0x7f120281

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/e;->setTitle(I)V

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->B:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v2, v1}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->B:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f120499

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->P:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x2

    invoke-virtual {v1, v3, p1, v2}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->B:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-virtual {v0}, Lc3/u;->g()V

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->B:Lmiuix/appcompat/app/AlertDialog;

    new-instance v1, Lz2/j0;

    invoke-direct {v1, p0, v0}, Lz2/j0;-><init>(Lcom/miui/applicationlock/SettingLockFragment;Lc3/u;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private K0()V
    .locals 4

    new-instance v0, Lcom/miui/applicationlock/widget/f;

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->h:Lc3/n;

    const v3, 0x7f1301b0

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/applicationlock/widget/f;-><init>(Landroid/content/Context;ILc3/n;)V

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->e:Lmiuix/appcompat/app/AlertDialog;

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    const v1, 0x7f01003d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0094

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0279

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->e:Lmiuix/appcompat/app/AlertDialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog;->setEnableImmersive(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->e:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->e:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/e;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0b01ff

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/miui/applicationlock/SettingLockFragment$c;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/SettingLockFragment$c;-><init>(Lcom/miui/applicationlock/SettingLockFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private L0(I)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/miui/applicationlock/SettingLockFragment;->H:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private M0(Landroid/app/Activity;)V
    .locals 4

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0234

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120281

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120498

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/applicationlock/SettingLockFragment;->Q:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12084c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/applicationlock/SettingLockFragment$h;

    invoke-direct {v3, p0, p1}, Lcom/miui/applicationlock/SettingLockFragment$h;-><init>(Lcom/miui/applicationlock/SettingLockFragment;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->A:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private N0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/m;->o(Landroid/content/Context;)Lc3/m;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->w:Lc3/m;

    new-instance v0, Lcom/miui/applicationlock/SettingLockFragment$n;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/SettingLockFragment$n;-><init>(Lcom/miui/applicationlock/SettingLockFragment;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private O0()V
    .locals 3

    new-instance v0, Lcom/miui/applicationlock/SettingLockFragment$p;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/SettingLockFragment$p;-><init>(Lcom/miui/applicationlock/SettingLockFragment;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private synthetic P0()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockFragment;->W0()V

    return-void
.end method

.method private synthetic Q0(Lc3/u;Landroid/content/DialogInterface;)V
    .locals 0

    new-instance p2, Lz2/k0;

    invoke-direct {p2, p0}, Lz2/k0;-><init>(Lcom/miui/applicationlock/SettingLockFragment;)V

    invoke-virtual {p1, p2}, Lc3/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic R0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->w:Lc3/m;

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->M:Lc3/l;

    invoke-virtual {v0, v1}, Lc3/m;->D(Lc3/l;)V

    return-void
.end method

.method private synthetic S0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->w:Lc3/m;

    invoke-virtual {v0}, Lc3/m;->E()V

    return-void
.end method

.method private T0()V
    .locals 9

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->h()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0e00fe

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b0a51

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    new-instance v5, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    const v7, 0x7f0e02b6

    iget-object v8, p0, Lcom/miui/applicationlock/SettingLockFragment;->H:[Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    invoke-virtual {v3, v1, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    new-instance v1, Lcom/miui/applicationlock/SettingLockFragment$i;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/SettingLockFragment$i;-><init>(Lcom/miui/applicationlock/SettingLockFragment;)V

    new-instance v2, Lcom/miui/applicationlock/SettingLockFragment$j;

    invoke-direct {v2, p0, v1}, Lcom/miui/applicationlock/SettingLockFragment$j;-><init>(Lcom/miui/applicationlock/SettingLockFragment;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120cb4

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120499

    invoke-virtual {v0, v1, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->R:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private U0(I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->p:Lmiuix/preference/DropDownPreference;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->p:Lmiuix/preference/DropDownPreference;

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/applicationlock/SettingLockFragment;->L0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    invoke-virtual {p1, v0}, Lc3/d;->y(I)V

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/SettingLockFragment;->X0(I)V

    :goto_1
    const/4 p1, 0x4

    invoke-static {p1}, Lc3/f;->l0(I)V

    return-void
.end method

.method private V0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->w:Lc3/m;

    new-instance v1, Lz2/l0;

    invoke-direct {v1, p0}, Lz2/l0;-><init>(Lcom/miui/applicationlock/SettingLockFragment;)V

    invoke-virtual {v0, v1}, Lc3/m;->B(Ljava/lang/Runnable;)V

    return-void
.end method

.method private X0(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->t:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->n:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->t:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->n:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addItemFromInflater(Landroidx/preference/Preference;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->n:Landroidx/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->q()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private Y0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->h:Lc3/n;

    invoke-virtual {v0}, Lc3/n;->i()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->h:Lc3/n;

    invoke-virtual {v0}, Lc3/n;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/applicationlock/TransitionHelper;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/miui/applicationlock/SettingLockFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    invoke-virtual {v3, v0}, Lc3/d;->B(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->s:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/miui/applicationlock/SettingLockFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->w:Lc3/m;

    invoke-virtual {v0}, Lc3/m;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->w:Lc3/m;

    invoke-virtual {v0}, Lc3/m;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    invoke-virtual {v0, v1}, Lc3/d;->A(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lx4/m1;->a(Landroid/content/Context;)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->s:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_2
    return-void
.end method

.method private Z0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    invoke-static {v0}, Lc3/w;->c(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    invoke-virtual {v1}, Lc3/d;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    invoke-static {v2}, Lc3/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lc3/d;->d(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->o:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public static synthetic a0(Lcom/miui/applicationlock/SettingLockFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/SettingLockFragment;->P0()V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/applicationlock/SettingLockFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/SettingLockFragment;->V0()V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/applicationlock/SettingLockFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/SettingLockFragment;->S0()V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/applicationlock/SettingLockFragment;Lc3/u;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/SettingLockFragment;->Q0(Lc3/u;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/applicationlock/SettingLockFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/SettingLockFragment;->R0()V

    return-void
.end method

.method static synthetic f0(Lcom/miui/applicationlock/SettingLockFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/applicationlock/SettingLockFragment;->y:I

    return p0
.end method

.method static synthetic g0(Lcom/miui/applicationlock/SettingLockFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/SettingLockFragment;->c:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/applicationlock/SettingLockFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/SettingLockFragment;->b:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/applicationlock/SettingLockFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/SettingLockFragment;->Y0()V

    return-void
.end method

.method static synthetic j0(Lcom/miui/applicationlock/SettingLockFragment;)Lc3/m;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/SettingLockFragment;->w:Lc3/m;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/applicationlock/SettingLockFragment;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/SettingLockFragment;->M0(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic l0(Lcom/miui/applicationlock/SettingLockFragment;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/SettingLockFragment;->J0(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method static synthetic m0(Lcom/miui/applicationlock/SettingLockFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->L:Z

    return p1
.end method

.method static synthetic n0(Lcom/miui/applicationlock/SettingLockFragment;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/SettingLockFragment;->L0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o0(Lcom/miui/applicationlock/SettingLockFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/SettingLockFragment;->q:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic p0(Lcom/miui/applicationlock/SettingLockFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/SettingLockFragment;->X0(I)V

    return-void
.end method

.method static synthetic q0(Lcom/miui/applicationlock/SettingLockFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic r0(Lcom/miui/applicationlock/SettingLockFragment;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/SettingLockFragment;->R:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic s0(Lcom/miui/applicationlock/SettingLockFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/SettingLockFragment;->o:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic t0(Lcom/miui/applicationlock/SettingLockFragment;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/SettingLockFragment;->x:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic u0(Lcom/miui/applicationlock/SettingLockFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/SettingLockFragment;->k:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic v0(Lcom/miui/applicationlock/SettingLockFragment;)Lmiui/security/SecurityManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/SettingLockFragment;->v:Lmiui/security/SecurityManager;

    return-object p0
.end method

.method static synthetic w0(Lcom/miui/applicationlock/SettingLockFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/SettingLockFragment;->m:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic x0(Lcom/miui/applicationlock/SettingLockFragment;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/SettingLockFragment;->e:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic y0(Lcom/miui/applicationlock/SettingLockFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->i:I

    return p1
.end method

.method static synthetic z0(Lcom/miui/applicationlock/SettingLockFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->i:I

    return v0
.end method


# virtual methods
.method public E0()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->u:Z

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->a:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    invoke-static {v1}, Lc3/f;->S(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method protected F0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    invoke-static {v0}, Lc3/w;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->v:Lmiui/security/SecurityManager;

    const-string v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Lc3/f;->d(Lmiui/security/SecurityManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->v:Lmiui/security/SecurityManager;

    invoke-static {v0, v1}, Lc3/f;->D0(Lmiui/security/SecurityManager;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    invoke-static {v1, v0, v2}, Lc3/w;->e(Landroid/app/Activity;Landroid/os/Bundle;Lc3/d;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->u:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc3/d;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->o:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockFragment;->I0()V

    :goto_0
    return-void
.end method

.method public G0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->h:Lc3/n;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->K:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->K:Z

    invoke-virtual {v0}, Lc3/n;->d()V

    :cond_0
    return-void
.end method

.method protected I0()V
    .locals 5

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12055d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    invoke-static {v3}, Lc3/w;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f120412

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120410

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/applicationlock/SettingLockFragment$l;

    invoke-direct {v2, p0}, Lcom/miui/applicationlock/SettingLockFragment$l;-><init>(Lcom/miui/applicationlock/SettingLockFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120411

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/applicationlock/SettingLockFragment$k;

    invoke-direct {v2, p0}, Lcom/miui/applicationlock/SettingLockFragment$k;-><init>(Lcom/miui/applicationlock/SettingLockFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->x:Lmiuix/appcompat/app/AlertDialog;

    new-instance v1, Lcom/miui/applicationlock/SettingLockFragment$a;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/SettingLockFragment$a;-><init>(Lcom/miui/applicationlock/SettingLockFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->x:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public W0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->w:Lc3/m;

    new-instance v1, Lz2/h0;

    invoke-direct {v1, p0}, Lz2/h0;-><init>(Lcom/miui/applicationlock/SettingLockFragment;)V

    invoke-virtual {v0, v1}, Lc3/m;->B(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x24

    if-eq p1, v0, :cond_6

    const/16 v0, 0x21

    if-eq p1, v0, :cond_1

    const/16 p2, 0x22

    if-eq p1, p2, :cond_0

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->w:Lc3/m;

    invoke-virtual {p1}, Lc3/m;->t()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    invoke-virtual {p1, v3}, Lc3/d;->A(Z)V

    goto :goto_1

    :cond_1
    iput-boolean v3, p0, Lcom/miui/applicationlock/SettingLockFragment;->j:Z

    if-ne p2, v1, :cond_2

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->v:Lmiui/security/SecurityManager;

    invoke-static {p1}, Lc3/f;->X(Lmiui/security/SecurityManager;)V

    goto :goto_3

    :cond_2
    if-eqz p3, :cond_9

    const-string p1, "cancel_back_to_home"

    invoke-virtual {p3, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_3
    if-ne p2, v1, :cond_4

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    iget p2, p0, Lcom/miui/applicationlock/SettingLockFragment;->y:I

    invoke-static {p1, p2}, Lc3/f;->B0(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    invoke-virtual {p1, v3}, Lc3/d;->B(Z)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    invoke-virtual {p1, v2}, Lc3/d;->B(Z)V

    :cond_5
    :goto_0
    iput-boolean v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->z:Z

    goto :goto_1

    :cond_6
    if-ne p2, v1, :cond_8

    :cond_7
    :goto_1
    iput-boolean v3, p0, Lcom/miui/applicationlock/SettingLockFragment;->j:Z

    goto :goto_3

    :cond_8
    :goto_2
    iput-boolean v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->j:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_9
    :goto_3
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    const v0, 0x7f150018

    invoke-virtual {p0, v0, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f12029a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->E:Ljava/lang/String;

    const v0, 0x7f12029b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/applicationlock/SettingLockFragment;->F:Ljava/lang/String;

    const p2, 0x7f12029c

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/applicationlock/SettingLockFragment;->G:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->E:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->F:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v2, 0x2

    aput-object p2, v1, v2

    iput-object v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->H:[Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v1, "extra_data"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    const-string v1, "stateNeedPass"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->D:Z

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "ChooseAppToLock"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->j:Z

    goto :goto_1

    :cond_2
    :goto_0
    iput-boolean v3, p0, Lcom/miui/applicationlock/SettingLockFragment;->j:Z

    :goto_1
    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lx4/v;->j(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->y:I

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    const-string p2, "security"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/security/SecurityManager;

    iput-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->v:Lmiui/security/SecurityManager;

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc3/d;->j(Landroid/content/Context;)Lc3/d;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc3/m;->o(Landroid/content/Context;)Lc3/m;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->w:Lc3/m;

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    invoke-static {p1}, Lc3/n;->g(Landroid/content/Context;)Lc3/n;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->h:Lc3/n;

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    invoke-virtual {p1}, Lc3/d;->h()I

    move-result p1

    const-string p2, "show_pattern"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    iput-object p2, p0, Lcom/miui/applicationlock/SettingLockFragment;->a:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    invoke-virtual {p2}, Lc3/d;->l()Z

    move-result p2

    if-nez p2, :cond_3

    iput-boolean v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->j:Z

    :cond_3
    iget-object p2, p0, Lcom/miui/applicationlock/SettingLockFragment;->a:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    invoke-static {v1}, Lc3/f;->S(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p2, p0, Lcom/miui/applicationlock/SettingLockFragment;->a:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string p2, "fingerprint_lock"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    iput-object p2, p0, Lcom/miui/applicationlock/SettingLockFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string p2, "face_unlock"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    iput-object p2, p0, Lcom/miui/applicationlock/SettingLockFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string p2, "modify_password"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/applicationlock/SettingLockFragment;->d:Landroidx/preference/Preference;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string p2, "lock_mode"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lmiuix/preference/DropDownPreference;

    iput-object p2, p0, Lcom/miui/applicationlock/SettingLockFragment;->p:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->H:[Ljava/lang/String;

    invoke-virtual {p2, v1}, Lmiuix/preference/DropDownPreference;->y([Ljava/lang/CharSequence;)V

    const-string p2, "ac_enable"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->k:Landroidx/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    invoke-virtual {v2}, Lc3/d;->m()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->k:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v1, "notification_mask"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->m:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v1, "convenient_mode"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->n:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v1, "bind_xiaomi_account"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->o:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/SettingLockFragment;->L0(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroidx/preference/Preference;->setDependency(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroidx/preference/Preference;->setDependency(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->d:Landroidx/preference/Preference;

    invoke-virtual {v2, p2}, Landroidx/preference/Preference;->setDependency(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->a:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroidx/preference/Preference;->setDependency(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->m:Lmiuix/preference/TextPreference;

    invoke-virtual {v2, p2}, Landroidx/preference/Preference;->setDependency(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->n:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroidx/preference/Preference;->setDependency(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->o:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroidx/preference/Preference;->setDependency(Ljava/lang/String;)V

    const-string v2, "pwd_settings_category"

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->r:Landroidx/preference/PreferenceCategory;

    const-string v2, "biometric_settings_category"

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->s:Landroidx/preference/PreferenceCategory;

    const-string v2, "base_function_settings"

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/miui/applicationlock/SettingLockFragment;->t:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/SettingLockFragment;->X0(I)V

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->r:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setDependency(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->s:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setDependency(Ljava/lang/String;)V

    invoke-static {}, Lx4/t;->h()I

    move-result p1

    const/16 v2, 0xa

    if-ge p1, v2, :cond_4

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->t:Landroidx/preference/PreferenceCategory;

    iget-object p2, p0, Lcom/miui/applicationlock/SettingLockFragment;->p:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const-string p1, "preference_key_lock_mode_old"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->q:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->q:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->q:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->p:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->p:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, v1}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->p:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setDependency(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockFragment;->G0()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->J:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->e:Lmiuix/appcompat/app/AlertDialog;

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->x:Lmiuix/appcompat/app/AlertDialog;

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->A:Lmiuix/appcompat/app/AlertDialog;

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->B:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->D:Z

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockFragment;->G0()V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->e:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-static {}, Lx4/a0;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->e:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->e:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->x:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "show_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/miui/applicationlock/SettingLockFragment;->a:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p2, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    invoke-static {p2, p1}, Lc3/f;->u0(Landroid/content/Context;Z)V

    goto/16 :goto_3

    :cond_0
    const-string v0, "fingerprint_lock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->h:Lc3/n;

    invoke-virtual {p1}, Lc3/n;->i()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/applicationlock/TransitionHelper;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->h:Lc3/n;

    invoke-virtual {p1}, Lc3/n;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lx4/a0;->t()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/miui/applicationlock/SettingLockFragment;->K0()V

    goto :goto_0

    :cond_1
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->e:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e00fd

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->g:Landroid/view/View;

    const v0, 0x7f0b0279

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f120863

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->e:Lmiuix/appcompat/app/AlertDialog;

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->e:Lmiuix/appcompat/app/AlertDialog;

    const/4 v0, -0x2

    iget-object v3, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120499

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/applicationlock/SettingLockFragment;->O:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v3, v4}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->e:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :goto_0
    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->e:Lmiuix/appcompat/app/AlertDialog;

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->N:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->h:Lc3/n;

    new-instance v0, Lcom/miui/applicationlock/SettingLockFragment$m;

    invoke-direct {v0, p0, p2}, Lcom/miui/applicationlock/SettingLockFragment$m;-><init>(Lcom/miui/applicationlock/SettingLockFragment;Lcom/miui/applicationlock/SettingLockFragment$d;)V

    invoke-virtual {p1, v0, v1}, Lc3/n;->c(Lc3/h;I)V

    iput-boolean v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->K:Z

    goto/16 :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/applicationlock/TransitionHelper;->b(Landroid/content/Context;)Z

    move-result p1

    const/16 p2, 0x1e

    const-string v0, "com.android.settings"

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->h:Lc3/n;

    invoke-virtual {p1}, Lc3/n;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    const-string v3, "com.android.settings.MiuiSecurityChooseUnlock"

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    const-string v3, "com.android.settings.NewFingerprintActivity"

    :goto_1
    invoke-static {p1, v0, v3}, Lc3/f;->e0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->z:Z

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_5
    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, La3/b;->a:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    invoke-static {p1}, Lc3/f;->h(Landroid/content/Context;)V

    invoke-static {v2}, Lc3/f;->i0(Z)V

    goto/16 :goto_3

    :cond_6
    const-string v0, "ac_enable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-direct {p0}, Lcom/miui/applicationlock/SettingLockFragment;->H0()V

    goto :goto_2

    :cond_7
    const-string v0, "convenient_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    invoke-virtual {p2, p1}, Lc3/d;->z(Z)V

    goto :goto_3

    :cond_8
    const-string v0, "bind_xiaomi_account"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockFragment;->F0()V

    :goto_2
    move v1, v2

    goto :goto_3

    :cond_9
    const-string v0, "face_unlock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/miui/applicationlock/SettingLockFragment;->N0()V

    goto :goto_2

    :cond_a
    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    invoke-virtual {p1, v2}, Lc3/d;->A(Z)V

    invoke-static {v2}, Lc3/f;->h0(Z)V

    goto :goto_3

    :cond_b
    const-string v0, "lock_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->H:[Ljava/lang/String;

    aget-object p1, p1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-direct {p0, v2}, Lcom/miui/applicationlock/SettingLockFragment;->U0(I)V

    goto :goto_3

    :cond_c
    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment;->H:[Ljava/lang/String;

    aget-object p1, p1, v1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-direct {p0, v1}, Lcom/miui/applicationlock/SettingLockFragment;->U0(I)V

    goto :goto_3

    :cond_d
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/SettingLockFragment;->U0(I)V

    :cond_e
    :goto_3
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "modify_password"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "extra_data"

    if-eqz v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    const-class v3, Lcom/miui/applicationlock/ChooseLockTypeActivity;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "ModifyPassword"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "setting_password_reset"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x21

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_0
    const-string v0, "notification_mask"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    const-class v3, Lcom/miui/applicationlock/MaskNotificationActivity;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "applock_setting_mask_notification"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "enter_way"

    const-string v2, "mask_notification_app_choose"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x24

    goto :goto_0

    :cond_1
    const-string v0, "preference_key_lock_mode_old"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/miui/applicationlock/SettingLockFragment;->T0()V

    :cond_2
    :goto_1
    return v1
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->L:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->w:Lc3/m;

    invoke-virtual {v0}, Lc3/m;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    invoke-virtual {v0, v1}, Lc3/d;->A(Z)V

    iput-boolean v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->L:Z

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->j:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->z:Z

    if-nez v0, :cond_2

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->D:Z

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->I:Landroid/content/Context;

    const-class v2, Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_data"

    const-string v2, "HappyCodingMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->j:Z

    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->l()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_3
    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->k:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->l:Lc3/d;

    invoke-virtual {v1}, Lc3/d;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/miui/applicationlock/SettingLockFragment;->O0()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->j:Z

    const-string v1, "state"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "stateNeedPass"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStart()V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->v:Lmiui/security/SecurityManager;

    invoke-virtual {v0}, Lmiui/security/SecurityManager;->getAccessControlPasswordType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pattern"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->r:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->a:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->r:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockFragment;->a:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    invoke-direct {p0}, Lcom/miui/applicationlock/SettingLockFragment;->Y0()V

    invoke-direct {p0}, Lcom/miui/applicationlock/SettingLockFragment;->Z0()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/SettingLockFragment;->j:Z

    :cond_0
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/SettingLockFragment;->Y0()V

    invoke-direct {p0}, Lcom/miui/applicationlock/SettingLockFragment;->Z0()V

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f071da6

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071e0c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method
