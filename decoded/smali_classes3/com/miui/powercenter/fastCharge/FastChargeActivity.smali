.class public Lcom/miui/powercenter/fastCharge/FastChargeActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method private d0()V
    .locals 4

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

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f080a26

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result v3

    invoke-static {p0, v2, v3}, Lme/a;->b(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12036b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    new-instance v0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/fastCharge/FastChargeActivity$a;-><init>(Lcom/miui/powercenter/fastCharge/FastChargeActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    new-instance v0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;

    invoke-direct {v0}, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity;->a:Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;

    const v1, 0x1020002

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    invoke-direct {p0}, Lcom/miui/powercenter/fastCharge/FastChargeActivity;->d0()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "fast_charge_activity_enterway"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "fast_charge_enter_notification"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lhd/a;->f0()V

    :goto_0
    invoke-static {v0}, Lhd/a;->q0(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const-string v0, "fast_charge_exit_notification"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lhd/a;->l0()V

    goto :goto_0

    :cond_1
    const-string v0, "security_center"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lsd/g;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "settings"

    goto :goto_1

    :cond_3
    const-string p1, "other"

    :goto_1
    invoke-static {p1}, Lhd/a;->q0(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
