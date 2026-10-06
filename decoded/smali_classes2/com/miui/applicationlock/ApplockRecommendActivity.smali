.class public Lcom/miui/applicationlock/ApplockRecommendActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/applicationlock/ApplockRecommendActivity$c;
    }
.end annotation


# instance fields
.field private a:Lmiuix/recyclerview/widget/RecyclerView;

.field private b:Lz2/c;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Lak/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/l<",
            "Ljava/lang/Integer;",
            "Loj/t;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lc3/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/miui/applicationlock/ApplockRecommendActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/ApplockRecommendActivity$a;-><init>(Lcom/miui/applicationlock/ApplockRecommendActivity;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ApplockRecommendActivity;->e:Lak/l;

    new-instance v0, Lcom/miui/applicationlock/ApplockRecommendActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/ApplockRecommendActivity$b;-><init>(Lcom/miui/applicationlock/ApplockRecommendActivity;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ApplockRecommendActivity;->f:Ljava/util/Comparator;

    return-void
.end method

.method public static synthetic d0(Lcom/miui/applicationlock/ApplockRecommendActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ApplockRecommendActivity;->lambda$initView$0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e0(Lcom/miui/applicationlock/ApplockRecommendActivity;)Lz2/c;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/ApplockRecommendActivity;->b:Lz2/c;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/applicationlock/ApplockRecommendActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ApplockRecommendActivity;->i0()V

    return-void
.end method

.method static synthetic g0(Lcom/miui/applicationlock/ApplockRecommendActivity;)Ljava/util/Comparator;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/ApplockRecommendActivity;->f:Ljava/util/Comparator;

    return-object p0
.end method

.method private h0()V
    .locals 3

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ApplockRecommendActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, La8/z;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0701ae

    goto :goto_0

    :cond_1
    const v2, 0x7f0701ad

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/miui/applicationlock/ApplockRecommendActivity;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private i0()V
    .locals 7

    iget-object v0, p0, Lcom/miui/applicationlock/ApplockRecommendActivity;->b:Lz2/c;

    invoke-virtual {v0}, Lz2/c;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc3/b;

    invoke-virtual {v3}, Lc3/b;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ApplockRecommendActivity;->j0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/applicationlock/ApplockRecommendActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10001b

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v1

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initView()V
    .locals 5

    const v0, 0x7f0b049a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/applicationlock/ApplockRecommendActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/HyperGridLayoutManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/HyperGridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/HyperGridLayoutManager;->x(F)V

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {p0, v2}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/HyperGridLayoutManager;->y(F)V

    iget-object v2, p0, Lcom/miui/applicationlock/ApplockRecommendActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance v0, Lz2/c;

    iget-object v2, p0, Lcom/miui/applicationlock/ApplockRecommendActivity;->e:Lak/l;

    invoke-direct {v0, v2}, Lz2/c;-><init>(Lak/l;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ApplockRecommendActivity;->b:Lz2/c;

    iget-object v2, p0, Lcom/miui/applicationlock/ApplockRecommendActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    const v0, 0x7f0b0d02

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b0c27

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/applicationlock/ApplockRecommendActivity;->c:Landroid/widget/TextView;

    const v2, 0x7f0b01b6

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miui/applicationlock/ApplockRecommendActivity;->d:Landroid/widget/Button;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x60

    invoke-static {p0, v2}, Lme/e0;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/miui/applicationlock/ApplockRecommendActivity;->j0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const v1, 0x7f1202ab

    invoke-virtual {v3, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ApplockRecommendActivity;->d:Landroid/widget/Button;

    new-instance v1, Lz2/g;

    invoke-direct {v1, p0}, Lz2/g;-><init>(Lcom/miui/applicationlock/ApplockRecommendActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private j0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<font color=\"#5BD16B\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</font>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private k0()V
    .locals 5

    const-string v0, "security"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iget-object v1, p0, Lcom/miui/applicationlock/ApplockRecommendActivity;->b:Lz2/c;

    invoke-virtual {v1}, Lz2/c;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc3/b;

    invoke-virtual {v2}, Lc3/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lc3/b;->f()Z

    move-result v4

    invoke-virtual {v2}, Lc3/b;->d()I

    move-result v2

    invoke-virtual {v0, v3, v4, v2}, Lmiui/security/SecurityManager;->setApplicationAccessControlEnabledForUser(Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private l0()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_data"

    const-string v2, "not_home_start"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ApplockRecommendActivity;->k0()V

    invoke-direct {p0}, Lcom/miui/applicationlock/ApplockRecommendActivity;->l0()V

    const-string p1, "recommend_agree"

    invoke-static {p1}, La3/a;->m(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    invoke-direct {p0}, Lcom/miui/applicationlock/ApplockRecommendActivity;->l0()V

    const-string v0, "recommend_back"

    invoke-static {v0}, La3/a;->m(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/miui/applicationlock/ApplockRecommendActivity;->h0()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e009f

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/applicationlock/ApplockRecommendActivity;->initView()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object p1

    new-instance v0, Lcom/miui/applicationlock/ApplockRecommendActivity$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/applicationlock/ApplockRecommendActivity$c;-><init>(Lcom/miui/applicationlock/ApplockRecommendActivity;Lcom/miui/applicationlock/ApplockRecommendActivity$a;)V

    const/16 v2, 0x6e

    invoke-virtual {p1, v2, v1, v0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    invoke-direct {p0}, Lcom/miui/applicationlock/ApplockRecommendActivity;->h0()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/ApplockRecommendActivity;->l0()V

    const-string v0, "recommend_back"

    invoke-static {v0}, La3/a;->m(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "first_recommend"

    invoke-static {v0}, La3/a;->l(Ljava/lang/String;)V

    return-void
.end method
