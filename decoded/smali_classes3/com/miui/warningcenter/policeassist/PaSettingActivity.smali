.class public Lcom/miui/warningcenter/policeassist/PaSettingActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyRevokeTask;,
        Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable;,
        Lcom/miui/warningcenter/policeassist/PaSettingActivity$SettingsFragment;
    }
.end annotation


# static fields
.field private static final OPTION_MENU_PRIVACY_PRIVACY:I = 0x66

.field private static final OPTION_MENU_REVOKE:I = 0x64

.field private static final OPTION_MENU_USER_NOTICE:I = 0x65


# instance fields
.field private mClosePoliceAssist:Landroid/widget/Button;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mHandler:Landroid/os/Handler;

.field private mOpenPoliceAssist:Landroid/widget/Button;

.field private mRevokeDialog:Lmiuix/appcompat/app/AlertDialog;

.field private resultLauncher:Landroidx/activity/result/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/b<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/warningcenter/policeassist/PaSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->openPoliceassistPrivacy()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/warningcenter/policeassist/PaSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->closePoliceAssist()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/warningcenter/policeassist/PaSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->showRevokeFailedDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/warningcenter/policeassist/PaSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->showPopupMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/warningcenter/policeassist/PaSettingActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/warningcenter/policeassist/PaSettingActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->revokePrivacy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/warningcenter/policeassist/PaSettingActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->startWebPage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/warningcenter/policeassist/PaSettingActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->handleRevoke(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/warningcenter/policeassist/PaSettingActivity;)Landroid/os/CountDownTimer;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$702(Lcom/miui/warningcenter/policeassist/PaSettingActivity;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/warningcenter/policeassist/PaSettingActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mClosePoliceAssist:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/warningcenter/policeassist/PaSettingActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mOpenPoliceAssist:Landroid/widget/Button;

    return-object p0
.end method

.method private checkPrivacyUpdate()V
    .locals 1

    new-instance v0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable;-><init>(Lcom/miui/warningcenter/policeassist/PaSettingActivity;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private closePoliceAssist()V
    .locals 2

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mClosePoliceAssist:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mOpenPoliceAssist:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0, v1}, Lcom/miui/warningcenter/policeassist/PaUtils;->setPoliceAssistToggle(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->onCustomizeActionBar(Lmiuix/appcompat/app/ActionBar;Z)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/warningcenter/policeassist/PaSettingActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->lambda$onCreate$0(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method private handleRevoke(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyRevokeTask;

    invoke-direct {v0, p0, p1}, Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyRevokeTask;-><init>(Lcom/miui/warningcenter/policeassist/PaSettingActivity;Ljava/lang/String;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroidx/activity/result/ActivityResult;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->openPoliceAssist()V

    :cond_0
    return-void
.end method

.method private openPoliceAssist()V
    .locals 2

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mClosePoliceAssist:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mOpenPoliceAssist:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/warningcenter/policeassist/PaUtils;->setPoliceAssistToggle(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->onCustomizeActionBar(Lmiuix/appcompat/app/ActionBar;Z)V

    new-instance v0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$10;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/policeassist/PaSettingActivity$10;-><init>(Lcom/miui/warningcenter/policeassist/PaSettingActivity;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private openPoliceassistPrivacy()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/policeassist/ui/PoliceassistGuideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->resultLauncher:Landroidx/activity/result/b;

    invoke-virtual {v1, v0}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private revokePrivacy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->showNoNetDialog(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->showRevokeDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showNoNetDialog(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f120ea7

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f120ea6

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/miui/warningcenter/policeassist/PaSettingActivity$8;

    invoke-direct {v1, p0}, Lcom/miui/warningcenter/policeassist/PaSettingActivity$8;-><init>(Lcom/miui/warningcenter/policeassist/PaSettingActivity;)V

    const v2, 0x7f120ea4

    invoke-virtual {p1, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private showPopupMenu(Landroid/view/View;)V
    .locals 7

    new-instance v0, Lmiuix/appcompat/widget/PopupMenu;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f121c53

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lmiuix/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121524

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x65

    invoke-interface {v1, v3, v4, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-virtual {v0}, Lmiuix/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1214a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x66

    invoke-interface {v1, v4, v5, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-virtual {v0}, Lmiuix/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1214bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    invoke-interface {v1, v2, v4, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://privacy.mi.com/emergency_location/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://terms.miui.com/doc/alarmassistance.html?lang="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/warningcenter/policeassist/PaSettingActivity$4;

    invoke-direct {v2, p0, p1, v3, v1}, Lcom/miui/warningcenter/policeassist/PaSettingActivity$4;-><init>(Lcom/miui/warningcenter/policeassist/PaSettingActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lmiuix/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v0}, Lmiuix/appcompat/widget/PopupMenu;->show()V

    return-void
.end method

.method private showRevokeDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1214b8

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const/4 v4, 0x2

    aput-object p2, v2, v4

    const p2, 0x7f1214b3

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/miui/warningcenter/policeassist/PaSettingActivity$6;

    invoke-direct {p2, p0}, Lcom/miui/warningcenter/policeassist/PaSettingActivity$6;-><init>(Lcom/miui/warningcenter/policeassist/PaSettingActivity;)V

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1214b4

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/miui/warningcenter/policeassist/PaSettingActivity$5;

    invoke-direct {p2, p0, p3}, Lcom/miui/warningcenter/policeassist/PaSettingActivity$5;-><init>(Lcom/miui/warningcenter/policeassist/PaSettingActivity;Ljava/lang/String;)V

    const p3, 0x7f1214b5

    invoke-virtual {p1, p3, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mRevokeDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    iget-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mRevokeDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/view/View;->setEnabled(Z)V

    new-instance p1, Lcom/miui/warningcenter/policeassist/PaSettingActivity$7;

    const-wide/16 v6, 0x2710

    const-wide/16 v8, 0x3e8

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/miui/warningcenter/policeassist/PaSettingActivity$7;-><init>(Lcom/miui/warningcenter/policeassist/PaSettingActivity;JJLandroid/widget/Button;)V

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private showRevokeFailedDialog()V
    .locals 4

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1214ba

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1214b9

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/miui/warningcenter/policeassist/PaSettingActivity$9;

    invoke-direct {v2, p0}, Lcom/miui/warningcenter/policeassist/PaSettingActivity$9;-><init>(Lcom/miui/warningcenter/policeassist/PaSettingActivity;)V

    const v3, 0x7f120ea4

    invoke-virtual {v1, v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private startWebPage(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

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
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0e056b

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f0b029e

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    const-class v1, Lcom/miui/warningcenter/policeassist/PaSettingActivity$SettingsFragment;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroidx/fragment/app/s;->e(ILjava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mHandler:Landroid/os/Handler;

    new-instance p1, Ld/c;

    invoke-direct {p1}, Ld/c;-><init>()V

    new-instance v1, Lcom/miui/warningcenter/policeassist/a;

    invoke-direct {v1, p0}, Lcom/miui/warningcenter/policeassist/a;-><init>(Lcom/miui/warningcenter/policeassist/PaSettingActivity;)V

    invoke-virtual {p0, p1, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Ld/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->resultLauncher:Landroidx/activity/result/b;

    const p1, 0x7f0b0837

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mOpenPoliceAssist:Landroid/widget/Button;

    const p1, 0x7f0b0260

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mClosePoliceAssist:Landroid/widget/Button;

    iget-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mOpenPoliceAssist:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Lx4/h0;->e(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mClosePoliceAssist:Landroid/widget/Button;

    invoke-static {p1, v1}, Lx4/h0;->e(Landroid/view/View;F)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->registerCoordinatedScrollView(Landroid/view/View;)V

    :cond_2
    invoke-static {p0}, Lcom/miui/warningcenter/policeassist/PaUtils;->getPoliceAssistToggle(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mClosePoliceAssist:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mOpenPoliceAssist:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->checkPrivacyUpdate()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->onCustomizeActionBar(Lmiuix/appcompat/app/ActionBar;Z)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mClosePoliceAssist:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mOpenPoliceAssist:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mOpenPoliceAssist:Landroid/widget/Button;

    new-instance v0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/policeassist/PaSettingActivity$1;-><init>(Lcom/miui/warningcenter/policeassist/PaSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mClosePoliceAssist:Landroid/widget/Button;

    new-instance v0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/policeassist/PaSettingActivity$2;-><init>(Lcom/miui/warningcenter/policeassist/PaSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "warningcenter_pa"

    invoke-static {p1}, Lcom/miui/warningcenter/analytics/AnalyticHelper;->trackMainModuleShow(Ljava/lang/String;)V

    return-void
.end method

.method protected onCustomizeActionBar(Lmiuix/appcompat/app/ActionBar;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const/16 p2, 0x10

    invoke-virtual {p1, p2, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120e53

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f080555

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/policeassist/PaSettingActivity$3;-><init>(Lcom/miui/warningcenter/policeassist/PaSettingActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mRevokeDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mRevokeDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method
