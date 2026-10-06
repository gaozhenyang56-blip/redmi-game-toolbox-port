.class public Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity$a;
    }
.end annotation


# static fields
.field private static j:[I

.field private static k:[I


# instance fields
.field private a:Landroidx/viewpager/widget/ViewPager;

.field private b:Lcom/miui/privacyapps/view/ViewPagerIndicator;

.field private c:Landroid/widget/Button;

.field private d:Landroid/view/LayoutInflater;

.field private e:Lc3/d;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpe/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->j:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->k:[I

    return-void

    :array_0
    .array-data 4
        0x7f080dd3
        0x7f080dd5
        0x7f080dd4
    .end array-data

    :array_1
    .array-data 4
        0x7f121433
        0x7f121435
        0x7f121434
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->g:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->i:Ljava/util/List;

    return-void
.end method

.method static synthetic d0(Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->d:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->i:Ljava/util/List;

    return-object p0
.end method

.method public static f0([I)[I
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [I

    if-eqz p0, :cond_0

    array-length v1, p0

    new-array v1, v1, [I

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    add-int/lit8 v3, v0, 0x1

    aget v4, p0, v2

    aput v4, v1, v0

    add-int/lit8 v2, v2, -0x1

    move v0, v3

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x3

    if-ne p1, p3, :cond_1

    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->f:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->f:Z

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0e046c

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "stateNeedPass"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->g:Z

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, "state"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->f:Z

    :cond_1
    invoke-static {}, Lx4/t;->h()I

    move-result p1

    const/16 v2, 0xa

    if-lt p1, v2, :cond_2

    invoke-static {}, Lx4/t;->p()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    :cond_2
    invoke-static {p0}, Lc3/d;->j(Landroid/content/Context;)Lc3/d;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->e:Lc3/d;

    const p1, 0x7f0b0d8d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->a:Landroidx/viewpager/widget/ViewPager;

    const p1, 0x7f0b056b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/privacyapps/view/ViewPagerIndicator;

    iput-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->b:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    invoke-static {}, Lc3/f;->P()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->j:[I

    invoke-static {p1}, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->f0([I)[I

    move-result-object p1

    sput-object p1, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->j:[I

    sget-object p1, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->k:[I

    invoke-static {p1}, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->f0([I)[I

    move-result-object p1

    sput-object p1, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->k:[I

    :cond_3
    :goto_0
    const/4 p1, 0x3

    if-ge v1, p1, :cond_4

    new-instance p1, Lpe/b;

    invoke-direct {p1}, Lpe/b;-><init>()V

    sget-object v2, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->j:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Lpe/b;->c(I)V

    sget-object v2, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->k:[I

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lpe/b;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->i:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->b:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    iget-object v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->setIndicatorNum(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->d:Landroid/view/LayoutInflater;

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->a:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity$a;

    invoke-direct {v1, p0}, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity$a;-><init>(Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;)V

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    const p1, 0x7f0b0d4f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->c:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-static {}, Lc3/f;->P()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->a:Landroidx/viewpager/widget/ViewPager;

    sget-object v1, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->j:[I

    array-length v1, v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lse/a;

    invoke-direct {v0, p1}, Lse/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lse/a;->c()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->h:Z

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    invoke-static {}, Lc3/f;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->b:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    sget-object v1, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->j:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->setSelected(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->b:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    invoke-virtual {v0, p1}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->setSelected(I)V

    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->g:Z

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->e:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->g:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/PrivacyAppsConfirmAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->f:Z

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->f:Z

    const-string v1, "state"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "stateNeedPass"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->f:Z

    :cond_0
    return-void
.end method
