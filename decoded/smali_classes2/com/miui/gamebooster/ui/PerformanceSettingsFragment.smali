.class public Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Ll8/e;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/gamebooster/widget/ValueSettingItemView;

.field private b:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private h:Lcom/miui/gamebooster/widget/ValueSettingItemView;

.field private i:Landroid/view/View;

.field private j:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private k:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private l:I

.field private m:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

.field private n:Ll8/f;

.field private o:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

.field private p:Ljava/lang/Boolean;

.field private q:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;

.field private r:Lr0/a;

.field private s:Landroid/content/BroadcastReceiver;

.field private t:Z

.field private u:Landroid/view/ViewGroup;

.field private v:Landroid/view/View;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->p:Ljava/lang/Boolean;

    new-instance v0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$b;-><init>(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->x:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic b0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->o:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-object p0
.end method

.method static synthetic d0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->o:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-object p1
.end method

.method static synthetic e0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->p:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->p:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic g0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->l:I

    return p0
.end method

.method static synthetic i0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->l:I

    return p1
.end method

.method static synthetic j0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->b:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->m:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->m:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-object p1
.end method

.method static synthetic m0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    return-object p0
.end method

.method static synthetic n0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->i:Landroid/view/View;

    return-object p0
.end method

.method static synthetic o0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->j:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    return-object p0
.end method

.method static synthetic p0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->k:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    return-object p0
.end method

.method static synthetic q0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    return-object p0
.end method

.method private s0()V
    .locals 6

    invoke-static {}, Ln6/a;->a()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lc3/w;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lm6/a;->O(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->t:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.miui.networkassistant.vpn.MIUI_VPN_MANAGE_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->x:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-static {v1, v0, v3, v4, v5}, Lx4/v;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->t:Z

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance v0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;-><init>(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$a;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->q:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->w0()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-static {}, Lu6/f;->b()Z

    move-result v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    return-void
.end method

.method private t0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->s:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "gb_thermal_supported_action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$a;-><init>(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)V

    iput-object v1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->s:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->r:Lr0/a;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lr0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private u0()V
    .locals 3

    invoke-static {}, La8/g0;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, La8/y0;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lm6/a;->p(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private v0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->b:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->l:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lh7/g;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->b:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private w0()V
    .locals 3

    invoke-static {}, La8/g0;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lp6/b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-static {}, Lp6/b;->b()Z

    move-result v2

    invoke-virtual {v0, v2, v1, v1}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public S(Ll8/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->n:Ll8/f;

    return-void
.end method

.method protected initView()V
    .locals 7

    const v0, 0x7f0b0894

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/ValueSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->a:Lcom/miui/gamebooster/widget/ValueSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/ValueSettingItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0895

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->b:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    const v0, 0x7f0b07f9

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    const v0, 0x7f0b076f

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/ValueSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->h:Lcom/miui/gamebooster/widget/ValueSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/ValueSettingItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0de6

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->i:Landroid/view/View;

    const v0, 0x7f0b0de7

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->j:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    const v0, 0x7f0b0deb

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->k:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->k:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f121c98

    invoke-static {v1, v2}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->k:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f121c8c

    invoke-static {v1, v2}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setSubTitleText(Ljava/lang/String;)V

    const v0, 0x7f0b0328

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->u0()V

    const v0, 0x7f0b089e

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    const v0, 0x7f0b089f

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120bed

    invoke-static {v1, v2}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const v1, 0x7f120be9

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    const-wide v5, 0x3fc99999a0000000L    # 0.20000000298023224

    invoke-virtual {v3, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setSubTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    const v0, 0x7f0b089d

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const v3, 0x7f10004c

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setSubTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    invoke-static {}, La8/g0;->s()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0b066a

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->u:Landroid/view/ViewGroup;

    const v0, 0x7f0b0229

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->v:Landroid/view/View;

    const v0, 0x7f0b0c52

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/miui/gamebooster/ui/SettingsActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/SettingsActivity;->p0()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->l:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lh7/g;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->b:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-static {}, La8/g0;->T()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->a:Lcom/miui/gamebooster/widget/ValueSettingItemView;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, La8/a1;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, La8/a1;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const-string v2, "com.xiaomi.market"

    invoke-static {v0, v2}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->w0()V

    invoke-static {}, La8/g0;->M()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->t0()V

    return-void
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 11

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->c:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const-string v1, "gs_event_click"

    const-string v2, "on"

    const-string v3, "off"

    const-string v4, "pos"

    const-string v5, "speed_set_1"

    const-string v6, "page_name"

    if-ne p1, v0, :cond_1

    invoke-static {p2}, Lm6/a;->V(Z)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "third_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/miui/analytics/AnalyticsUtil;->trackGameBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->b:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const-string v7, "PerformanceSettingsFrag"

    const/4 v8, 0x1

    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_2

    iget p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->l:I

    if-ne v8, p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->r0()V

    return-void

    :cond_2
    iget p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->l:I

    if-ne v8, p1, :cond_3

    invoke-static {p2}, Lm6/a;->q0(Z)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    if-ne v0, p1, :cond_4

    :try_start_0
    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    check-cast p1, Lcom/miui/gamebooster/ui/SettingsActivity;

    invoke-virtual {p1}, Lcom/miui/gamebooster/ui/SettingsActivity;->n0()Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->m:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    if-eqz p1, :cond_4

    invoke-interface {p1, p2}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->i0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    invoke-static {p2}, Lcom/miui/gamebooster/utils/a$n;->E(Z)V

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->j:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v0, :cond_6

    invoke-static {p2}, Lm6/a;->n0(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->k:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setEnabled(Z)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "seventh_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->k:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v0, :cond_8

    :try_start_1
    iget-object p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->o:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    const-string v0, "xunyou"

    const-string v9, "xunyou_wifi_accel_switch"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v0, v9, v10}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->setSettingEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {p2}, Lm6/a;->o0(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz p2, :cond_7

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_7

    invoke-static {p1}, Lzg/a;->a(Landroid/content/Context;)Lzg/a;

    move-result-object p1

    invoke-virtual {p1, v8}, Lzg/a;->c(Z)V

    :cond_7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eighth_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne v0, p1, :cond_9

    invoke-static {p2}, Lp6/b;->h(Z)V

    invoke-static {p2}, Lcom/miui/gamebooster/utils/a$n;->m(Z)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne v0, p1, :cond_a

    invoke-static {p2}, Lu6/f;->c(Z)V

    invoke-static {p2}, Lcom/miui/gamebooster/utils/a$n;->G(Z)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne v0, p1, :cond_b

    invoke-static {p2}, Lf6/a;->b(Z)V

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne v0, p1, :cond_c

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lm6/a;->X(Landroid/content/Context;Z)V

    :cond_c
    :goto_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->h:Lcom/miui/gamebooster/widget/ValueSettingItemView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->n:Ll8/f;

    if-eqz v0, :cond_0

    new-instance p1, Lcom/miui/gamebooster/ui/WhiteListFragment;

    invoke-direct {p1}, Lcom/miui/gamebooster/ui/WhiteListFragment;-><init>()V

    invoke-interface {v0, p1}, Ll8/f;->C(Lmiuix/appcompat/app/Fragment;)V

    invoke-static {}, Lcom/miui/gamebooster/utils/a$n;->r()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->a:Lcom/miui/gamebooster/widget/ValueSettingItemView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->n:Ll8/f;

    if-eqz v0, :cond_1

    new-instance p1, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;

    invoke-direct {p1}, Lcom/miui/gamebooster/ui/CompetitionDetailFragment;-><init>()V

    invoke-interface {v0, p1}, Ll8/f;->C(Lmiuix/appcompat/app/Fragment;)V

    invoke-static {}, Lcom/miui/gamebooster/utils/a$n;->o()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->w:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, La8/a1;->i(Landroid/content/Context;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "page_name"

    const-string v1, "speed_set_1"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pos"

    const-string v1, "ninth_0"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gs_event_click"

    invoke-static {v0, p1}, Lcom/miui/analytics/AnalyticsUtil;->trackGameBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e01df

    return v0
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->q:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$e;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->x:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->r:Lr0/a;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->s:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lr0/a;->e(Landroid/content/BroadcastReceiver;)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->s0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->v0()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "page_name"

    const-string v2, "speed_set_1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gs_event_pv"

    invoke-static {v1, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackGameBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public r0()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1219df

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1219de

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$d;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$d;-><init>(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$c;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$c;-><init>(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method
