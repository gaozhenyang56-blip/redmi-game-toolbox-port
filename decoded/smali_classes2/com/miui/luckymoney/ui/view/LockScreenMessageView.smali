.class public Lcom/miui/luckymoney/ui/view/LockScreenMessageView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/luckymoney/ui/view/messageview/MessageView;


# instance fields
.field private final configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

.field private final lockScreenView:Lcom/miui/luckymoney/ui/view/LockScreenView;

.field private showedMessage:Lcom/miui/luckymoney/model/message/AppMessage;


# direct methods
.method public constructor <init>(Lcom/miui/luckymoney/model/config/BaseConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->showedMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    new-instance v0, Lcom/miui/luckymoney/ui/view/LockScreenView;

    invoke-virtual {p1}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/miui/luckymoney/ui/view/LockScreenView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->lockScreenView:Lcom/miui/luckymoney/ui/view/LockScreenView;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/luckymoney/ui/view/LockScreenMessageView;)Lcom/miui/luckymoney/model/config/BaseConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/luckymoney/ui/view/LockScreenMessageView;)Lcom/miui/luckymoney/ui/view/LockScreenView;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->lockScreenView:Lcom/miui/luckymoney/ui/view/LockScreenView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/luckymoney/ui/view/LockScreenMessageView;)Lcom/miui/luckymoney/model/message/AppMessage;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->showedMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    return-object p0
.end method

.method private getTitle(Lcom/miui/luckymoney/model/message/AppMessage;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/miui/luckymoney/model/message/AppMessage;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f120cb6

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private showFirstly(Lcom/miui/luckymoney/model/message/AppMessage;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->showedMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->lockScreenView:Lcom/miui/luckymoney/ui/view/LockScreenView;

    new-instance v1, Lcom/miui/luckymoney/ui/view/LockScreenMessageView$1;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/view/LockScreenMessageView$1;-><init>(Lcom/miui/luckymoney/ui/view/LockScreenMessageView;)V

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/ui/view/LockScreenView;->setPositiveClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->lockScreenView:Lcom/miui/luckymoney/ui/view/LockScreenView;

    new-instance v1, Lcom/miui/luckymoney/ui/view/LockScreenMessageView$2;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/view/LockScreenMessageView$2;-><init>(Lcom/miui/luckymoney/ui/view/LockScreenMessageView;)V

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/ui/view/LockScreenView;->setNegativeClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->lockScreenView:Lcom/miui/luckymoney/ui/view/LockScreenView;

    new-instance v1, Lcom/miui/luckymoney/ui/view/LockScreenMessageView$3;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/view/LockScreenMessageView$3;-><init>(Lcom/miui/luckymoney/ui/view/LockScreenMessageView;)V

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/ui/view/LockScreenView;->setSettingsClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->lockScreenView:Lcom/miui/luckymoney/ui/view/LockScreenView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->getTitle(Lcom/miui/luckymoney/model/message/AppMessage;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/miui/luckymoney/ui/view/LockScreenView;->show(Lcom/miui/luckymoney/model/config/BaseConfiguration;Ljava/lang/String;)V

    return-void
.end method

.method private update(Lcom/miui/luckymoney/model/message/AppMessage;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->showedMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->lockScreenView:Lcom/miui/luckymoney/ui/view/LockScreenView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->getTitle(Lcom/miui/luckymoney/model/message/AppMessage;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/miui/luckymoney/ui/view/LockScreenView;->update(Lcom/miui/luckymoney/model/config/BaseConfiguration;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->lockScreenView:Lcom/miui/luckymoney/ui/view/LockScreenView;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/LockScreenView;->dismiss()V

    return-void
.end method

.method public isAlive()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->lockScreenView:Lcom/miui/luckymoney/ui/view/LockScreenView;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/LockScreenView;->isAlive()Z

    move-result v0

    return v0
.end method

.method public show(Lcom/miui/luckymoney/model/message/AppMessage;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->showFirstly(Lcom/miui/luckymoney/model/message/AppMessage;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->update(Lcom/miui/luckymoney/model/message/AppMessage;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {p1}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->getLuckyMoneyEventKeyPostfix()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordLuckyMoneyLockedNoti(Ljava/lang/String;Z)V

    return-void
.end method
