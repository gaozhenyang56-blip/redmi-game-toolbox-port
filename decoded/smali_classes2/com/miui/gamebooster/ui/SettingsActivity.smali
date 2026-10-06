.class public Lcom/miui/gamebooster/ui/SettingsActivity;
.super Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;
.source "SourceFile"


# instance fields
.field private c:Lcom/miui/gamebooster/service/IGameBooster;

.field private d:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

.field private e:I

.field private f:Lr0/a;

.field private g:Z

.field private h:Z

.field private i:Landroid/content/ServiceConnection;

.field private j:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gamebooster/ui/SettingsActivity;->e:I

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/SettingsActivity;->g:Z

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/SettingsActivity;->h:Z

    new-instance v0, Lcom/miui/gamebooster/ui/SettingsActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/SettingsActivity$b;-><init>(Lcom/miui/gamebooster/ui/SettingsActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SettingsActivity;->i:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/gamebooster/ui/SettingsActivity$c;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/SettingsActivity$c;-><init>(Lcom/miui/gamebooster/ui/SettingsActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SettingsActivity;->j:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic f0(Lcom/miui/gamebooster/ui/SettingsActivity;)Lcom/miui/gamebooster/service/IGameBooster;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/SettingsActivity;->c:Lcom/miui/gamebooster/service/IGameBooster;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/gamebooster/ui/SettingsActivity;Lcom/miui/gamebooster/service/IGameBooster;)Lcom/miui/gamebooster/service/IGameBooster;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SettingsActivity;->c:Lcom/miui/gamebooster/service/IGameBooster;

    return-object p1
.end method

.method static synthetic h0(Lcom/miui/gamebooster/ui/SettingsActivity;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/SettingsActivity;->d:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/gamebooster/ui/SettingsActivity;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SettingsActivity;->d:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-object p1
.end method

.method static synthetic j0(Lcom/miui/gamebooster/ui/SettingsActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/ui/SettingsActivity;->e:I

    return p0
.end method

.method static synthetic k0(Lcom/miui/gamebooster/ui/SettingsActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/ui/SettingsActivity;->e:I

    return p1
.end method

.method static synthetic l0(Lcom/miui/gamebooster/ui/SettingsActivity;)Lr0/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/SettingsActivity;->f:Lr0/a;

    return-object p0
.end method

.method private m0()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    invoke-static {}, Lx4/a0;->x()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/ui/SettingsActivity$a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/SettingsActivity$a;-><init>(Lcom/miui/gamebooster/ui/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public n0()Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SettingsActivity;->d:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-object v0
.end method

.method public o0()Lcom/miui/gamebooster/service/IGameBooster;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SettingsActivity;->c:Lcom/miui/gamebooster/service/IGameBooster;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const v0, 0x10a0002

    const v1, 0x10a0003

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const v0, 0x7f1301da

    goto :goto_0

    :cond_0
    const v0, 0x7f1301d9

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setTheme(I)V

    invoke-super {p0, p1}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e002f

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-static {p0}, La8/k2;->w(Landroid/app/Activity;)V

    invoke-static {p0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SettingsActivity;->f:Lr0/a;

    invoke-static {}, La8/i0;->b()Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SettingsActivity;->i:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lx4/v;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    # Huawei: no external PowerKeeper binding

    invoke-static {p0}, La8/b2;->a(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/SettingsActivity;->m0()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "force_show_settings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/SettingsActivity;->g:Z

    const-string v0, "force_show_game_award"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/SettingsActivity;->h:Z

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SettingsActivity;->i:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lx4/v;->x(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SettingsActivity;->j:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    invoke-super {p0}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->onDestroy()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-static {p0}, La8/k2;->w(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public p0()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/ui/SettingsActivity;->e:I

    return v0
.end method

.method public q0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/SettingsActivity;->g:Z

    return v0
.end method

.method public r0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/SettingsActivity;->h:Z

    return v0
.end method

.method public s0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/SettingsActivity;->h:Z

    return-void
.end method
