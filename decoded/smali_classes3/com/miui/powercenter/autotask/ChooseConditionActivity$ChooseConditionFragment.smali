.class public Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;
.super Lcom/miui/common/base/ui/MiuiXPreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/autotask/ChooseConditionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseConditionFragment"
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:Lcom/miui/powercenter/autotask/AutoTask$c;

.field private e:Lmiuix/appcompat/app/AppCompatActivity;

.field private f:Lmiuix/preference/RadioButtonPreference;

.field private g:Lmiuix/preference/RadioButtonPreference;

.field private h:Lmiuix/preference/RadioButtonPreference;

.field private i:Lmiuix/preference/TextPreference;

.field private j:Lmiuix/preference/TextPreference;

.field private k:Lmiuix/preference/TextPreference;

.field private l:Lmiuix/preference/TextPreference;

.field private m:Lcom/miui/powercenter/autotask/AutoTask;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Lmiuix/pickerwidget/widget/NumberPicker$h;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;-><init>()V

    const/16 v0, 0x582

    iput v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->b:I

    const/16 v1, 0x14

    iput v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->c:I

    new-instance v1, Lcom/miui/powercenter/autotask/AutoTask$c;

    const/16 v2, 0x1a4

    invoke-direct {v1, v0, v2}, Lcom/miui/powercenter/autotask/AutoTask$c;-><init>(II)V

    iput-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->d:Lcom/miui/powercenter/autotask/AutoTask$c;

    new-instance v0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$c;-><init>(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;Lcom/miui/powercenter/autotask/ChooseConditionActivity$a;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->p:Lmiuix/pickerwidget/widget/NumberPicker$h;

    return-void
.end method

.method static synthetic c0(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->p0()V

    return-void
.end method

.method static synthetic d0(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->n0()Z

    move-result p0

    return p0
.end method

.method static synthetic e0(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;)Lcom/miui/powercenter/autotask/AutoTask$c;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->d:Lcom/miui/powercenter/autotask/AutoTask$c;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->u0()V

    return-void
.end method

.method static synthetic g0(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->m0()V

    return-void
.end method

.method static synthetic h0(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;)Lmiuix/preference/RadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->g:Lmiuix/preference/RadioButtonPreference;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->c:I

    return p1
.end method

.method static synthetic j0(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->s0()V

    return-void
.end method

.method static synthetic k0(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->b:I

    return p1
.end method

.method static synthetic l0(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->t0()V

    return-void
.end method

.method private m0()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->m:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/AutoTask;->removeAllConditions()V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->f:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->m:Lcom/miui/powercenter/autotask/AutoTask;

    iget v2, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "hour_minute"

    :goto_0
    invoke-virtual {v1, v3, v2}, Lcom/miui/powercenter/autotask/AutoTask;->setCondition(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->g:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->m:Lcom/miui/powercenter/autotask/AutoTask;

    iget v2, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "battery_level_down"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->h:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->m:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->d:Lcom/miui/powercenter/autotask/AutoTask$c;

    invoke-virtual {v2}, Lcom/miui/powercenter/autotask/AutoTask$c;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "hour_minute_duration"

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->m:Lcom/miui/powercenter/autotask/AutoTask;

    const-string v3, "task"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "bundle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private n0()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->h:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->d:Lcom/miui/powercenter/autotask/AutoTask$c;

    iget v2, v0, Lcom/miui/powercenter/autotask/AutoTask$c;->a:I

    iget v0, v0, Lcom/miui/powercenter/autotask/AutoTask$c;->b:I

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private o0()Z
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->f:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->n:Ljava/lang/String;

    const-string v3, "hour_minute"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->o:I

    iget v3, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->b:I

    if-eq v0, v3, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->g:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->n:Ljava/lang/String;

    const-string v3, "battery_level_down"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    iget v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->o:I

    iget v3, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->c:I

    if-eq v0, v3, :cond_4

    move v1, v2

    :cond_4
    return v1

    :cond_5
    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->h:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->n:Ljava/lang/String;

    const-string v3, "hour_minute_duration"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    :cond_6
    iget v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->o:I

    iget-object v3, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->d:Lcom/miui/powercenter/autotask/AutoTask$c;

    invoke-virtual {v3}, Lcom/miui/powercenter/autotask/AutoTask$c;->a()I

    move-result v3

    if-eq v0, v3, :cond_7

    move v1, v2

    :cond_7
    return v1
.end method

.method private p0()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->o0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment$d;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment$d;-><init>(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;)V

    invoke-static {v0, v1}, Lcom/miui/powercenter/autotask/r;->i(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private q0()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->e:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lmiuix/pickerwidget/widget/NumberPicker;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->e:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {v1, v2}, Lmiuix/pickerwidget/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->p:Lmiuix/pickerwidget/widget/NumberPicker$h;

    invoke-virtual {v1, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$h;)V

    iget v2, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->c:I

    invoke-virtual {v1, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private r0(Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;II)V
    .locals 7

    new-instance v6, Lmiuix/appcompat/app/TimePickerDialog;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->e:Lmiuix/appcompat/app/AppCompatActivity;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v6}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private s0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->j:Lmiuix/preference/TextPreference;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1210dc

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private t0()V
    .locals 3

    iget v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->b:I

    invoke-static {v0}, Lcom/miui/powercenter/autotask/AutoTask;->getHourMinute(I)Lcom/miui/powercenter/autotask/AutoTask$b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->i:Lmiuix/preference/TextPreference;

    iget v2, v0, Lcom/miui/powercenter/autotask/AutoTask$b;->a:I

    iget v0, v0, Lcom/miui/powercenter/autotask/AutoTask$b;->b:I

    invoke-static {v2, v0}, Lme/b0;->k(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private u0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->d:Lcom/miui/powercenter/autotask/AutoTask$c;

    iget v0, v0, Lcom/miui/powercenter/autotask/AutoTask$c;->a:I

    invoke-static {v0}, Lcom/miui/powercenter/autotask/AutoTask;->getHourMinute(I)Lcom/miui/powercenter/autotask/AutoTask$b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->d:Lcom/miui/powercenter/autotask/AutoTask$c;

    iget v1, v1, Lcom/miui/powercenter/autotask/AutoTask$c;->b:I

    invoke-static {v1}, Lcom/miui/powercenter/autotask/AutoTask;->getHourMinute(I)Lcom/miui/powercenter/autotask/AutoTask$b;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->k:Lmiuix/preference/TextPreference;

    iget v3, v0, Lcom/miui/powercenter/autotask/AutoTask$b;->a:I

    iget v0, v0, Lcom/miui/powercenter/autotask/AutoTask$b;->b:I

    invoke-static {v3, v0}, Lme/b0;->k(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->l:Lmiuix/preference/TextPreference;

    iget v2, v1, Lcom/miui/powercenter/autotask/AutoTask$b;->a:I

    iget v1, v1, Lcom/miui/powercenter/autotask/AutoTask$b;->b:I

    invoke-static {v2, v1}, Lme/b0;->k(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->e:Lmiuix/appcompat/app/AppCompatActivity;

    const p1, 0x7f150052

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    const-string p1, "ontime"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/RadioButtonPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->f:Lmiuix/preference/RadioButtonPreference;

    const-string p1, "ontime_time"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->i:Lmiuix/preference/TextPreference;

    const-string p1, "battery_level_down"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->g:Lmiuix/preference/RadioButtonPreference;

    const-string v0, "battery_level"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->j:Lmiuix/preference/TextPreference;

    const-string v0, "time_duration"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->h:Lmiuix/preference/RadioButtonPreference;

    const-string v0, "time_start"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->k:Lmiuix/preference/TextPreference;

    const-string v0, "time_end"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->l:Lmiuix/preference/TextPreference;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->f:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->i:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->g:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->j:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->h:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->k:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->l:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "task"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/AutoTask;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->m:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/r;->g(Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->m:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1, v0}, Lcom/miui/powercenter/autotask/AutoTask;->getCondition(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->o:I

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->g:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->m:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/autotask/AutoTask;->getCondition(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->c:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->n:Ljava/lang/String;

    const-string v1, "hour_minute"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->f:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->m:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/autotask/AutoTask;->getCondition(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->b:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->n:Ljava/lang/String;

    const-string v1, "hour_minute_duration"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->h:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->m:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/autotask/AutoTask;->getCondition(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->d:Lcom/miui/powercenter/autotask/AutoTask$c;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/autotask/AutoTask$c;->b(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->f:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->t0()V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->s0()V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->u0()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->i:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->b:I

    invoke-static {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getHourMinute(I)Lcom/miui/powercenter/autotask/AutoTask$b;

    move-result-object p1

    new-instance v0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment$a;-><init>(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;)V

    :goto_0
    iget v1, p1, Lcom/miui/powercenter/autotask/AutoTask$b;->a:I

    iget p1, p1, Lcom/miui/powercenter/autotask/AutoTask$b;->b:I

    invoke-direct {p0, v0, v1, p1}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->r0(Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;II)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->j:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->q0()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->k:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->d:Lcom/miui/powercenter/autotask/AutoTask$c;

    iget p1, p1, Lcom/miui/powercenter/autotask/AutoTask$c;->a:I

    invoke-static {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getHourMinute(I)Lcom/miui/powercenter/autotask/AutoTask$b;

    move-result-object p1

    new-instance v0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment$b;-><init>(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->l:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->d:Lcom/miui/powercenter/autotask/AutoTask$c;

    iget p1, p1, Lcom/miui/powercenter/autotask/AutoTask$c;->b:I

    invoke-static {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getHourMinute(I)Lcom/miui/powercenter/autotask/AutoTask$b;

    move-result-object p1

    new-instance v0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment$c;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment$c;-><init>(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;)V

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
