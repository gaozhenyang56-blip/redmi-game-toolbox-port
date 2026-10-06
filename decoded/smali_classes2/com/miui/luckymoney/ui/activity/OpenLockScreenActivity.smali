.class public Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static EXTRA_ACTION_INTENT:Ljava/lang/String; = "action_intent"


# instance fields
.field private mActionIntent:Landroid/app/PendingIntent;

.field private mActionStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->mActionStarted:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->mActionStarted:Z

    return p0
.end method

.method static synthetic access$002(Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->mActionStarted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;)Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->mActionIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method private startAction(I)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity$1;-><init>(Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x480000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const p1, 0x7f0e04fd

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->EXTRA_ACTION_INTENT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->mActionIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->startAction(I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/activity/OpenLockScreenActivity;->startAction(I)V

    :cond_0
    return-void
.end method
