.class public Lcom/miui/permcenter/detection/RiskAppDeleteActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/detection/RiskAppDeleteActivity$d;
    }
.end annotation


# instance fields
.field private a:Ltb/d;

.field private b:Landroid/widget/Button;

.field private c:Lcom/miui/permcenter/detection/RiskAppDeleteActivity$d;

.field private d:Lmiuix/appcompat/app/ProgressDialog;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/detection/model/RiskAppInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lmiuix/recyclerview/widget/RecyclerView;

.field private g:Ltb/d$b;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/detection/RiskAppDeleteActivity$a;-><init>(Lcom/miui/permcenter/detection/RiskAppDeleteActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->g:Ltb/d$b;

    new-instance v0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity$c;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/detection/RiskAppDeleteActivity$c;-><init>(Lcom/miui/permcenter/detection/RiskAppDeleteActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic d0(Lcom/miui/permcenter/detection/RiskAppDeleteActivity;)Ltb/d;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->a:Ltb/d;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/permcenter/detection/RiskAppDeleteActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->k0()V

    return-void
.end method

.method static synthetic f0(Lcom/miui/permcenter/detection/RiskAppDeleteActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->m0()V

    return-void
.end method

.method static synthetic g0(Lcom/miui/permcenter/detection/RiskAppDeleteActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->j0(Ljava/lang/String;)V

    return-void
.end method

.method private h0()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    const v1, 0x7f0b01ce

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->b:Landroid/widget/Button;

    const v1, 0x7f0b0d39

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->f:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v1, Ltb/d;

    iget-object v2, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->g:Ltb/d$b;

    invoke-direct {v1, v2}, Ltb/d;-><init>(Ltb/d$b;)V

    iput-object v1, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->a:Ltb/d;

    iget-object v2, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->f:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v1, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->b:Landroid/widget/Button;

    iget-object v2, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lbl/l;->a()I

    move-result v1

    if-le v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060403

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lmiuix/recyclerview/card/f;

    invoke-direct {v0, p0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->f:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_0
    return-void
.end method

.method public static i0(Landroid/app/Activity;Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/detection/model/RiskAppInfoBean;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "dataList"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private initData()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dataList"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->a:Ltb/d;

    invoke-virtual {v1, v0}, Ltb/d;->q(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->k0()V

    new-instance v0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity$d;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/detection/RiskAppDeleteActivity$d;-><init>(Lcom/miui/permcenter/detection/RiskAppDeleteActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->c:Lcom/miui/permcenter/detection/RiskAppDeleteActivity$d;

    return-void
.end method

.method private j0(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->a:Ltb/d;

    invoke-virtual {v0}, Ltb/d;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->a:Ltb/d;

    invoke-virtual {v1}, Ltb/d;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;

    iget-object v1, v1, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->a:Ltb/d;

    invoke-virtual {p1}, Ltb/d;->k()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->a:Ltb/d;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemRemoved(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->k0()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private k0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->a:Ltb/d;

    invoke-virtual {v0}, Ltb/d;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->b:Landroid/widget/Button;

    const v2, 0x7f10011e

    invoke-static {v1, v2, v0}, Lsb/b;->c(Landroid/widget/TextView;II)V

    iget-object v1, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->b:Landroid/widget/Button;

    if-lez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->d:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->d:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_1
    return-void
.end method

.method private m0()V
    .locals 14

    const-string v0, "RiskAppDeleteActivity"

    iget-object v1, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->d:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const v3, 0x7f1206d0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v1, v3, v4, v2}, Lmiuix/appcompat/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->d:Lmiuix/appcompat/app/ProgressDialog;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :goto_0
    iget-object v1, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->a:Ltb/d;

    invoke-virtual {v1}, Ltb/d;->l()Ljava/util/List;

    move-result-object v1

    move v3, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    :try_start_0
    const-string v4, "android.app.AppGlobals"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getPackageManager"

    new-array v6, v2, [Ljava/lang/Class;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5, v6, v7}, Lbh/e;->f(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;

    iget-boolean v4, v4, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mHasXSpaceApp:Z

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;

    iget-object v9, v4, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;

    iget-wide v4, v4, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mVersionCode:J

    long-to-int v10, v4

    const/4 v11, 0x0

    const/16 v12, 0x3e7

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Ltg/a;->b(Ljava/lang/Object;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;

    iget-object v5, v5, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->c:Lcom/miui/permcenter/detection/RiskAppDeleteActivity$d;

    invoke-static {v4, v5, v6, v2}, Ltg/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    const-string v5, "cleanupVirus exception!"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public l0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->a:Ltb/d;

    invoke-virtual {v0}, Ltb/d;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->a:Ltb/d;

    invoke-virtual {v0}, Ltb/d;->m()Z

    move-result v0

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1214f8

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    if-eqz v0, :cond_1

    const v0, 0x7f1214f6

    goto :goto_0

    :cond_1
    const v0, 0x7f1214f7

    :goto_0
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1201c1

    new-instance v2, Lcom/miui/permcenter/detection/RiskAppDeleteActivity$b;

    invoke-direct {v2, p0}, Lcom/miui/permcenter/detection/RiskAppDeleteActivity$b;-><init>(Lcom/miui/permcenter/detection/RiskAppDeleteActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120499

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    const p1, 0x7f0e003e

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->h0()V

    invoke-direct {p0}, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->initData()V

    return-void
.end method
