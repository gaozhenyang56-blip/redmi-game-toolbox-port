.class public Lcom/miui/powercenter/nightcharge/NightChargeSettingsFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String;


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Lmiuix/slidingwidget/widget/SlidingButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/powercenter/nightcharge/NightChargeSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/powercenter/nightcharge/NightChargeSettingsFragment;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/powercenter/nightcharge/NightChargeSettingsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/nightcharge/NightChargeSettingsFragment;->d0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private c0(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0b09b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/powercenter/nightcharge/NightChargeSettingsFragment;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0a99

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/powercenter/nightcharge/NightChargeSettingsFragment;->b:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-static {}, Lgd/c;->r0()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/nightcharge/NightChargeSettingsFragment;->b:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/nightcharge/NightChargeSettingsFragment;->b:Lmiuix/slidingwidget/widget/SlidingButton;

    new-instance v1, Lzd/c;

    invoke-direct {v1, p0}, Lzd/c;-><init>(Lcom/miui/powercenter/nightcharge/NightChargeSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {}, Lme/e0;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0886

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07173d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private synthetic d0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Lgd/c;->n2(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lgd/c;->n2(Z)V

    invoke-static {p1}, Lmd/c;->r(I)Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lmd/o;->k(Landroid/content/Context;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f13043e

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0e0400

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powercenter/nightcharge/NightChargeSettingsFragment;->c0(Landroid/view/View;)V

    return-object p1
.end method
