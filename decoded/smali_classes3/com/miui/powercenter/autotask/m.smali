.class Lcom/miui/powercenter/autotask/m;
.super Lcom/miui/powercenter/autotask/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/powercenter/autotask/i<",
        "Lcom/miui/powercenter/autotask/OperationEditFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Landroidx/preference/PreferenceScreen;

.field private e:Lmiuix/preference/DropDownPreference;

.field private f:Lmiuix/preference/DropDownPreference;

.field private g:Lmiuix/preference/DropDownPreference;

.field private h:Lmiuix/preference/DropDownPreference;

.field private i:Lmiuix/preference/DropDownPreference;

.field private j:Lmiuix/preference/DropDownPreference;

.field private k:Lmiuix/preference/DropDownPreference;

.field private l:Lmiuix/preference/TextPreference;

.field private m:Lmiuix/preference/DropDownPreference;

.field private n:Lmiuix/preference/DropDownPreference;

.field private o:Lmiuix/preference/DropDownPreference;

.field private p:Landroidx/preference/Preference$d;

.field private q:Landroidx/preference/Preference$c;


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/autotask/i;-><init>(Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/AutoTask;)V

    new-instance p1, Lcom/miui/powercenter/autotask/m$a;

    invoke-direct {p1, p0}, Lcom/miui/powercenter/autotask/m$a;-><init>(Lcom/miui/powercenter/autotask/m;)V

    iput-object p1, p0, Lcom/miui/powercenter/autotask/m;->p:Landroidx/preference/Preference$d;

    new-instance p1, Lcom/miui/powercenter/autotask/m$b;

    invoke-direct {p1, p0}, Lcom/miui/powercenter/autotask/m$b;-><init>(Lcom/miui/powercenter/autotask/m;)V

    iput-object p1, p0, Lcom/miui/powercenter/autotask/m;->q:Landroidx/preference/Preference$c;

    return-void
.end method

.method static synthetic e(Lcom/miui/powercenter/autotask/m;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/m;->i(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic f(Lcom/miui/powercenter/autotask/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/m;->k()V

    return-void
.end method

.method static synthetic g(Lcom/miui/powercenter/autotask/m;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/m;->j(Ljava/lang/String;)V

    return-void
.end method

.method private h()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    const-string v1, "airplane_mode"

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->hasOperation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->getOperation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private i(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    new-instance v1, Lcom/miui/powercenter/autotask/m$c;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/autotask/m$c;-><init>(Lcom/miui/powercenter/autotask/m;)V

    invoke-static {p1, v0, v1}, Lcom/miui/powercenter/autotask/n;->g(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/n$c;)V

    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/m;->d:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v0, v1, p1}, Lcom/miui/powercenter/autotask/n;->j(Lmiuix/preference/TextPreference;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/m;->k()V

    return-void
.end method

.method private k()V
    .locals 2

    invoke-static {}, Lme/w;->e0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/powercenter/autotask/m;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    const-string v1, "internet"

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->removeOperation(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/m;->f:Lmiuix/preference/DropDownPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/m;->f:Lmiuix/preference/DropDownPreference;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->E(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/autotask/m;->f:Lmiuix/preference/DropDownPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public b(Landroid/os/Bundle;)V
    .locals 4

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const v0, 0x7f15004b

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const-string v0, "screen"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/m;->d:Landroidx/preference/PreferenceScreen;

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const-string v0, "memory_clean"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/m;->e:Lmiuix/preference/DropDownPreference;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/m;->q:Landroidx/preference/Preference$c;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/m;->e:Lmiuix/preference/DropDownPreference;

    const-string v0, "auto_clean_memory"

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/m;->e:Lmiuix/preference/DropDownPreference;

    invoke-static {p1, v1, v0, v2}, Lcom/miui/powercenter/autotask/n;->f(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;Lmiuix/preference/DropDownPreference;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const-string v0, "mobile_data"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/m;->f:Lmiuix/preference/DropDownPreference;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/m;->q:Landroidx/preference/Preference$c;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/m;->f:Lmiuix/preference/DropDownPreference;

    const-string v0, "internet"

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/m;->f:Lmiuix/preference/DropDownPreference;

    invoke-static {p1, v1, v0, v2}, Lcom/miui/powercenter/autotask/n;->f(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;Lmiuix/preference/DropDownPreference;)V

    invoke-static {}, Lme/w;->e0()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/autotask/m;->f:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/m;->g:Lmiuix/preference/DropDownPreference;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/m;->q:Landroidx/preference/Preference$c;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/m;->g:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v3, p0, Lcom/miui/powercenter/autotask/m;->g:Lmiuix/preference/DropDownPreference;

    invoke-static {p1, v2, v1, v3}, Lcom/miui/powercenter/autotask/n;->f(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;Lmiuix/preference/DropDownPreference;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const-string v1, "mute"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/m;->h:Lmiuix/preference/DropDownPreference;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/m;->q:Landroidx/preference/Preference$c;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/m;->h:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v3, p0, Lcom/miui/powercenter/autotask/m;->h:Lmiuix/preference/DropDownPreference;

    invoke-static {p1, v2, v1, v3}, Lcom/miui/powercenter/autotask/n;->f(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;Lmiuix/preference/DropDownPreference;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const-string v1, "vibration"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/m;->i:Lmiuix/preference/DropDownPreference;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/m;->q:Landroidx/preference/Preference$c;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/m;->i:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v3, p0, Lcom/miui/powercenter/autotask/m;->i:Lmiuix/preference/DropDownPreference;

    invoke-static {p1, v2, v1, v3}, Lcom/miui/powercenter/autotask/n;->f(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;Lmiuix/preference/DropDownPreference;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/m;->i:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/powercenter/autotask/k;->a(Landroid/content/Context;)Lcom/miui/powercenter/autotask/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/k;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/powercenter/autotask/m;->i:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const-string v1, "bluetooth"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/m;->j:Lmiuix/preference/DropDownPreference;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/m;->q:Landroidx/preference/Preference$c;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/m;->j:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v3, p0, Lcom/miui/powercenter/autotask/m;->j:Lmiuix/preference/DropDownPreference;

    invoke-static {p1, v2, v1, v3}, Lcom/miui/powercenter/autotask/n;->f(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;Lmiuix/preference/DropDownPreference;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const-string v1, "auto_brightness"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/m;->k:Lmiuix/preference/DropDownPreference;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/m;->q:Landroidx/preference/Preference$c;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/m;->k:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v3, p0, Lcom/miui/powercenter/autotask/m;->k:Lmiuix/preference/DropDownPreference;

    invoke-static {p1, v2, v1, v3}, Lcom/miui/powercenter/autotask/n;->f(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;Lmiuix/preference/DropDownPreference;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const-string v1, "brightness"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/m;->l:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/m;->p:Landroidx/preference/Preference$d;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/m;->l:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const-string v1, "aireplane_mode"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/m;->m:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/m;->q:Landroidx/preference/Preference$c;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/m;->m:Lmiuix/preference/DropDownPreference;

    const-string v1, "airplane_mode"

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v3, p0, Lcom/miui/powercenter/autotask/m;->m:Lmiuix/preference/DropDownPreference;

    invoke-static {p1, v2, v1, v3}, Lcom/miui/powercenter/autotask/n;->f(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;Lmiuix/preference/DropDownPreference;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const-string v1, "gps"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/m;->n:Lmiuix/preference/DropDownPreference;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/m;->q:Landroidx/preference/Preference$c;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/m;->n:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v3, p0, Lcom/miui/powercenter/autotask/m;->n:Lmiuix/preference/DropDownPreference;

    invoke-static {p1, v2, v1, v3}, Lcom/miui/powercenter/autotask/n;->f(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;Lmiuix/preference/DropDownPreference;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lme/w;->Y(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/powercenter/autotask/m;->n:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const-string v0, "sync"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/m;->o:Lmiuix/preference/DropDownPreference;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/m;->q:Landroidx/preference/Preference$c;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/m;->o:Lmiuix/preference/DropDownPreference;

    const-string v0, "synchronization"

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/m;->o:Lmiuix/preference/DropDownPreference;

    invoke-static {p1, v1, v0, v2}, Lcom/miui/powercenter/autotask/n;->f(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;Lmiuix/preference/DropDownPreference;)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getOperationNames()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "brightness"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1, v0}, Lcom/miui/powercenter/autotask/AutoTask;->getOperation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/m;->l:Lmiuix/preference/TextPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/powercenter/autotask/m;->k()V

    return-void
.end method

.method public d(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method
