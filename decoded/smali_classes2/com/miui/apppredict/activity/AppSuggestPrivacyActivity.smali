.class public Lcom/miui/apppredict/activity/AppSuggestPrivacyActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/apppredict/activity/AppSuggestPrivacyActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/activity/AppSuggestPrivacyActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/apppredict/activity/AppSuggestPrivacyActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/activity/AppSuggestPrivacyActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method private f0()V
    .locals 9

    const v0, 0x7f0b0d50

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120240

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12023d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const v4, 0x7f12023f

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v5

    new-instance v6, Lcom/miui/apppredict/activity/AppSuggestPrivacyActivity$a;

    invoke-direct {v6, p0}, Lcom/miui/apppredict/activity/AppSuggestPrivacyActivity$a;-><init>(Lcom/miui/apppredict/activity/AppSuggestPrivacyActivity;)V

    new-instance v7, Lcom/miui/apppredict/activity/AppSuggestPrivacyActivity$b;

    invoke-direct {v7, p0}, Lcom/miui/apppredict/activity/AppSuggestPrivacyActivity$b;-><init>(Lcom/miui/apppredict/activity/AppSuggestPrivacyActivity;)V

    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v3, 0x21

    invoke-virtual {v8, v6, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v8, v7, v5, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v1, 0x106000d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private g0()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lef/x;->N(Z)V

    invoke-static {p0}, Lp3/c;->d(Landroid/content/Context;)Lp3/c;

    move-result-object v0

    const-string v1, "label_app_predict"

    invoke-virtual {v0, v1}, Lp3/c;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/apppredict/activity/AppSuggestPrivacyActivity;->g0()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    :cond_0
    const p1, 0x7f0e0023

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/apppredict/activity/AppSuggestPrivacyActivity;->f0()V

    const p1, 0x7f0b01ae

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lk3/n;

    invoke-direct {v0, p0}, Lk3/n;-><init>(Lcom/miui/apppredict/activity/AppSuggestPrivacyActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b01c7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lk3/o;

    invoke-direct {v0, p0}, Lk3/o;-><init>(Lcom/miui/apppredict/activity/AppSuggestPrivacyActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
