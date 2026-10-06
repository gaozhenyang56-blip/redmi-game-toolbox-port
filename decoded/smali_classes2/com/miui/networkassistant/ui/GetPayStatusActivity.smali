.class public Lcom/miui/networkassistant/ui/GetPayStatusActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/presenter/IpayStatusView;
.implements Lcom/miui/networkassistant/ui/presenter/IpayStatusPresenter;


# instance fields
.field private checkCount:I

.field private deviceId:Ljava/lang/String;

.field private getStatus:Z

.field private isFirst:Z

.field private mDone:Landroid/widget/Button;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOrderDataInfo:Lcom/miui/networkassistant/ui/bean/OrderDataInfo;

.field private mOrderSuccessData:Lcom/miui/networkassistant/ui/bean/OrderSuccessData;

.field private mPayConfirm:Landroid/widget/TextView;

.field private mPayFail:Landroid/widget/ImageView;

.field private mPayStatusPresenter:Lcom/miui/networkassistant/ui/presenter/PayStatusPresenter;

.field private mProductId:Ljava/lang/String;

.field private mProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

.field private mSuccessLayout:Landroid/widget/LinearLayout;

.field private nonce:Ljava/lang/String;

.field private orderTv:Landroid/widget/TextView;

.field private params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private paySuccess:Ljava/lang/String;

.field private priceTv:Landroid/widget/TextView;

.field private productOrderId:Ljava/lang/String;

.field private simpleDateFormat:Ljava/text/SimpleDateFormat;

.field private timeTv:Landroid/widget/TextView;

.field private tvResult:Landroid/widget/TextView;

.field private updateSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->isFirst:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->params:Ljava/util/HashMap;

    const-string v0, "Success"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->paySuccess:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "MM-dd HH:mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->checkCount:I

    new-instance v0, Lcom/miui/networkassistant/ui/c;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/c;-><init>(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->updateSuccess:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->mSuccessLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->mPayFail:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/miui/networkassistant/ui/GetPayStatusActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->mPayFail:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$102(Lcom/miui/networkassistant/ui/GetPayStatusActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->mSuccessLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->mDone:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->tvResult:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/networkassistant/ui/GetPayStatusActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->tvResult:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Lmiuix/androidbasewidget/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->mProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->mPayConfirm:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->orderTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/miui/networkassistant/ui/GetPayStatusActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->orderTv:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->timeTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/miui/networkassistant/ui/GetPayStatusActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->timeTv:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->priceTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$702(Lcom/miui/networkassistant/ui/GetPayStatusActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->priceTv:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Lcom/miui/networkassistant/ui/bean/OrderDataInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->mOrderDataInfo:Lcom/miui/networkassistant/ui/bean/OrderDataInfo;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/networkassistant/ui/GetPayStatusActivity;)Ljava/text/SimpleDateFormat;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public static synthetic d0(Lcom/miui/networkassistant/ui/GetPayStatusActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method private getInfoFromPre(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/f;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b01af

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_0
    return-void
.end method

.method private updateOrderState()V
    .locals 2

    new-instance v0, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/GetPayStatusActivity$1;-><init>(Lcom/miui/networkassistant/ui/GetPayStatusActivity;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

    return-void
.end method


# virtual methods
.method public fetchPayStatus()V
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->checkCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->checkCount:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->mPayStatusPresenter:Lcom/miui/networkassistant/ui/presenter/PayStatusPresenter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/presenter/PayStatusPresenter;->fetchPayStatus()V

    return-void
.end method

.method public bridge synthetic getDefaultViewModelCreationExtras()Lp0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/k;)Lp0/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRatioUiBaseWidthDp()I
    .locals 1

    invoke-static {p0}, Lmiuix/autodensity/i;->a(Lmiuix/autodensity/j;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onActivityCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/common/base/b;->a(Lcom/miui/common/base/c;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onActivityDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->b(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityPause()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->c(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityResume()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->d(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityStart()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->e(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityStop()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->f(Lcom/miui/common/base/c;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e00c5

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    new-instance p1, Lcom/miui/networkassistant/ui/presenter/PayStatusPresenter;

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/miui/networkassistant/ui/presenter/PayStatusPresenter;-><init>(Lcom/miui/networkassistant/ui/presenter/IpayStatusView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->mPayStatusPresenter:Lcom/miui/networkassistant/ui/presenter/PayStatusPresenter;

    const/4 p1, 0x5

    iput p1, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->checkCount:I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->mPayStatusPresenter:Lcom/miui/networkassistant/ui/presenter/PayStatusPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/presenter/PayStatusPresenter;->onDestroy()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    invoke-static {}, Lcom/miui/networkassistant/ui/thread/ThreadPool;->startup()V

    const v0, 0x7f0b0910

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->mProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b0cc4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->mPayConfirm:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1203eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b01af

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->mDone:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->fetchPayStatus()V

    :cond_0
    return-void
.end method

.method public showData(Lcom/miui/networkassistant/ui/bean/OrderSuccessData;)V
    .locals 1
    .param p1    # Lcom/miui/networkassistant/ui/bean/OrderSuccessData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/OrderSuccessData;->getData()Lcom/miui/networkassistant/ui/bean/OrderDataInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->mOrderDataInfo:Lcom/miui/networkassistant/ui/bean/OrderDataInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/OrderSuccessData;->getData()Lcom/miui/networkassistant/ui/bean/OrderDataInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/OrderSuccessData;->getData()Lcom/miui/networkassistant/ui/bean/OrderDataInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/OrderDataInfo;->getPayStatus()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->paySuccess:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->updateSuccess:Z

    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->updateSuccess:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->checkCount:I

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->fetchPayStatus()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->updateOrderState()V

    :goto_1
    return-void
.end method

.method public showError()V
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->checkCount:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/GetPayStatusActivity;->fetchPayStatus()V

    :cond_0
    return-void
.end method
