.class public Lcom/miui/autotask/fragment/AddTimeConditionFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# instance fields
.field private a:I

.field private b:Lcom/miui/powercenter/autotask/AutoTask$c;

.field private c:Lmiuix/preference/RadioButtonPreference;

.field private d:Lmiuix/preference/RadioButtonPreference;

.field private e:Lmiuix/preference/TextPreference;

.field private f:Lmiuix/preference/TextPreference;

.field private g:Lmiuix/preference/TextPreference;

.field private h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

.field private i:Lcom/miui/autotask/taskitem/CustomTimeConditionItem;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    const/16 v0, 0x582

    iput v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->a:I

    new-instance v1, Lcom/miui/powercenter/autotask/AutoTask$c;

    const/16 v2, 0x1a4

    invoke-direct {v1, v0, v2}, Lcom/miui/powercenter/autotask/AutoTask$c;-><init>(II)V

    iput-object v1, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->b:Lcom/miui/powercenter/autotask/AutoTask$c;

    return-void
.end method

.method static synthetic a0(Lcom/miui/autotask/fragment/AddTimeConditionFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->a:I

    return p1
.end method

.method static synthetic b0(Lcom/miui/autotask/fragment/AddTimeConditionFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->h0()V

    return-void
.end method

.method static synthetic c0(Lcom/miui/autotask/fragment/AddTimeConditionFragment;)Lcom/miui/powercenter/autotask/AutoTask$c;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->b:Lcom/miui/powercenter/autotask/AutoTask$c;

    return-object p0
.end method

.method static synthetic d0(Lcom/miui/autotask/fragment/AddTimeConditionFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->i0()V

    return-void
.end method

.method private g0(Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;II)V
    .locals 7

    new-instance v6, Lmiuix/appcompat/app/TimePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v6}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private h0()V
    .locals 3

    iget v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->a:I

    invoke-static {v0}, Lcom/miui/powercenter/autotask/AutoTask;->getHourMinute(I)Lcom/miui/powercenter/autotask/AutoTask$b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->e:Lmiuix/preference/TextPreference;

    iget v2, v0, Lcom/miui/powercenter/autotask/AutoTask$b;->a:I

    iget v0, v0, Lcom/miui/powercenter/autotask/AutoTask$b;->b:I

    invoke-static {v2, v0}, Lme/b0;->k(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private i0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->b:Lcom/miui/powercenter/autotask/AutoTask$c;

    iget v0, v0, Lcom/miui/powercenter/autotask/AutoTask$c;->a:I

    invoke-static {v0}, Lcom/miui/powercenter/autotask/AutoTask;->getHourMinute(I)Lcom/miui/powercenter/autotask/AutoTask$b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->b:Lcom/miui/powercenter/autotask/AutoTask$c;

    iget v1, v1, Lcom/miui/powercenter/autotask/AutoTask$c;->b:I

    invoke-static {v1}, Lcom/miui/powercenter/autotask/AutoTask;->getHourMinute(I)Lcom/miui/powercenter/autotask/AutoTask$b;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->f:Lmiuix/preference/TextPreference;

    iget v3, v0, Lcom/miui/powercenter/autotask/AutoTask$b;->a:I

    iget v0, v0, Lcom/miui/powercenter/autotask/AutoTask$b;->b:I

    invoke-static {v3, v0}, Lme/b0;->k(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->g:Lmiuix/preference/TextPreference;

    iget v2, v1, Lcom/miui/powercenter/autotask/AutoTask$b;->a:I

    iget v1, v1, Lcom/miui/powercenter/autotask/AutoTask$b;->b:I

    invoke-static {v2, v1}, Lme/b0;->k(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public e0(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    const v1, 0x7f121253

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->i:Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->z()Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    iget-object p1, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->i:Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->z()Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    move-result-object p1

    goto :goto_2

    :cond_1
    const-string v0, "repeat"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    :goto_1
    new-instance p1, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;-><init>(I)V

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->k(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {v2, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->l(Lcom/miui/powercenter/bootshutdown/DaysOfWeek;)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public f0()Lcom/miui/autotask/taskitem/TaskItem;
    .locals 2

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->i:Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    invoke-direct {v0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->i:Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->i:Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    iget-object v1, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {v1}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->k()Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->E(Lcom/miui/powercenter/bootshutdown/DaysOfWeek;)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->c:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->i:Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->G(I)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->i:Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    iget v1, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->a:I

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->D(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->i:Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->G(I)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->i:Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    iget-object v1, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->b:Lcom/miui/powercenter/autotask/AutoTask$c;

    iget v1, v1, Lcom/miui/powercenter/autotask/AutoTask$c;->a:I

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->F(I)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->i:Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    iget-object v1, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->b:Lcom/miui/powercenter/autotask/AutoTask$c;

    iget v1, v1, Lcom/miui/powercenter/autotask/AutoTask$c;->b:I

    invoke-virtual {v0, v1}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->C(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->i:Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    return-object v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6

    const p2, 0x7f15003e

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    const-string p2, "ontime"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lmiuix/preference/RadioButtonPreference;

    iput-object p2, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->c:Lmiuix/preference/RadioButtonPreference;

    const-string p2, "ontime_time"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lmiuix/preference/TextPreference;

    iput-object p2, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->e:Lmiuix/preference/TextPreference;

    const-string p2, "time_duration"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lmiuix/preference/RadioButtonPreference;

    iput-object p2, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->d:Lmiuix/preference/RadioButtonPreference;

    const-string p2, "time_start"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lmiuix/preference/TextPreference;

    iput-object p2, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->f:Lmiuix/preference/TextPreference;

    const-string p2, "time_end"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lmiuix/preference/TextPreference;

    iput-object p2, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->g:Lmiuix/preference/TextPreference;

    const-string p2, "new_time_condition_repeat"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    iput-object p2, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    iget-object p2, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->c:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p2, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->e:Lmiuix/preference/TextPreference;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p2, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->d:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p2, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->f:Lmiuix/preference/TextPreference;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p2, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->g:Lmiuix/preference/TextPreference;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p2, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "taskItem"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    instance-of v0, p2, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    iput-object p2, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->i:Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    :cond_0
    iget-object p2, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->i:Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    if-eqz p2, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->B()I

    move-result p2

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->i:Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    invoke-virtual {v1}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->x()I

    move-result v1

    iput v1, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->a:I

    iget-object v1, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->i:Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    invoke-virtual {v1}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->w()I

    move-result v1

    iget-object v2, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->i:Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    invoke-virtual {v2}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->A()I

    move-result v2

    goto :goto_0

    :cond_1
    const-string v1, "timeType"

    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iget v1, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->a:I

    const-string v2, "timeValue"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->a:I

    const-string v1, "timeEnd"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "timeStart"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->c:Lmiuix/preference/RadioButtonPreference;

    const/4 v4, 0x1

    if-ne p2, v4, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    invoke-virtual {v3, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->d:Lmiuix/preference/RadioButtonPreference;

    const/4 v5, 0x2

    if-ne p2, v5, :cond_3

    move v0, v4

    :cond_3
    invoke-virtual {v3, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p2, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->b:Lcom/miui/powercenter/autotask/AutoTask$c;

    iput v1, p2, Lcom/miui/powercenter/autotask/AutoTask$c;->b:I

    iput v2, p2, Lcom/miui/powercenter/autotask/AutoTask$c;->a:I

    :cond_4
    invoke-virtual {p0, p1}, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->e0(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->h0()V

    invoke-direct {p0}, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->i0()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->e:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->a:I

    invoke-static {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getHourMinute(I)Lcom/miui/powercenter/autotask/AutoTask$b;

    move-result-object p1

    new-instance v0, Lcom/miui/autotask/fragment/AddTimeConditionFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/autotask/fragment/AddTimeConditionFragment$a;-><init>(Lcom/miui/autotask/fragment/AddTimeConditionFragment;)V

    :goto_0
    iget v1, p1, Lcom/miui/powercenter/autotask/AutoTask$b;->a:I

    iget p1, p1, Lcom/miui/powercenter/autotask/AutoTask$b;->b:I

    invoke-direct {p0, v0, v1, p1}, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->g0(Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;II)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->f:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->b:Lcom/miui/powercenter/autotask/AutoTask$c;

    iget p1, p1, Lcom/miui/powercenter/autotask/AutoTask$c;->a:I

    invoke-static {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getHourMinute(I)Lcom/miui/powercenter/autotask/AutoTask$b;

    move-result-object p1

    new-instance v0, Lcom/miui/autotask/fragment/AddTimeConditionFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/autotask/fragment/AddTimeConditionFragment$b;-><init>(Lcom/miui/autotask/fragment/AddTimeConditionFragment;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->g:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->b:Lcom/miui/powercenter/autotask/AutoTask$c;

    iget p1, p1, Lcom/miui/powercenter/autotask/AutoTask$c;->b:I

    invoke-static {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getHourMinute(I)Lcom/miui/powercenter/autotask/AutoTask$b;

    move-result-object p1

    new-instance v0, Lcom/miui/autotask/fragment/AddTimeConditionFragment$c;

    invoke-direct {v0, p0}, Lcom/miui/autotask/fragment/AddTimeConditionFragment$c;-><init>(Lcom/miui/autotask/fragment/AddTimeConditionFragment;)V

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->c:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    const-string v1, "timeType"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->a:I

    const-string v1, "timeValue"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->b:Lcom/miui/powercenter/autotask/AutoTask$c;

    iget v0, v0, Lcom/miui/powercenter/autotask/AutoTask$c;->a:I

    const-string v1, "timeStart"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->b:Lcom/miui/powercenter/autotask/AutoTask$c;

    iget v0, v0, Lcom/miui/powercenter/autotask/AutoTask$c;->b:I

    const-string v1, "timeEnd"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->h:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-virtual {v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->k()Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    move-result-object v0

    const-string v1, "repeat"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->d(Z)V

    :cond_0
    return-void
.end method
