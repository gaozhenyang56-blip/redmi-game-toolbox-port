.class public Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$h;,
        Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$g;,
        Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$f;,
        Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/preference/PreferenceFragment;",
        "Landroidx/loader/app/a$a<",
        "Ljava/util/List<",
        "Lu7/a;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final h0:Ljava/lang/String;


# instance fields
.field private A:Lmiuix/preference/TextPreference;

.field private B:Lmiuix/preference/TextPreference;

.field private C:Lmiuix/preference/TextPreference;

.field private D:Lmiuix/preference/TextPreference;

.field private E:Lmiuix/preference/TextPreference;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Lm6/a;

.field private S:I

.field private T:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

.field private U:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$f;

.field private V:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$i;

.field private W:Ljava/lang/String;

.field private X:Landroid/app/Activity;

.field private Y:Ly7/k;

.field private Z:Landroid/content/ServiceConnection;

.field private a:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

.field private b:Landroid/os/Handler;

.field private c:I

.field private d:Lcom/miui/gamebooster/service/IGameBooster;

.field private e:Landroidx/preference/PreferenceCategory;

.field private f:Landroidx/preference/PreferenceCategory;

.field f0:Lo4/a$a;

.field private g:Landroidx/preference/PreferenceCategory;

.field private g0:Landroidx/preference/Preference$c;

.field private h:Landroidx/preference/CheckBoxPreference;

.field private i:Landroidx/preference/CheckBoxPreference;

.field private j:Landroidx/preference/CheckBoxPreference;

.field private k:Landroidx/preference/CheckBoxPreference;

.field private l:Landroidx/preference/CheckBoxPreference;

.field private m:Landroidx/preference/CheckBoxPreference;

.field private n:Landroidx/preference/CheckBoxPreference;

.field private o:Landroidx/preference/CheckBoxPreference;

.field private p:Landroidx/preference/CheckBoxPreference;

.field private q:Landroidx/preference/CheckBoxPreference;

.field private r:Landroidx/preference/CheckBoxPreference;

.field private s:Landroidx/preference/CheckBoxPreference;

.field private t:Landroidx/preference/CheckBoxPreference;

.field private u:Landroidx/preference/CheckBoxPreference;

.field private v:Z

.field private w:Landroidx/preference/CheckBoxPreference;

.field private x:Landroidx/preference/CheckBoxPreference;

.field private y:Lmiuix/preference/TextPreference;

.field private z:Lmiuix/preference/TextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->h0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->c:I

    new-instance v0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$a;-><init>(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->Z:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$b;-><init>(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->f0:Lo4/a$a;

    return-void
.end method

.method static synthetic A0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->N:Z

    return p0
.end method

.method private A1(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->x:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {p1}, Lm6/a;->B0(Z)V

    return-void
.end method

.method static synthetic B0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->N:Z

    return p1
.end method

.method static synthetic C0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->O:Z

    return p0
.end method

.method static synthetic D0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->O:Z

    return p1
.end method

.method static synthetic E0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->P:Z

    return p0
.end method

.method static synthetic F0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->P:Z

    return p1
.end method

.method static synthetic G0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->Q:Z

    return p0
.end method

.method static synthetic H0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->Q:Z

    return p1
.end method

.method static synthetic I0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->h:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic J0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic K0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->j:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic L0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->S:I

    return p0
.end method

.method static synthetic M0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->l:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic N0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->S:I

    return p1
.end method

.method static synthetic O0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->k:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic P0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->m:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic Q0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->n:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic R0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->p:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic S0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->x:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic T0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->w:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic U0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->u:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic V0(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->w1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic W0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->v1(Z)V

    return-void
.end method

.method static synthetic X0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->o:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic Y0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->u1(Z)V

    return-void
.end method

.method static synthetic Z0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->q:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic a0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->a:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-object p0
.end method

.method static synthetic a1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->A1(Z)V

    return-void
.end method

.method static synthetic b0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->a:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-object p1
.end method

.method static synthetic b1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->q1(Z)V

    return-void
.end method

.method static synthetic c0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->c:I

    return p0
.end method

.method static synthetic c1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/PreferenceCategory;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->e:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static synthetic d0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->X:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->c:I

    return p1
.end method

.method static synthetic e1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->T:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lcom/miui/gamebooster/service/IGameBooster;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->d:Lcom/miui/gamebooster/service/IGameBooster;

    return-object p0
.end method

.method static synthetic f1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->T:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-object p1
.end method

.method static synthetic g0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Lcom/miui/gamebooster/service/IGameBooster;)Lcom/miui/gamebooster/service/IGameBooster;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->d:Lcom/miui/gamebooster/service/IGameBooster;

    return-object p1
.end method

.method static synthetic g1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->M:Z

    return p0
.end method

.method static synthetic h0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->A:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic h1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->M:Z

    return p1
.end method

.method static synthetic i0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->D:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic i1(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lm6/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->R:Lm6/a;

    return-object p0
.end method

.method static synthetic j0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->E:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->t:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->I:Z

    return p0
.end method

.method static synthetic m0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->I:Z

    return p1
.end method

.method static synthetic n0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->J:Z

    return p0
.end method

.method private n1()V
    .locals 5

    const-string v0, "pref_game_shortcut"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->h:Landroidx/preference/CheckBoxPreference;

    const-string v0, "pref_game_box"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i:Landroidx/preference/CheckBoxPreference;

    const-string v0, "pref_slip"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->j:Landroidx/preference/CheckBoxPreference;

    const-string v0, "pref_shortcut"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->p:Landroidx/preference/CheckBoxPreference;

    const-string v0, "pref_shoulder_key"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->q:Landroidx/preference/CheckBoxPreference;

    const-string v0, "pref_game_storage"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->x:Landroidx/preference/CheckBoxPreference;

    const-string v0, "pref_game_uninstall"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->y:Lmiuix/preference/TextPreference;

    const-string v0, "preference_category_key_performance_booster"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->e:Landroidx/preference/PreferenceCategory;

    const-string v0, "preference_category_key_anti_disturb_msg"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->f:Landroidx/preference/PreferenceCategory;

    const-string v0, "preference_category_key_else_function"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->g:Landroidx/preference/PreferenceCategory;

    const-string v0, "pref_value_performance_booster"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->B:Lmiuix/preference/TextPreference;

    const-string v0, "pref_net_booster"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->k:Landroidx/preference/CheckBoxPreference;

    const-string v0, "pref_shield_keyboard"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->l:Landroidx/preference/CheckBoxPreference;

    const-string v0, "pref_setting_detail"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->z:Lmiuix/preference/TextPreference;

    const-string v0, "pref_net_booster_wifi"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->A:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->X:Landroid/app/Activity;

    const v2, 0x7f121c98

    invoke-static {v1, v2}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    const-string v0, "pref_call_handsfree"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->m:Landroidx/preference/CheckBoxPreference;

    const-string v0, "pref_function_shield"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->D:Lmiuix/preference/TextPreference;

    const-string v0, "pref_advanced_setting"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->C:Lmiuix/preference/TextPreference;

    const-string v0, "pref_game_net_priority"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->n:Landroidx/preference/CheckBoxPreference;

    const-string v0, "pref_performance_booster"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->o:Landroidx/preference/CheckBoxPreference;

    const-string v0, "pref_content_setting"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->w:Landroidx/preference/CheckBoxPreference;

    const-string v0, "pref_function_gwsd"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->E:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->X:Landroid/app/Activity;

    invoke-static {v1}, La8/b1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "pref_disable_ndds_sim"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->r:Landroidx/preference/CheckBoxPreference;

    const-string v0, "pref_smart_five_g"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->s:Landroidx/preference/CheckBoxPreference;

    const-string v0, "pref_wlan_speed_g"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->t:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->X:Landroid/app/Activity;

    const v2, 0x7f120bed

    invoke-static {v1, v2}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "pref_brightness"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->u:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const v3, 0x7f10004c

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->u:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic o0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->J:Z

    return p1
.end method

.method private o1()V
    .locals 3

    new-instance v0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$f;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$f;-><init>(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->U:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$f;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic p0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->K:Z

    return p0
.end method

.method static synthetic q0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->K:Z

    return p1
.end method

.method private q1(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->x:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "storage"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p1

    const/16 v1, 0xcfd

    invoke-virtual {p1, v1}, Landroidx/loader/app/a;->d(I)Lq0/c;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/loader/app/a;->a(I)V

    :cond_0
    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p1

    invoke-virtual {p1, v1, v0, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    return-void
.end method

.method static synthetic r0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->G:Z

    return p0
.end method

.method private r1()V
    .locals 2

    new-instance v0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$g;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$g;-><init>(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->g0:Landroidx/preference/Preference$c;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->o:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->k:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->g0:Landroidx/preference/Preference$c;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->l:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->g0:Landroidx/preference/Preference$c;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->m:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->g0:Landroidx/preference/Preference$c;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->h:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->g0:Landroidx/preference/Preference$c;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->g0:Landroidx/preference/Preference$c;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->j:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->g0:Landroidx/preference/Preference$c;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->D:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->g0:Landroidx/preference/Preference$c;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->n:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->g0:Landroidx/preference/Preference$c;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->p:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->g0:Landroidx/preference/Preference$c;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->x:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->g0:Landroidx/preference/Preference$c;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->t:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->g0:Landroidx/preference/Preference$c;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->w:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->g0:Landroidx/preference/Preference$c;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->u:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->g0:Landroidx/preference/Preference$c;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    return-void
.end method

.method static synthetic s0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->G:Z

    return p1
.end method

.method private s1()V
    .locals 2

    new-instance v0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$h;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$h;-><init>(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->z:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->A:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->B:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->C:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->D:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->E:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->y:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    return-void
.end method

.method static synthetic t0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->h0:Ljava/lang/String;

    return-object v0
.end method

.method private t1()V
    .locals 0
    invoke-static {p0}, Lcom/gzy/redmiport/OriginalSettings;->apply(Ljava/lang/Object;)V
    return-void
.end method

.method static synthetic u0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->F:Z

    return p0
.end method

.method private u1(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lv7/c;->a()Lv7/c;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->X:Landroid/app/Activity;

    new-instance v1, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$c;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$c;-><init>(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)V

    invoke-virtual {p1, v0, v1}, Lv7/c;->c(Landroid/content/Context;Lv7/c$e;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->A1(Z)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->q1(Z)V

    :goto_0
    return-void
.end method

.method static synthetic v0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->F:Z

    return p1
.end method

.method private v1(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->h:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    invoke-static {}, La8/g0;->U()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->j:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-static {v1}, Lm6/a;->K(Z)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->i:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lm6/a;->w()Z

    move-result v1

    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->w:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    invoke-static {}, La8/h0;->d()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->p:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->e:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->f:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->g:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    invoke-static {v0}, Lm6/a;->O(Z)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->e:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->k:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->e:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->A:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    invoke-static {}, La8/g0;->v()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->g:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    invoke-static {}, La8/g0;->O()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->w:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4
    invoke-static {}, La8/g0;->T()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->e:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->n:Landroidx/preference/CheckBoxPreference;

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->e:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->B:Lmiuix/preference/TextPreference;

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-static {}, La8/g0;->n0()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, La8/g0;->j0()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->f:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->E:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Lx4/z1;->y()I

    move-result v0

    invoke-static {p1, v0}, La8/g0;->F(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->x:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_7
    invoke-static {}, La8/g0;->s()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->e:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->u:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_8
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->y:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->X:Landroid/app/Activity;

    invoke-static {p1}, La8/c;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->h:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    invoke-static {}, La8/h0;->d()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->p:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Lx4/z1;->y()I

    move-result v1

    invoke-static {p1, v1}, La8/g0;->F(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->x:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_b
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->y:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const-string p1, "game_IsAntiMsg"

    invoke-static {p1, v0}, Lr4/a;->n(Ljava/lang/String;Z)V

    :goto_2
    return-void
.end method

.method static synthetic w0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->H:Z

    return p0
.end method

.method private static w1(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_game_box"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "pref_wlan_speed_g"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "pref_game_uninstall"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "pref_advanced_setting"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "pref_value_performance_booster"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "pref_performance_booster"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_6
    const-string v0, "pref_game_shortcut"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v0, "pref_setting_detail"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_8
    const-string v0, "pref_content_setting"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_9
    const-string v0, "pref_game_storage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_a
    const-string v0, "pref_function_shield"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_b
    const-string v0, "pref_shortcut"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_c
    const-string v0, "pref_shield_keyboard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p0, ""

    goto :goto_1

    :pswitch_0
    const-string p0, "toolbox_switch"

    goto :goto_1

    :pswitch_1
    const-string p0, "mi_wlan_switch"

    goto :goto_1

    :pswitch_2
    const-string p0, "game_uninstall"

    goto :goto_1

    :pswitch_3
    const-string p0, "advanced_setting_page"

    goto :goto_1

    :pswitch_4
    const-string p0, "game_booster_switch"

    goto :goto_1

    :pswitch_5
    const-string p0, "performance_switch"

    goto :goto_1

    :pswitch_6
    const-string p0, "turbo_switch"

    goto :goto_1

    :pswitch_7
    const-string p0, "cleanup_whitelist"

    goto :goto_1

    :pswitch_8
    const-string p0, "content_switch"

    goto :goto_1

    :pswitch_9
    const-string p0, "game_folder"

    goto :goto_1

    :pswitch_a
    const-string p0, "experience_up"

    goto :goto_1

    :pswitch_b
    const-string p0, "shortcut_switch"

    goto :goto_1

    :pswitch_c
    const-string p0, "anti_mistouch"

    :goto_1
    invoke-static {p0}, Lcom/miui/gamebooster/utils/a$n;->I(Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4fdee21f -> :sswitch_c
        -0x3518dd1e -> :sswitch_b
        -0x2d65886c -> :sswitch_a
        -0x2c854436 -> :sswitch_9
        -0x1d6a4d92 -> :sswitch_8
        0x187e2ebc -> :sswitch_7
        0x211a8cd7 -> :sswitch_6
        0x307e1a65 -> :sswitch_5
        0x32cc9b97 -> :sswitch_4
        0x4da3c5cf -> :sswitch_3
        0x55c78a71 -> :sswitch_2
        0x6ff92d8e -> :sswitch_1
        0x75e2f69a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic x0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->H:Z

    return p1
.end method

.method private x1()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->e:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, La8/g0;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, La8/y0;->e()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->r:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->e:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->r:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->g0:Landroidx/preference/Preference$c;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->r:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->X:Landroid/app/Activity;

    invoke-static {v1}, Lm6/a;->p(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->e:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->r:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic y0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->L:Z

    return p0
.end method

.method private y1()V
    .locals 0
    invoke-static {p0}, Lcom/gzy/redmiport/OriginalSettings;->apply(Ljava/lang/Object;)V
    return-void
.end method

.method static synthetic z0(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->L:Z

    return p1
.end method

.method private z1(Landroidx/preference/Preference$c;)V
    .locals 2

    invoke-static {}, Lp6/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->e:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->s:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->v:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->e:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->v:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->s:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->s:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->s:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lp6/b;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/List<",
            "Lu7/a;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->p1(Lq0/c;Ljava/util/List;)V

    return-void
.end method

.method public j1()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->X:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1219df

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1219de

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$e;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$e;-><init>(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$d;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$d;-><init>(Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public k1()Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->a:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-object v0
.end method

.method public l1()Lcom/miui/gamebooster/service/IGameBooster;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->d:Lcom/miui/gamebooster/service/IGameBooster;

    return-object v0
.end method

.method public m1()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->c:I

    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Ljava/util/List<",
            "Lu7/a;",
            ">;>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string p1, "storage"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance p2, Ly7/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ly7/k;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->Y:Ly7/k;

    return-object p2
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;
    move-result-object v0
    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->X:Landroid/app/Activity;
    const v0, 0x7f150035
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V
    invoke-static {p0}, Lcom/gzy/redmiport/OriginalSettings;->apply(Ljava/lang/Object;)V
    return-void
.end method

.method public onDestroy()V
    .locals 2
    const/4 v1, 0x1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->U:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$f;
    if-eqz v0, :port_task_v
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z
    :port_task_v
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->V:Lcom/miui/gamebooster/ui/GameBoosterSettingFragment$i;
    if-eqz v0, :port_destroy
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z
    :port_destroy
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->t1()V

    return-void
.end method

.method public p1(Lq0/c;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/List<",
            "Lu7/a;",
            ">;>;",
            "Ljava/util/List<",
            "Lu7/a;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p1

    const/16 p2, 0xcfd

    invoke-virtual {p1, p2}, Landroidx/loader/app/a;->a(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterSettingFragment;->x:Landroidx/preference/CheckBoxPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
