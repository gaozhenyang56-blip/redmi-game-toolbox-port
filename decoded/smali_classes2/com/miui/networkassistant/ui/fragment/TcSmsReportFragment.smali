.class public Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;
.source "SourceFile"


# static fields
.field private static final ACTION_SMS_DIRECTION:I = 0x2

.field private static final ACTION_SMS_NUM:I = 0x1

.field private static final ACTION_SMS_RECEIVE_NUM:I = 0x3

.field public static final EXTRA_VIEW_FROM:Ljava/lang/String; = "view_from"

.field private static final TITLE_FILED:I = 0x7f121987


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mGetAgainAndReportLayout:Landroid/widget/LinearLayout;

.field private mGetSmsAgainButton:Landroid/widget/Button;

.field private mGetSmsButton:Landroid/widget/Button;

.field private mInputDialog:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

.field private mReportButton:Landroid/widget/Button;

.field private mReturnSmsTextView:Landroid/widget/TextView;

.field private mSmsDirectionToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

.field private mSmsNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

.field private mSmsReceiverNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

.field private mSmsReportListener:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;

.field private mSmsReportSelected:I

.field private mSmsReportString:[Ljava/lang/String;

.field private mSmsReportTypeToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

.field private mSortChoiceDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

.field private mSortedChoiceDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

.field private mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

.field private mTextInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;

.field private mTipsResultTextView:Landroid/widget/TextView;

.field private mUploadType:I

.field private mViewFrom:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportSelected:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mUploadType:I

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSortedChoiceDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;-><init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTextInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$6;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$6;-><init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;-><init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportListener:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportSelected:I

    return p0
.end method

.method static synthetic access$002(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportSelected:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mUploadType:I

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mUploadType:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsDirectionToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReceiverNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$1700(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->checkAndApplyStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->parseReportType(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTipsResultTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->initData()V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->tcSmsReportDeclare()V

    return-void
.end method

.method static synthetic access$2300(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSortChoiceDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->reportSms()V

    return-void
.end method

.method static synthetic access$2700(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->isSmsAndDirectionOk()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->setToolbarItemEnable(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mReturnSmsTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)I
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->getSmsButtonText()I

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mGetAgainAndReportLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportListener:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Lcom/miui/common/base/asyn/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Lcom/miui/common/base/asyn/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mGetSmsButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportString:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportTypeToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->getPreDirectionAndNumber()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/dialog/TextInputDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->isTcServiceConnected()Z

    move-result p0

    return p0
.end method

.method private bindTcSmsReportService()V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const-class v3, Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private checkAndApplyStatus()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mServiceConnected:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->isTcServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;

    invoke-direct {v0, p0, p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getPreDirectionAndNumber()V
    .locals 7

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mServiceConnected:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSlotNum:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mUploadType:I

    invoke-interface {v1, v2}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->getInstructions(I)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mUploadType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSlotNum:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getCustomizedSmsNum()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v6, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSlotNum:I

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getCustomizedSmsContent()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    aget-object v3, v1, v5

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsDirectionToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReceiverNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private getSmsButtonText()I
    .locals 2

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mUploadType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const v0, 0x7f12196d

    return v0

    :cond_0
    const v0, 0x7f121971

    return v0

    :cond_1
    const v0, 0x7f121970

    return v0
.end method

.method private initData()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mServiceConnected:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->isTcServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getCurrentSlotNum()I

    move-result v0

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSlotNum:I

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "correction_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mUploadType:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mUploadType:I

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getReportSmsType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getReportSmsType()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mUploadType:I

    :cond_3
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mUploadType:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->parseReportSelected(I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportSelected:I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportTypeToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportString:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->setToolbarItemEnable(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mGetSmsButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->getSmsButtonText()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mGetSmsButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mGetAgainAndReportLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mGetSmsButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mReturnSmsTextView:Landroid/widget/TextView;

    const v1, 0x7f121981

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->getPreDirectionAndNumber()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->checkAndApplyStatus()V

    :cond_4
    :goto_0
    return-void
.end method

.method private initToolbarListItem()V
    .locals 2

    const v0, 0x7f0b06a5

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportTypeToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    const v0, 0x7f0b069c

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsDirectionToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    const v0, 0x7f0b069d

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    const v0, 0x7f0b069e

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReceiverNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportTypeToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    const v1, 0x7f121989

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setName(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsDirectionToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    const v1, 0x7f12196a

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setName(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    const v1, 0x7f121983

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setName(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReceiverNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    const v1, 0x7f121982

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setName(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportTypeToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsDirectionToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReceiverNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isSmsAndDirectionOk()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->getDesc()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsDirectionToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->getDesc()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReceiverNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->getDesc()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTcServiceConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseReportSelected(I)I
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private parseReportType(I)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x4

    return p1

    :cond_1
    return v0
.end method

.method private reportSms()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->isTcServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mUploadType:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->report(I)V

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragment;->finish()V

    :cond_0
    return-void
.end method

.method private setToolbarItemEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportTypeToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setItemEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setItemEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsDirectionToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setItemEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReceiverNumberToolbar:Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setItemEnabled(Z)V

    return-void
.end method

.method private tcSmsReportDeclare()V
    .locals 6

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12143b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1214a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1214a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    iget-object v4, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    new-instance v5, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$3;

    invoke-direct {v5, p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    invoke-direct {v3, v4, v5}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, v4, v2}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private unBindTcSmsReportService()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultViewModelCreationExtras()Lp0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/k;)Lp0/a;

    move-result-object v0

    return-object v0
.end method

.method protected initView()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->initToolbarListItem()V

    const v0, 0x7f0b01e2

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mGetSmsButton:Landroid/widget/Button;

    const v0, 0x7f0b0668

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mGetAgainAndReportLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b01e3

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mGetSmsAgainButton:Landroid/widget/Button;

    const v0, 0x7f0b01e8

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mReportButton:Landroid/widget/Button;

    const v0, 0x7f0b0bae

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mReturnSmsTextView:Landroid/widget/TextView;

    const v0, 0x7f0b0bc7

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTipsResultTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mGetSmsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mGetSmsAgainButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mReportButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportString:[Ljava/lang/String;

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSortedChoiceDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSortChoiceDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTextInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fragment_arg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "view_from"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mViewFrom:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mViewFrom:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "other"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mViewFrom:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mViewFrom:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackTcSmsShow(Ljava/lang/String;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->bindTcSmsReportService()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f13043e

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e0182

    return v0
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 3

    const/16 v0, 0x10

    invoke-virtual {p1, v0, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1219f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const v1, 0x7f08037f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of v1, p1, Lmiuix/appcompat/app/ActionBar;

    if-eqz v1, :cond_0

    check-cast p1, Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDetach()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/ui/BaseFragment;->onDetach()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportListener:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->unRegisterSmsReportListener(Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->unBindTcSmsReportService()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->onPause()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportListener:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->unRegisterSmsReportListener(Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->onResume()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mTcBinder:Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->mSmsReportListener:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->registerSmsReportListener(Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelTcSmsReceivedNotify(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelTcSmsTimeOutOrFailureNotify(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelDataUsageCorrectionTimeOutOrFailureNotify(Landroid/content/Context;)V

    return-void
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f121987

    return v0
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$8;

    invoke-direct {v0, p0, p0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$8;-><init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

    return-void
.end method
