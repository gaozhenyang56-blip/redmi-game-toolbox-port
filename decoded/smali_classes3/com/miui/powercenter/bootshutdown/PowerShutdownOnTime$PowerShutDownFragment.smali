.class public Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;
.super Lcom/miui/common/base/ui/MiuiXPreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerShutDownFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$d;
    }
.end annotation


# instance fields
.field private b:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

.field private c:Landroidx/preference/CheckBoxPreference;

.field private d:Lmiuix/preference/TextPreference;

.field private e:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

.field private f:Landroidx/preference/CheckBoxPreference;

.field private g:Lmiuix/preference/TextPreference;

.field private h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

.field private i:I

.field private j:I

.field private k:Landroidx/preference/Preference$d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;-><init>()V

    new-instance v0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$d;-><init>(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$a;)V

    iput-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->k:Landroidx/preference/Preference$d;

    return-void
.end method

.method static synthetic c0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->g:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic d0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->j:I

    return p0
.end method

.method static synthetic e0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->j:I

    return p1
.end method

.method static synthetic f0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->i:I

    return p0
.end method

.method static synthetic g0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->i:I

    return p1
.end method

.method static synthetic h0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->d:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->q0()Z

    move-result p0

    return p0
.end method

.method static synthetic j0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->y0()V

    return-void
.end method

.method static synthetic k0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->o0()V

    return-void
.end method

.method static synthetic l0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->x0()Z

    move-result p0

    return p0
.end method

.method static synthetic m0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->z0()V

    return-void
.end method

.method static synthetic n0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->b:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    return-object p0
.end method

.method private o0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->b:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-static {v0}, Ljd/a;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->b:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-static {v0}, Ljd/a;->e(Landroid/content/Context;)V

    return-void
.end method

.method private p0()Z
    .locals 2

    invoke-static {}, Lgd/c;->t0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Ljd/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->b:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-static {v0}, Ljd/a;->b(Landroid/content/Context;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private q0()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->f:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->i:I

    iget v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->j:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private r0()Z
    .locals 6

    invoke-static {}, Lgd/c;->y0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lgd/c;->x0()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    invoke-static {}, Lgd/c;->z0()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->b:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-static {v0}, Ljd/a;->c(Landroid/content/Context;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private s0()V
    .locals 2

    const-string v0, "time_shutdown"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->g:Lmiuix/preference/TextPreference;

    const-string v0, "time_boot"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->d:Lmiuix/preference/TextPreference;

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->g:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->k:Landroidx/preference/Preference$d;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->d:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->k:Landroidx/preference/Preference$d;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "button_boot"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->c:Landroidx/preference/CheckBoxPreference;

    const-string v0, "button_shutdown"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->f:Landroidx/preference/CheckBoxPreference;

    const-string v0, "repeat_boot"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    iput-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->e:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    const-string v0, "repeat_shutdown"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    iput-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    return-void
.end method

.method private t0()I
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->e:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->k()Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->c()I

    move-result v0

    return v0
.end method

.method private u0()I
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->k()Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->c()I

    move-result v0

    return v0
.end method

.method private v0()V
    .locals 1

    invoke-static {}, Lgd/c;->v0()I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->i:I

    invoke-static {}, Lgd/c;->A0()I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->j:I

    return-void
.end method

.method private w0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->p0()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->f:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->r0()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->d:Lmiuix/preference/TextPreference;

    iget v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->i:I

    invoke-static {v1}, Lme/e0;->n(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->g:Lmiuix/preference/TextPreference;

    iget v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->j:I

    invoke-static {v1}, Lme/e0;->n(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    new-instance v0, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    invoke-static {}, Lgd/c;->u0()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;-><init>(I)V

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->b:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->k(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->e:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {v3, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->e:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {v1, v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->l(Lcom/miui/powercenter/bootshutdown/DaysOfWeek;)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->e:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    new-instance v1, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$b;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$b;-><init>(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    new-instance v0, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    invoke-static {}, Lgd/c;->z0()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;-><init>(I)V

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->b:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->k(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {v2, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {v1, v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->l(Lcom/miui/powercenter/bootshutdown/DaysOfWeek;)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    new-instance v1, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$c;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$c;-><init>(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    return-void
.end method

.method private x0()Z
    .locals 7

    invoke-static {}, Lgd/c;->t0()Z

    move-result v0

    invoke-static {}, Lgd/c;->y0()Z

    move-result v1

    invoke-static {}, Lgd/c;->v0()I

    move-result v2

    invoke-static {}, Lgd/c;->A0()I

    move-result v3

    invoke-static {}, Lgd/c;->u0()I

    move-result v4

    invoke-static {}, Lgd/c;->z0()I

    move-result v5

    iget-object v6, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-ne v6, v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->f:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->i:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->j:I

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->t0()I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->u0()I

    move-result v0

    if-ne v0, v5, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private y0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lgd/c;->p2(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->f:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lgd/c;->u2(Z)V

    iget v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->i:I

    invoke-static {v0}, Lgd/c;->r2(I)V

    iget v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->j:I

    invoke-static {v0}, Lgd/c;->w2(I)V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->t0()I

    move-result v0

    invoke-static {v0}, Lgd/c;->q2(I)V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->u0()I

    move-result v0

    invoke-static {v0}, Lgd/c;->v2(I)V

    return-void
.end method

.method private z0()V
    .locals 3

    new-instance v0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$a;-><init>(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)V

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->b:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12129c

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f1212a1

    invoke-virtual {v1, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f1212a0

    invoke-virtual {v1, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    iput-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->b:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    const v0, 0x7f15004f

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->s0()V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->v0()V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->w0()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->c:Landroidx/preference/CheckBoxPreference;

    const-string v1, "key_check_boot"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->f:Landroidx/preference/CheckBoxPreference;

    const-string v1, "key_check_shutdown"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const-string v1, "key_check_boot"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->f:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const-string v1, "key_check_shutdown"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method
