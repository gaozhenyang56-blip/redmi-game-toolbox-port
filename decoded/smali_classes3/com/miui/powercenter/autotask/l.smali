.class Lcom/miui/powercenter/autotask/l;
.super Lcom/miui/powercenter/autotask/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/autotask/l$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/powercenter/autotask/i<",
        "Lcom/miui/powercenter/autotask/OperationEditFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Landroidx/preference/PreferenceScreen;

.field private e:Lmiuix/preference/TextPreference;

.field private f:Lmiuix/preference/TextPreference;

.field private g:Lmiuix/preference/TextPreference;

.field private h:Lmiuix/preference/TextPreference;

.field private i:Lmiuix/preference/TextPreference;

.field private j:Lmiuix/preference/TextPreference;

.field private k:Lmiuix/preference/TextPreference;

.field private l:Lmiuix/preference/TextPreference;

.field private m:Lmiuix/preference/TextPreference;

.field private n:Lmiuix/preference/TextPreference;

.field private o:Lmiuix/preference/TextPreference;

.field private p:Landroidx/preference/Preference$d;


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/autotask/i;-><init>(Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/AutoTask;)V

    return-void
.end method

.method static synthetic e(Lcom/miui/powercenter/autotask/l;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/l;->n(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/miui/powercenter/autotask/l;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/autotask/l;->l(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/miui/powercenter/autotask/l;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/l;->k(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic h(Lcom/miui/powercenter/autotask/l;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/l;->j(Landroid/content/Context;)V

    return-void
.end method

.method private i()Z
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

.method private j(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    new-instance v1, Lcom/miui/powercenter/autotask/l$c;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/autotask/l$c;-><init>(Lcom/miui/powercenter/autotask/l;)V

    invoke-static {p1, v0, v1}, Lcom/miui/powercenter/autotask/n;->g(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/n$c;)V

    return-void
.end method

.method private k(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    new-instance v1, Lcom/miui/powercenter/autotask/l$b;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/autotask/l$b;-><init>(Lcom/miui/powercenter/autotask/l;)V

    invoke-static {p1, v0, v1}, Lcom/miui/powercenter/autotask/n;->h(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/n$c;)V

    return-void
.end method

.method private l(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    new-instance v1, Lcom/miui/powercenter/autotask/l$a;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/autotask/l$a;-><init>(Lcom/miui/powercenter/autotask/l;)V

    invoke-static {p1, v0, p2, v1}, Lcom/miui/powercenter/autotask/n;->i(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;Lcom/miui/powercenter/autotask/n$c;)V

    return-void
.end method

.method private m()V
    .locals 2

    invoke-static {}, Lme/w;->e0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/powercenter/autotask/l;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    const-string v1, "internet"

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->removeOperation(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/l;->f:Lmiuix/preference/TextPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/l;->f:Lmiuix/preference/TextPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/autotask/l;->f:Lmiuix/preference/TextPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private n(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/l;->d:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v0, v1, p1}, Lcom/miui/powercenter/autotask/n;->j(Lmiuix/preference/TextPreference;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/l;->m()V

    return-void
.end method

.method private o()V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->getOperationNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "auto_clean_memory"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/l;->e:Lmiuix/preference/TextPreference;

    :goto_1
    iget-object v3, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v2, v3, v1}, Lcom/miui/powercenter/autotask/n;->j(Lmiuix/preference/TextPreference;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "internet"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/powercenter/autotask/l;->f:Lmiuix/preference/TextPreference;

    goto :goto_1

    :cond_2
    const-string v2, "wifi"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/powercenter/autotask/l;->g:Lmiuix/preference/TextPreference;

    goto :goto_1

    :cond_3
    const-string v2, "mute"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/powercenter/autotask/l;->h:Lmiuix/preference/TextPreference;

    goto :goto_1

    :cond_4
    const-string v2, "vibration"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/miui/powercenter/autotask/l;->i:Lmiuix/preference/TextPreference;

    goto :goto_1

    :cond_5
    const-string v2, "bluetooth"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/miui/powercenter/autotask/l;->j:Lmiuix/preference/TextPreference;

    goto :goto_1

    :cond_6
    const-string v2, "auto_brightness"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/miui/powercenter/autotask/l;->k:Lmiuix/preference/TextPreference;

    goto :goto_1

    :cond_7
    const-string v2, "brightness"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/miui/powercenter/autotask/l;->l:Lmiuix/preference/TextPreference;

    goto :goto_1

    :cond_8
    const-string v2, "airplane_mode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/miui/powercenter/autotask/l;->m:Lmiuix/preference/TextPreference;

    goto :goto_1

    :cond_9
    const-string v2, "gps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/miui/powercenter/autotask/l;->n:Lmiuix/preference/TextPreference;

    goto :goto_1

    :cond_a
    const-string v2, "synchronization"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/powercenter/autotask/l;->o:Lmiuix/preference/TextPreference;

    goto :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/miui/powercenter/autotask/l;->m()V

    return-void
.end method


# virtual methods
.method public b(Landroid/os/Bundle;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const v0, 0x7f15004a

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    new-instance p1, Lcom/miui/powercenter/autotask/l$d;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/miui/powercenter/autotask/l$d;-><init>(Lcom/miui/powercenter/autotask/l;Lcom/miui/powercenter/autotask/OperationEditFragment;Lcom/miui/powercenter/autotask/l$a;)V

    iput-object p1, p0, Lcom/miui/powercenter/autotask/l;->p:Landroidx/preference/Preference$d;

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const-string v0, "screen"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/l;->d:Landroidx/preference/PreferenceScreen;

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const-string v0, "memory_clean"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/l;->e:Lmiuix/preference/TextPreference;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/l;->p:Landroidx/preference/Preference$d;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/l;->e:Lmiuix/preference/TextPreference;

    const-string v0, "auto_clean_memory"

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const-string v0, "mobile_data"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/l;->f:Lmiuix/preference/TextPreference;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/l;->p:Landroidx/preference/Preference$d;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/l;->f:Lmiuix/preference/TextPreference;

    const-string v0, "internet"

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-static {}, Lme/w;->e0()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/autotask/l;->f:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/l;->g:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/l;->p:Landroidx/preference/Preference$d;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/l;->g:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const-string v1, "mute"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/l;->h:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/l;->p:Landroidx/preference/Preference$d;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/l;->h:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const-string v1, "vibration"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/l;->i:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/l;->p:Landroidx/preference/Preference$d;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/l;->i:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/l;->i:Lmiuix/preference/TextPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/powercenter/autotask/k;->a(Landroid/content/Context;)Lcom/miui/powercenter/autotask/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/k;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/powercenter/autotask/l;->i:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const-string v1, "bluetooth"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/l;->j:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/l;->p:Landroidx/preference/Preference$d;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/l;->j:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const-string v1, "auto_brightness"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/l;->k:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/l;->p:Landroidx/preference/Preference$d;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/l;->k:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const-string v1, "brightness"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/l;->l:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/l;->p:Landroidx/preference/Preference$d;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/l;->l:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const-string v1, "aireplane_mode"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/l;->m:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/l;->p:Landroidx/preference/Preference$d;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/l;->m:Lmiuix/preference/TextPreference;

    const-string v1, "airplane_mode"

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const-string v1, "gps"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/l;->n:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/l;->p:Landroidx/preference/Preference$d;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/l;->n:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lme/w;->Y(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/powercenter/autotask/l;->n:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    iget-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast p1, Lcom/miui/powercenter/autotask/OperationEditFragment;

    const-string v0, "sync"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/l;->o:Lmiuix/preference/TextPreference;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/l;->p:Landroidx/preference/Preference$d;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/l;->o:Lmiuix/preference/TextPreference;

    const-string v0, "synchronization"

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/l;->o()V

    return-void
.end method

.method public d(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method
