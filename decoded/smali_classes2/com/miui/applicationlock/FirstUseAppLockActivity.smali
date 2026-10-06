.class public Lcom/miui/applicationlock/FirstUseAppLockActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/applicationlock/FirstUseAppLockActivity$c;,
        Lcom/miui/applicationlock/FirstUseAppLockActivity$b;,
        Lcom/miui/applicationlock/FirstUseAppLockActivity$d;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Lc3/d;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/applicationlock/FirstUseAppLockActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e0(Lcom/miui/applicationlock/FirstUseAppLockActivity;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->j0(ILjava/util/List;)V

    return-void
.end method

.method private f0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, La8/z;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0701ae

    goto :goto_0

    :cond_0
    const v2, 0x7f0701ad

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->a:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private g0()V
    .locals 4

    const v0, 0x7f0b05de

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private h0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->b:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->l()Z

    move-result v0

    const/16 v1, 0x65

    const-string v2, "extra_data"

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/miui/applicationlock/LockChooseAccessControl;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "forbide"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->c:Ljava/lang/String;

    const-string v3, "external_app_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-static {}, La3/a;->s()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "HappyCoding"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method private i0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->d:Ljava/lang/String;

    const-string v1, "AlarmReceiver"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lc3/f;->p0(Z)V

    :cond_0
    return-void
.end method

.method private j0(ILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v4, 0x7f100019

    invoke-virtual {v1, v4, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f12028a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Landroid/text/SpannableString;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v6, 0x7f060000

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {p1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    move v2, v3

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x21

    if-ge v2, v6, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {p0, v6, v3}, Lx4/f1;->h(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v8, Lcom/miui/applicationlock/FirstUseAppLockActivity$c;

    invoke-direct {v8, p0, v6}, Lcom/miui/applicationlock/FirstUseAppLockActivity$c;-><init>(Lcom/miui/applicationlock/FirstUseAppLockActivity;Landroid/graphics/Bitmap;)V

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v8, v2, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move v2, v6

    goto :goto_0

    :cond_0
    add-int/2addr v1, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {v5, p1, v1, p2, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private k0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->d:Ljava/lang/String;

    const-string v1, "AlarmReceiver"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lgh/b;->f()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->h0()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    const-string p2, "security"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiui/security/SecurityManager;

    iget-object v0, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->c:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lmiui/security/SecurityManager;->setApplicationAccessControlEnabled(Ljava/lang/String;Z)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0, p3}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    :cond_2
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    const/4 p1, 0x0

    const p2, 0x7f01008c

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->k0()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    const/4 v0, 0x0

    const v1, 0x7f01008c

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    const-string v0, "left"

    invoke-static {v0}, La3/a;->C(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lx4/t;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->g0()V

    invoke-direct {p0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->f0()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0036

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc3/d;->j(Landroid/content/Context;)Lc3/d;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->b:Lc3/d;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "external_app_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->b:Lc3/d;

    invoke-virtual {p1}, Lc3/d;->t()Z

    move-result p1

    iget-object v0, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->b:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_enterway"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, La3/a;->k(Ljava/lang/String;)V

    :cond_1
    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p1

    const/16 v0, 0x6e

    new-instance v1, Lcom/miui/applicationlock/FirstUseAppLockActivity$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/applicationlock/FirstUseAppLockActivity$d;-><init>(Lcom/miui/applicationlock/FirstUseAppLockActivity;Lcom/miui/applicationlock/FirstUseAppLockActivity$a;)V

    invoke-virtual {p1, v0, v2, v1}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    const p1, 0x7f0b01b6

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->a:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->i0()V

    iget-object p1, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->a:Landroid/widget/Button;

    new-instance v0, Lz2/f0;

    invoke-direct {v0, p0}, Lz2/f0;-><init>(Lcom/miui/applicationlock/FirstUseAppLockActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lx4/t;->p()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->g0()V

    invoke-direct {p0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->f0()V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroidx/loader/app/a;->a(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->k0()V

    const-string v0, "left"

    invoke-static {v0}, La3/a;->C(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "first_guide"

    invoke-static {v0}, La3/a;->l(Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
