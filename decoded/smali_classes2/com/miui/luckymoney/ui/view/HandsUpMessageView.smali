.class public Lcom/miui/luckymoney/ui/view/HandsUpMessageView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/luckymoney/ui/view/messageview/MessageView;


# instance fields
.field private final configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

.field private final headsUpView:Lcom/miui/luckymoney/ui/view/HeadsUpView;

.field private mMessage:Lcom/miui/luckymoney/model/message/AppMessage;

.field private mMessageCount:I


# direct methods
.method public constructor <init>(Lcom/miui/luckymoney/model/config/BaseConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->mMessageCount:I

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    new-instance v0, Lcom/miui/luckymoney/ui/view/HeadsUpView;

    invoke-virtual {p1}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/miui/luckymoney/ui/view/HeadsUpView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->headsUpView:Lcom/miui/luckymoney/ui/view/HeadsUpView;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/luckymoney/ui/view/HandsUpMessageView;)Lcom/miui/luckymoney/model/config/BaseConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/luckymoney/ui/view/HandsUpMessageView;)Lcom/miui/luckymoney/ui/view/HeadsUpView;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->headsUpView:Lcom/miui/luckymoney/ui/view/HeadsUpView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/luckymoney/ui/view/HandsUpMessageView;)Lcom/miui/luckymoney/model/message/AppMessage;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->mMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    return-object p0
.end method

.method private getTitle()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->mMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    invoke-interface {v0}, Lcom/miui/luckymoney/model/message/AppMessage;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v1}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :cond_1
    const/16 v1, 0xa

    :goto_1
    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/StringUtil;->getMaxLengthLimitedString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->mMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    invoke-interface {v1}, Lcom/miui/luckymoney/model/message/AppMessage;->isGroupMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v1}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f120b7b

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    iget v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->mMessageCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v1}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1211d1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private showFirstly()V
    .locals 3

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->headsUpView:Lcom/miui/luckymoney/ui/view/HeadsUpView;

    new-instance v1, Lcom/miui/luckymoney/ui/view/HandsUpMessageView$1;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/view/HandsUpMessageView$1;-><init>(Lcom/miui/luckymoney/ui/view/HandsUpMessageView;)V

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->setPositiveClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->headsUpView:Lcom/miui/luckymoney/ui/view/HeadsUpView;

    new-instance v1, Lcom/miui/luckymoney/ui/view/HandsUpMessageView$2;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/view/HandsUpMessageView$2;-><init>(Lcom/miui/luckymoney/ui/view/HandsUpMessageView;)V

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->setNegativeClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->headsUpView:Lcom/miui/luckymoney/ui/view/HeadsUpView;

    new-instance v1, Lcom/miui/luckymoney/ui/view/HandsUpMessageView$3;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/view/HandsUpMessageView$3;-><init>(Lcom/miui/luckymoney/ui/view/HandsUpMessageView;)V

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->setSettingsActionListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->headsUpView:Lcom/miui/luckymoney/ui/view/HeadsUpView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->show(Lcom/miui/luckymoney/model/config/BaseConfiguration;Ljava/lang/String;)V

    return-void
.end method

.method private update()V
    .locals 3

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->headsUpView:Lcom/miui/luckymoney/ui/view/HeadsUpView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->update(Lcom/miui/luckymoney/model/config/BaseConfiguration;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->headsUpView:Lcom/miui/luckymoney/ui/view/HeadsUpView;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->dismiss()V

    return-void
.end method

.method public isAlive()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->headsUpView:Lcom/miui/luckymoney/ui/view/HeadsUpView;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->isAlive()Z

    move-result v0

    return v0
.end method

.method public show(Lcom/miui/luckymoney/model/message/AppMessage;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->mMessageCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->mMessageCount:I

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->mMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->showFirstly()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->update()V

    :goto_0
    iget-object p1, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {p1}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->getLuckyMoneyEventKeyPostfix()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordLuckyMoneyNoti(Ljava/lang/String;Z)V

    return-void
.end method
