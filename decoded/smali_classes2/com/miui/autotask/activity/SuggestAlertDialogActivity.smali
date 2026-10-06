.class public Lcom/miui/autotask/activity/SuggestAlertDialogActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/autotask/activity/SuggestAlertDialogActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/SuggestAlertDialogActivity;->l0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/autotask/activity/SuggestAlertDialogActivity;Lcom/miui/autotask/bean/p;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/autotask/activity/SuggestAlertDialogActivity;->j0(Lcom/miui/autotask/bean/p;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic f0(Lcom/miui/autotask/activity/SuggestAlertDialogActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/activity/SuggestAlertDialogActivity;->i0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic g0(Lcom/miui/autotask/activity/SuggestAlertDialogActivity;Lcom/miui/autotask/bean/p;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/autotask/activity/SuggestAlertDialogActivity;->k0(Lcom/miui/autotask/bean/p;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private h0(Lcom/miui/autotask/bean/p;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/autotask/bean/p;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/bean/p;->f()Ljava/lang/String;

    move-result-object p1

    const-string v1, "preset_task_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private synthetic i0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p1, "short_cut_match_preset_dialog"

    invoke-static {p1}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    sget-object p1, Lcom/miui/securityscan/shortcut/d$b;->n:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p0, p1}, Lcom/miui/securityscan/shortcut/d;->c(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/securityscan/shortcut/d$b;->n:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p0, p1}, Lcom/miui/securityscan/shortcut/d;->v(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    :goto_0
    return-void
.end method

.method private synthetic j0(Lcom/miui/autotask/bean/p;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/ai/service/OperationListCollectService;->v(Landroid/content/Context;Lcom/miui/autotask/bean/p;)V

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/SuggestAlertDialogActivity;->h0(Lcom/miui/autotask/bean/p;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "add_preset_task"

    invoke-static {p2, p1}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic k0(Lcom/miui/autotask/bean/p;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/ai/service/OperationListCollectService;->K(Landroid/content/Context;Lcom/miui/autotask/bean/p;)V

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/SuggestAlertDialogActivity;->h0(Lcom/miui/autotask/bean/p;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "no_need_preset_task"

    invoke-static {p2, p1}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic l0(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/autotask/activity/SuggestAlertDialogActivity;->a:Z

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private m0(Landroid/content/Intent;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of v0, p1, Lcom/miui/autotask/bean/p;

    if-nez v0, :cond_1

    return-void

    :cond_1
    check-cast p1, Lcom/miui/autotask/bean/p;

    invoke-virtual {p1}, Lcom/miui/autotask/bean/p;->d()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120365

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120363

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0e00aa

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b029e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0b011d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v6, 0x7f0b0087

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lmiuix/slidingwidget/widget/SlidingSwitch;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/autotask/bean/p;->g()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/miui/autotask/activity/s;

    invoke-direct {v0, p0}, Lcom/miui/autotask/activity/s;-><init>(Lcom/miui/autotask/activity/SuggestAlertDialogActivity;)V

    invoke-virtual {v6, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/SuggestAlertDialogActivity;->h0(Lcom/miui/autotask/bean/p;)Ljava/util/Map;

    move-result-object v0

    const-string v5, "show_preset_dialog"

    invoke-static {v5, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/miui/autotask/activity/t;

    invoke-direct {v3, p0, p1}, Lcom/miui/autotask/activity/t;-><init>(Lcom/miui/autotask/activity/SuggestAlertDialogActivity;Lcom/miui/autotask/bean/p;)V

    invoke-virtual {v0, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/miui/autotask/activity/u;

    invoke-direct {v2, p0, p1}, Lcom/miui/autotask/activity/u;-><init>(Lcom/miui/autotask/activity/SuggestAlertDialogActivity;Lcom/miui/autotask/bean/p;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/autotask/activity/v;

    invoke-direct {v0, p0}, Lcom/miui/autotask/activity/v;-><init>(Lcom/miui/autotask/activity/SuggestAlertDialogActivity;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/SuggestAlertDialogActivity;->m0(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/SuggestAlertDialogActivity;->m0(Landroid/content/Intent;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    iget-boolean v0, p0, Lcom/miui/autotask/activity/SuggestAlertDialogActivity;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method
