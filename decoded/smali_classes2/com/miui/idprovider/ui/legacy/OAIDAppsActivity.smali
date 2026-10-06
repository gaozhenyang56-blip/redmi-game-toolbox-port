.class public Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lt9/k;
.implements Landroidx/loader/app/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/common/base/BaseActivity;",
        "Lt9/k;",
        "Landroidx/loader/app/a$a<",
        "Ljava/util/List<",
        "Lcom/miui/permcenter/model/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lu9/c;

.field private b:Landroid/app/AppOpsManager;

.field private c:Z

.field private d:Lmiuix/androidbasewidget/widget/ProgressBar;

.field private e:Lmiuix/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->c:Z

    return-void
.end method

.method public static synthetic d0(Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->h0(ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;)Loj/t;
    .locals 0

    invoke-direct {p0}, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->i0()Loj/t;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->c:Z

    return p0
.end method

.method static synthetic g0(Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;)Landroid/app/AppOpsManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->b:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method private synthetic h0(ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->l0(Z)V

    return-void
.end method

.method private synthetic i0()Loj/t;
    .locals 2

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->a:Lu9/c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-object v1
.end method

.method private k0(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->a:Lu9/c;

    invoke-virtual {v0}, Lu9/c;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->a:Lu9/c;

    invoke-virtual {v0}, Lu9/c;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    const v1, 0x7f1200e6

    const v2, 0x7f12055c

    goto :goto_0

    :cond_2
    const v1, 0x7f121564

    const v2, 0x7f120566

    :goto_0
    new-instance v3, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120f48

    new-instance v2, Lu9/d;

    invoke-direct {v2, p0, p1}, Lu9/d;-><init>(Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;Z)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120499

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    :cond_3
    :goto_1
    return-void
.end method

.method private l0(Z)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->a:Lu9/c;

    invoke-virtual {v1}, Lu9/c;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permcenter/model/a;

    invoke-virtual {v2}, Lcom/miui/permcenter/model/a;->d()Z

    move-result v3

    if-ne v3, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    new-instance v1, Lt9/l;

    iget-object v2, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->b:Landroid/app/AppOpsManager;

    invoke-direct {v1, v2, v0, p1}, Lt9/l;-><init>(Landroid/app/AppOpsManager;Ljava/util/List;Z)V

    new-instance p1, Lu9/e;

    invoke-direct {p1, p0}, Lu9/e;-><init>(Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;)V

    invoke-virtual {v1, p1}, Lt9/l;->c(Lak/a;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/List<",
            "Lcom/miui/permcenter/model/a;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->j0(Lq0/c;Ljava/util/List;)V

    return-void
.end method

.method public e(Landroid/widget/CompoundButton;ZLcom/miui/permcenter/model/a;)V
    .locals 5

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p2}, Lcom/miui/permcenter/model/a;->e(Z)V

    iget-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->b:Landroid/app/AppOpsManager;

    invoke-virtual {p3}, Lcom/miui/permcenter/model/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/miui/permcenter/model/a;->c()I

    move-result v1

    xor-int/lit8 v2, p2, 0x1

    const/16 v3, 0x2735

    invoke-static {p1, v0, v1, v3, v2}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setMode(Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    invoke-static {}, Lx4/z1;->e()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p3}, Lcom/miui/permcenter/model/a;->b()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3e7

    invoke-static {p0, p1, v1}, Lx4/f1;->E(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->b:Landroid/app/AppOpsManager;

    invoke-virtual {p3}, Lcom/miui/permcenter/model/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/miui/permcenter/model/a;->c()I

    move-result v4

    invoke-static {v1, v4}, Lx4/z1;->j(II)I

    move-result v1

    xor-int/2addr p2, v0

    invoke-static {p1, v2, v1, v3, p2}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setMode(Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    :cond_1
    iget-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->b:Landroid/app/AppOpsManager;

    invoke-virtual {p3}, Lcom/miui/permcenter/model/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/miui/permcenter/model/a;->c()I

    move-result p3

    const/16 v1, 0x2736

    invoke-static {p1, p2, p3, v1, v0}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setMode(Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    return-void
.end method

.method public j0(Lq0/c;Ljava/util/List;)V
    .locals 2
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/List<",
            "Lcom/miui/permcenter/model/a;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/miui/permcenter/model/a;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->d:Lmiuix/androidbasewidget/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    iget-object v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->e:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    new-array v0, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, v0}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    iget-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->a:Lu9/c;

    invoke-virtual {p1, p2}, Lu9/c;->p(Ljava/util/List;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->isSupportOAIDApps()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    const-string v0, "key_oaid_show_all_app"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->c:Z

    invoke-virtual {p0, v1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    const v2, 0x7f0e0425

    invoke-virtual {p0, v2}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const-string v2, "appops"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->b:Landroid/app/AppOpsManager;

    const v2, 0x7f0b00e9

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->e:Lmiuix/recyclerview/widget/RecyclerView;

    const v2, 0x7f0b082b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object v2, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->d:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->d:Lmiuix/androidbasewidget/widget/ProgressBar;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setZ(F)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v2, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->e:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    const v2, 0x7f120f41

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    new-instance v1, Lu9/c;

    invoke-direct {v1, p0}, Lu9/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->a:Lu9/c;

    iget-object v2, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->e:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-static {}, Lbl/l;->a()I

    move-result v1

    if-le v1, v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060b72

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lmiuix/recyclerview/card/f;

    invoke-direct {v0, p0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->e:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->a:Lu9/c;

    invoke-virtual {v0, p0}, Lu9/c;->o(Lt9/k;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object v0

    const/16 v1, 0x8c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v0, v1}, Landroidx/loader/app/a;->d(I)Lq0/c;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    :cond_2
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Ljava/util/List<",
            "Lcom/miui/permcenter/model/a;",
            ">;>;"
        }
    .end annotation

    new-instance p1, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity$a;

    invoke-direct {p1, p0, p0}, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity$a;-><init>(Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;Landroid/content/Context;)V

    return-object p1
.end method

.method public onExtraPaddingChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onExtraPaddingChanged(I)V

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->e:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    instance-of v1, v0, Lmiuix/recyclerview/card/f;

    if-eqz v1, :cond_0

    int-to-float p1, p1

    sget v1, Ltm/e;->d:I

    mul-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    check-cast v0, Lmiuix/recyclerview/card/f;

    invoke-virtual {v0, p1}, Lmiuix/recyclerview/card/f;->v(I)V

    invoke-virtual {v0, p1}, Lmiuix/recyclerview/card/f;->u(I)V

    iget-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->e:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->e:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b00a8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const v1, 0x7f0b0972

    if-eq v0, v1, :cond_2

    const v1, 0x7f0b0a65

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->c:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->c:Z

    if-eqz v0, :cond_1

    const v0, 0x7f120c1c

    goto :goto_0

    :cond_1
    const v0, 0x7f121644

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->c:Z

    const-string v1, "key_oaid_show_all_app"

    invoke-static {v1, v0}, Lr4/a;->n(Ljava/lang/String;Z)V

    new-array v0, v2, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->e:Lmiuix/recyclerview/widget/RecyclerView;

    aput-object v1, v0, v3

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    new-array v1, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    iget-object v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->d:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object v0

    const/16 v1, 0x8c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    :goto_1
    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_2
    invoke-direct {p0, v3}, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->k0(Z)V

    return v3

    :cond_3
    invoke-direct {p0, v2}, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->k0(Z)V

    return v3
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0b0a65

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->c:Z

    if-eqz v1, :cond_0

    const v1, 0x7f120c1c

    goto :goto_0

    :cond_0
    const v1, 0x7f121644

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
