.class public Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;

.field d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$a;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$a;-><init>(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)V

    iput-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic d0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->a:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->c:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method private g0()Z
    .locals 2

    const-string v0, "persist.mtbf.test"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private h0()V
    .locals 5

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->a:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->a:Landroid/widget/ImageView;

    const v3, 0x7f080a48

    invoke-static {p0}, Lx4/r0;->d(Landroid/content/Context;)Z

    move-result v4

    invoke-static {p0, v3, v4}, Lme/a;->b(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120f48

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->b:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->b:Landroid/widget/ImageView;

    const v2, 0x7f080a42

    invoke-static {p0}, Lx4/r0;->d(Landroid/content/Context;)Z

    move-result v3

    invoke-static {p0, v2, v3}, Lme/a;->b(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120499

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->g0()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "PowerShutdownOnTime"

    const-string v0, "onCreate: finish in MTBF mode"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "fragment"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->c:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    new-instance v1, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;

    invoke-direct {v1}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;-><init>()V

    iput-object v1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->c:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;

    const v2, 0x1020002

    invoke-virtual {p1, v2, v1, v0}, Landroidx/fragment/app/s;->w(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    :cond_1
    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->h0()V

    invoke-static {}, Lhd/a;->U()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "power_shutdown_ontime"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "power_shutdown_notification"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lhd/a;->r1()V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->c:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->l0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->c:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;

    invoke-static {p1}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->m0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
