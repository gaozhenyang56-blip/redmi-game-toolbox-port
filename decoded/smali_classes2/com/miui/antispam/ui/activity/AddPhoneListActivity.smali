.class public Lcom/miui/antispam/ui/activity/AddPhoneListActivity;
.super Lcom/miui/powercenter/autotask/BaseSettingActivity;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/CheckBox;

.field private f:Landroid/widget/CheckBox;

.field private g:J

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/BaseSettingActivity;-><init>()V

    return-void
.end method

.method static synthetic i0(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    return-object p0
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f0b01f5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->f:Landroid/widget/CheckBox;

    const v0, 0x7f0b07c9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->e:Landroid/widget/CheckBox;

    const v0, 0x7f0b0389

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->d:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->n:Z

    if-eqz v1, :cond_0

    const v1, 0x7f1217cd

    goto :goto_0

    :cond_0
    const v1, 0x7f1217ce

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->d:Landroid/widget/EditText;

    const-string v1, "+0123456789"

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->e:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->e:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->p:Z

    if-eqz v2, :cond_1

    const v2, 0x7f1217d3

    goto :goto_1

    :cond_1
    const v2, 0x7f1217d4

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->f:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->p:Z

    if-eqz v1, :cond_2

    const v1, 0x7f1217d5

    goto :goto_2

    :cond_2
    const v1, 0x7f1217d6

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {}, Lx4/a0;->y()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->r:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lm2/a;->o()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->e:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->p:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->o:Z

    if-eqz v0, :cond_5

    const v0, 0x7f121802

    goto :goto_3

    :cond_5
    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->n:Z

    if-eqz v0, :cond_6

    const v0, 0x7f121804

    goto :goto_3

    :cond_6
    const v0, 0x7f121800

    goto :goto_3

    :cond_7
    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->o:Z

    if-eqz v0, :cond_8

    const v0, 0x7f121803

    goto :goto_3

    :cond_8
    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->n:Z

    if-eqz v0, :cond_9

    const v0, 0x7f121805

    goto :goto_3

    :cond_9
    const v0, 0x7f121801

    :goto_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->p:Z

    const-string v2, ""

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->n:Z

    if-eqz v1, :cond_b

    invoke-static {}, Ln2/a;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_a
    iget-boolean v1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->n:Z

    if-eqz v1, :cond_b

    invoke-static {}, Ln2/a;->c()Ljava/lang/String;

    move-result-object v2

    :cond_b
    :goto_4
    const v1, 0x7f0b0bc9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const v0, 0x7f0b04f4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    const v0, 0x7f0b0240

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/antispam/ui/activity/AddPhoneListActivity$b;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity$b;-><init>(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/antispam/ui/activity/AddPhoneListActivity$c;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity$c;-><init>(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic j0(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->o0()V

    return-void
.end method

.method static synthetic k0(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->d:Landroid/widget/EditText;

    return-object p0
.end method

.method private l0()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private n0(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "id_edit_blacklist"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->g:J

    sget-object v0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->k:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->h:I

    const-string v0, "is_black"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->p:Z

    const-string v0, "number_edit_blacklist"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->k:Ljava/lang/String;

    const-string v0, "state_edit_blacklist"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->i:I

    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->k:Ljava/lang/String;

    :cond_0
    iget-wide v5, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->g:J

    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->q:Z

    if-nez v0, :cond_3

    const-string v0, "sync_edit_blacklist"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->j:I

    const-string v0, "note_edit_blacklist"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->l:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->k:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_2

    iput-boolean v3, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->n:Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->k:Ljava/lang/String;

    const-string v0, "***"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->o:Z

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->n:Z

    :cond_4
    :goto_1
    return-void
.end method

.method private o0()V
    .locals 12

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    invoke-static {}, Lx4/a0;->y()Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    :cond_3
    iget-boolean v4, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->q:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->r:Z

    if-eqz v4, :cond_4

    invoke-static {}, Lm2/a;->o()Z

    move-result v4

    if-nez v4, :cond_4

    move v7, v3

    goto :goto_2

    :cond_4
    move v7, v0

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->n:Z

    if-eqz v4, :cond_5

    const-string v4, "*"

    goto :goto_3

    :cond_5
    const-string v4, ""

    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v4, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->p:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->h:I

    invoke-static {p0, v0, v7, v4}, Lmiui/provider/ExtraTelephony;->isInBlacklist(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v4

    goto :goto_4

    :cond_6
    iget v4, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->h:I

    invoke-static {p0, v0, v7, v4}, Lmiui/provider/ExtraTelephony;->isInWhiteList(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v4

    :goto_4
    iget-boolean v5, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->q:Z

    const v6, 0x7f1217cf

    if-eqz v5, :cond_8

    if-eqz v4, :cond_7

    invoke-static {}, Ld2/c;->b()Ld2/c;

    move-result-object v0

    invoke-virtual {v0, p0, v6}, Ld2/c;->e(Landroid/content/Context;I)Ld2/c;

    return-void

    :cond_7
    new-array v6, v3, [Ljava/lang/String;

    aput-object v0, v6, v2

    const/4 v8, 0x0

    iget v9, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->h:I

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->p:Z

    xor-int/lit8 v10, v0, 0x1

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lm2/f;->N(Landroid/content/Context;[Ljava/lang/String;I[Ljava/lang/Integer;II)V

    goto/16 :goto_7

    :cond_8
    iget-boolean v5, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->o:Z

    const-string v8, "state"

    const/4 v9, 0x0

    if-eqz v5, :cond_9

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->g:J

    invoke-static {v5, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v1, -0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-lez v1, :cond_e

    new-array v6, v3, [Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->l:Ljava/lang/String;

    aput-object v0, v6, v2

    new-array v8, v3, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v2

    iget v9, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->h:I

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->p:Z

    xor-int/lit8 v10, v0, 0x1

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lm2/f;->N(Landroid/content/Context;[Ljava/lang/String;I[Ljava/lang/Integer;II)V

    goto :goto_7

    :cond_9
    iget-object v2, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    if-nez v4, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {}, Ld2/c;->b()Ld2/c;

    move-result-object v0

    invoke-virtual {v0, p0, v6}, Ld2/c;->e(Landroid/content/Context;I)Ld2/c;

    goto :goto_7

    :cond_b
    :goto_5
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "number"

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "display_number"

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v4, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->j:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_c

    move v4, v1

    :cond_c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "sync_dirty"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->g:J

    invoke-static {v5, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->p:Z

    if-eqz v2, :cond_d

    goto :goto_6

    :cond_d
    move v1, v3

    :goto_6
    iget v2, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->h:I

    invoke-static {p0, v0, v7, v1, v2}, Lm2/f;->J(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_e
    :goto_7
    return-void
.end method

.method private p0()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/antispam/ui/activity/AddPhoneListActivity$d;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity$d;-><init>(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->l0()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected d0()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity$a;-><init>(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)V

    return-object v0
.end method

.method protected e0()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->p:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->q:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1217ec

    goto :goto_0

    :cond_0
    const v0, 0x7f1217fb

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->q:Z

    if-eqz v0, :cond_2

    const v0, 0x7f1217ed

    goto :goto_0

    :cond_2
    const v0, 0x7f1217fc

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected f0()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method m0()V
    .locals 5

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->k:Ljava/lang/String;

    const-string v1, "*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->f:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->i:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->e:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->i:I

    if-eq v1, v3, :cond_3

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    :cond_3
    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->o:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->d:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b0240

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->l0()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->n0(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Lcom/miui/powercenter/autotask/BaseSettingActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0020

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-static {}, Lm2/a;->p()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->r:Z

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->initView()V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->m0()V

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->p0()V

    iget-boolean p1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->q:Z

    if-nez p1, :cond_0

    const-string p1, "edit"

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->n:Z

    if-eqz p1, :cond_1

    const-string p1, "prefix"

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->o:Z

    if-eqz p1, :cond_2

    const-string p1, "city"

    goto :goto_0

    :cond_2
    const-string p1, "number"

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->p:Z

    if-eqz v2, :cond_3

    const-string v2, "blacklist"

    goto :goto_1

    :cond_3
    const-string v2, "whitelist"

    :goto_1
    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s_%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->m:Ljava/lang/String;

    invoke-static {p1, v0}, Lc2/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
