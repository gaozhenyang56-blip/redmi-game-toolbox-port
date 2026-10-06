.class public Lcom/miui/gamebooster/ui/WifiBoosterDetail;
.super Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;
.source "SourceFile"


# static fields
.field private static final m:Ljava/lang/String; = "com.miui.gamebooster.ui.WifiBoosterDetail"


# instance fields
.field private c:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

.field private d:Lmiuix/slidingwidget/widget/SlidingButton;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/String;

.field private k:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private l:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->i:Ljava/lang/Boolean;

    new-instance v0, Lcom/miui/gamebooster/ui/WifiBoosterDetail$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/WifiBoosterDetail$a;-><init>(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->k:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/gamebooster/ui/WifiBoosterDetail$b;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/WifiBoosterDetail$b;-><init>(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->l:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic f0(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->c:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/gamebooster/ui/WifiBoosterDetail;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->c:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-object p1
.end method

.method static synthetic i0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j0(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->i:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/gamebooster/ui/WifiBoosterDetail;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->i:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic l0(Lcom/miui/gamebooster/ui/WifiBoosterDetail;)Lmiuix/slidingwidget/widget/SlidingButton;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->d:Lmiuix/slidingwidget/widget/SlidingButton;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    const v0, 0x7f0e01b9

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const v0, 0x7f0b0a9f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->d:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->k:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0b0506

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->e:Landroid/widget/ImageView;

    const v0, 0x7f0b0bc9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f121c98

    invoke-static {p0, v1}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f0b0dc2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0303

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->g:Landroid/widget/TextView;

    const v0, 0x7f0b0d0e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v1, 0x7f121c8c

    invoke-static {p0, v1}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->j:Ljava/lang/String;

    const-string v1, "action_detail_wifibooster"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.miui.networkassistant.vpn.MIUI_VPN_MANAGE_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->l:Landroid/content/ServiceConnection;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-static {p0, v0, v1, p1, v2}, Lx4/v;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->j:Ljava/lang/String;

    const-string v1, "action_handsfree_mute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080529

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120b94

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->d:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-static {p1}, Lm6/a;->z(Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->j:Ljava/lang/String;

    const-string v0, "action_detail_gwsd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->g:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->f:Landroid/widget/TextView;

    invoke-static {p0}, La8/b1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->g:Landroid/widget/TextView;

    invoke-static {p0}, La8/b1;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->d:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-static {v0}, Lm6/a;->v(Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->j:Ljava/lang/String;

    const-string v1, "action_detail_wifibooster"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->c:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WifiBoosterDetail;->l:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    return-void
.end method
