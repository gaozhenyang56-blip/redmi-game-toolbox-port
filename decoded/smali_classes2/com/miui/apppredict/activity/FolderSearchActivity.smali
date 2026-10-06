.class public Lcom/miui/apppredict/activity/FolderSearchActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/apppredict/activity/FolderSearchActivity$d;,
        Lcom/miui/apppredict/activity/FolderSearchActivity$f;,
        Lcom/miui/apppredict/activity/FolderSearchActivity$e;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/Runnable;

.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Ll3/f;

.field private c:Landroid/view/View;

.field private d:Lmiuix/androidbasewidget/widget/ProgressBar;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroidx/constraintlayout/widget/Group;

.field private m:Landroidx/constraintlayout/widget/Group;

.field private n:Lcom/miui/apppredict/activity/FolderSearchActivity$e;

.field private o:Landroid/content/pm/PackageManager;

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Landroid/view/ViewStub;

.field private t:Landroid/view/View;

.field private u:Landroid/view/ViewStub;

.field private v:Z

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/apppredict/bean/AppClassificationContentBean;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/apppredict/bean/AppClassificationContentBean;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private z:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->p:Z

    iput-boolean v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->q:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->r:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->v:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->w:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->x:Ljava/util/List;

    iput-boolean v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->y:Z

    new-instance v0, Lcom/miui/apppredict/activity/FolderSearchActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/apppredict/activity/FolderSearchActivity$b;-><init>(Lcom/miui/apppredict/activity/FolderSearchActivity;)V

    iput-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->z:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/apppredict/activity/FolderSearchActivity$c;

    invoke-direct {v0, p0}, Lcom/miui/apppredict/activity/FolderSearchActivity$c;-><init>(Lcom/miui/apppredict/activity/FolderSearchActivity;)V

    iput-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->A:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic A0(Lcom/miui/apppredict/activity/FolderSearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->r:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic B0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Lmiuix/androidbasewidget/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->d:Lmiuix/androidbasewidget/widget/ProgressBar;

    return-object p0
.end method

.method private C0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->e:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/miui/apppredict/activity/FolderSearchActivity;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method private D0(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_4

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->w:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->w:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/apppredict/bean/AppClassificationContentBean;

    invoke-virtual {v4}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->getNamePinYin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->x:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->x:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->F0(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->x:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->x:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->x:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->b:Ll3/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->g:Landroid/view/View;

    if-eqz v0, :cond_5

    move v3, v1

    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x4

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->l:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->m:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->d:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->d:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->l:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->m:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    move v2, p1

    :cond_8
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static E0()Lcom/miui/apppredict/activity/FolderSearchActivity$d;
    .locals 13

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v0}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Li4/a;->j()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lx4/z1;->y()I

    move-result v4

    const/16 v5, 0x3e7

    if-nez v4, :cond_0

    invoke-static {v0}, Lcom/miui/appmanager/AppManageUtils;->k0(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x40

    invoke-static {v1, v4, v5}, Lcom/miui/appmanager/AppManageUtils;->G(Landroid/content/pm/PackageManager;II)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v8, Lp3/g;->a:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Lx4/z1;->m(I)I

    move-result v7

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    new-instance v9, Lcom/miui/apppredict/bean/AppClassificationContentBean;

    invoke-direct {v9}, Lcom/miui/apppredict/bean/AppClassificationContentBean;-><init>()V

    :try_start_0
    invoke-virtual {v2, v8}, Li4/a;->f(Ljava/lang/String;)Li4/b;

    move-result-object v10

    invoke-virtual {v10}, Li4/b;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->setName(Ljava/lang/String;)V

    invoke-static {v0}, Lzl/a;->d(Landroid/content/Context;)Lzl/a;

    move-result-object v11

    invoke-virtual {v11, v10}, Lzl/a;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lzl/a$c;

    iget-object v12, v12, Lzl/a$c;->c:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    :goto_2
    invoke-virtual {v9, v10}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->setNamePinYin(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :goto_3
    iget-wide v10, v6, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v9, v10, v11}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->setInstallTime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, v5, :cond_5

    const-string v6, "pkg_icon_xspace://"

    goto :goto_4

    :cond_5
    const-string v6, "pkg_icon://"

    :goto_4
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->setIconPath(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->setUserId(I)V

    invoke-virtual {v9, v8}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->setPkgName(Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const-string v7, "AppPredictFolder"

    const-string v8, "getAppInfo fail"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lk3/b0;

    invoke-direct {v0}, Lk3/b0;-><init>()V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Lcom/miui/apppredict/activity/FolderSearchActivity$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/apppredict/activity/FolderSearchActivity$d;-><init>(Lcom/miui/apppredict/activity/FolderSearchActivity$a;)V

    iput-object v4, v0, Lcom/miui/apppredict/activity/FolderSearchActivity$d;->a:Ljava/util/List;

    return-object v0
.end method

.method private F0(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/apppredict/bean/AppClassificationContentBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/apppredict/bean/AppClassificationContentBean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "current_show_package_list"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/apppredict/bean/AppClassificationContentBean;

    invoke-virtual {v7}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->getUserId()I

    move-result v7

    const/16 v8, 0x3e7

    if-ne v7, v8, :cond_0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/apppredict/bean/AppClassificationContentBean;

    invoke-virtual {v7}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->getPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lp3/i;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/apppredict/bean/AppClassificationContentBean;

    invoke-virtual {v7}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->getPkgName()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-interface {v1, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/apppredict/bean/AppClassificationContentBean;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_3

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/apppredict/bean/AppClassificationContentBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private G0(Landroid/view/WindowInsets;)I
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bottomInset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyBoardAnimCallBack"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/n3;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/core/view/n3;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr p1, v0

    return p1
.end method

.method private H0(Lcom/miui/apppredict/activity/FolderSearchActivity$d;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->s:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/apppredict/activity/FolderSearchActivity;->I0(Landroid/view/View;)V

    iget-object p1, p1, Lcom/miui/apppredict/activity/FolderSearchActivity$d;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->e:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const p1, 0x7f100127

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->r:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->r:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->D0(Ljava/lang/String;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->r:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private I0(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0b0a1f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance p1, Ll3/f;

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->x:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Ll3/f;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->b:Ll3/f;

    new-instance v0, Lk3/s;

    invoke-direct {v0, p0}, Lk3/s;-><init>(Lcom/miui/apppredict/activity/FolderSearchActivity;)V

    invoke-virtual {p1, v0}, Ll3/f;->o(Ll3/f$b;)V

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->l:Landroidx/constraintlayout/widget/Group;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/b;->setReferencedIds([I)V

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->b:Ll3/f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    return-void

    :array_0
    .array-data 4
        0x7f0b0a17
        0x7f0b0715
        0x7f0b048e
    .end array-data
.end method

.method private J0()V
    .locals 7

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "folder_package_names"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    if-nez v3, :cond_1

    const v0, 0x7f0b04a3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void

    :cond_1
    const v1, 0x7f0b0b20

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v4, 0x7f0b0b18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f0b0b19

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f0b0b1a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f0b0b1b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f0b0b1c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f0b0b1d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f0b0b1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f0b0b1f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/miui/apppredict/activity/FolderSearchActivity;->K0(Landroid/view/View;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private K0(Landroid/view/View;Ljava/lang/String;)V
    .locals 5

    const v0, 0x7f0b00f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b00e5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lk3/u;

    invoke-direct {v2, p0, p2}, Lk3/u;-><init>(Lcom/miui/apppredict/activity/FolderSearchActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    invoke-static {p2}, Lp3/i;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Lp3/i;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v3, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->o:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->o:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_1

    const-string v0, "pkg_icon_xspace://"

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    const-string v0, "pkg_icon://"

    goto :goto_0

    :goto_1
    sget-object v0, Lx4/o0;->f:Lrh/c;

    invoke-static {p2, v1, v0}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    const/4 p2, 0x1

    new-array v0, p2, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v2, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p1, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array p1, p2, [Landroid/view/View;

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->h:Landroid/view/View;

    aput-object v0, p1, v1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->h:Landroid/view/View;

    new-array v2, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, v0, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array p1, p2, [Landroid/view/View;

    iget-object p2, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->i:Landroid/view/View;

    aput-object p2, p1, v1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->i:Landroid/view/View;

    new-array v0, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p2, v0}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private L0()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimarket://search?q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&ref=refstr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {}, Lx4/z1;->d()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lx4/v;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/miui/apppredict/activity/FolderSearchActivity;->finish()V

    return-void
.end method

.method private static synthetic M0(Lcom/miui/apppredict/bean/AppClassificationContentBean;Lcom/miui/apppredict/bean/AppClassificationContentBean;)I
    .locals 0

    invoke-virtual {p0}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->getNamePinYin()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->getNamePinYin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private synthetic N0(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/apppredict/bean/AppClassificationContentBean;

    invoke-virtual {p1}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->getUserId()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->V0(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic O0(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/apppredict/activity/FolderSearchActivity;->C0()V

    invoke-static {p0, p1}, Lp3/i;->p(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/apppredict/activity/FolderSearchActivity;->finish()V

    return-void
.end method

.method private synthetic P0(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 p1, 0x42

    if-ne p1, p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->e:Landroid/widget/EditText;

    new-instance p2, Lk3/t;

    invoke-direct {p2, p0}, Lk3/t;-><init>(Lcom/miui/apppredict/activity/FolderSearchActivity;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic Q0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/apppredict/activity/FolderSearchActivity;->L0()V

    return-void
.end method

.method private synthetic R0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->e:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic S0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/apppredict/activity/FolderSearchActivity;->finish()V

    return-void
.end method

.method private synthetic T0(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->q:Z

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/apppredict/activity/AppClassificationActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lx4/z1;->d()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    invoke-static {p0, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lx4/v;->v(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/apppredict/activity/FolderSearchActivity;->finish()V

    return-void
.end method

.method private synthetic U0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget-boolean p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->y:Z

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/miui/apppredict/activity/FolderSearchActivity;->G0(Landroid/view/WindowInsets;)I

    move-result p1

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->c:Landroid/view/View;

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    return-object p2
.end method

.method private V0(Ljava/lang/String;I)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->o:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/apppredict/activity/FolderSearchActivity;->C0()V

    invoke-static {p1, p2}, Lx4/t1;->f(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, -0x1

    invoke-static {v0, p1, p2}, Lx4/t1;->j(ILjava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p2}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lx4/v;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/apppredict/activity/FolderSearchActivity;->finish()V

    return-void
.end method

.method private W0()V
    .locals 5

    const v0, 0x7f0b013e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b084f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080388

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "wallpaper"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    const/16 v4, 0xaa

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lk3/q;->a(Landroid/app/WallpaperManager;I)Landroid/app/WallpaperColors;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getPrimaryColor()Landroid/graphics/Color;

    move-result-object v1

    invoke-static {v1}, Lk3/r;->a(Landroid/graphics/Color;)I

    move-result v1

    :goto_0
    invoke-static {v1, v4}, Landroidx/core/graphics/d;->p(II)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_1
    const/high16 v1, -0x1000000

    goto :goto_0
.end method

.method public static synthetic d0(Lcom/miui/apppredict/activity/FolderSearchActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->T0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/apppredict/activity/FolderSearchActivity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/apppredict/activity/FolderSearchActivity;->U0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Lcom/miui/apppredict/activity/FolderSearchActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->S0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/miui/apppredict/bean/AppClassificationContentBean;Lcom/miui/apppredict/bean/AppClassificationContentBean;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->M0(Lcom/miui/apppredict/bean/AppClassificationContentBean;Lcom/miui/apppredict/bean/AppClassificationContentBean;)I

    move-result p0

    return p0
.end method

.method public static synthetic h0(Lcom/miui/apppredict/activity/FolderSearchActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/apppredict/activity/FolderSearchActivity;->O0(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private hideKeyboard(Landroid/view/View;)V
    .locals 2

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public static synthetic i0(Lcom/miui/apppredict/activity/FolderSearchActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->R0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j0(Lcom/miui/apppredict/activity/FolderSearchActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->Q0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k0(Lcom/miui/apppredict/activity/FolderSearchActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/apppredict/activity/FolderSearchActivity;->lambda$onCreate$0()V

    return-void
.end method

.method public static synthetic l0(Lcom/miui/apppredict/activity/FolderSearchActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->N0(I)V

    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->e:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public static synthetic m0(Lcom/miui/apppredict/activity/FolderSearchActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/apppredict/activity/FolderSearchActivity;->P0(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic n0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->c:Landroid/view/View;

    return-object p0
.end method

.method static synthetic o0(Lcom/miui/apppredict/activity/FolderSearchActivity;Landroid/view/WindowInsets;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->G0(Landroid/view/WindowInsets;)I

    move-result p0

    return p0
.end method

.method static synthetic p0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Landroidx/constraintlayout/widget/Group;
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->l:Landroidx/constraintlayout/widget/Group;

    return-object p0
.end method

.method static synthetic q0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Landroidx/constraintlayout/widget/Group;
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->m:Landroidx/constraintlayout/widget/Group;

    return-object p0
.end method

.method static synthetic r0(Lcom/miui/apppredict/activity/FolderSearchActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->D0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic s0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->e:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic t0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->y:Z

    return p0
.end method

.method static synthetic u0(Lcom/miui/apppredict/activity/FolderSearchActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->y:Z

    return p1
.end method

.method static synthetic v0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->p:Z

    return p0
.end method

.method static synthetic w0(Lcom/miui/apppredict/activity/FolderSearchActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->p:Z

    return p1
.end method

.method static synthetic x0()Lcom/miui/apppredict/activity/FolderSearchActivity$d;
    .locals 1

    invoke-static {}, Lcom/miui/apppredict/activity/FolderSearchActivity;->E0()Lcom/miui/apppredict/activity/FolderSearchActivity$d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic y0(Lcom/miui/apppredict/activity/FolderSearchActivity;Lcom/miui/apppredict/activity/FolderSearchActivity$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->H0(Lcom/miui/apppredict/activity/FolderSearchActivity$d;)V

    return-void
.end method

.method static synthetic z0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->w:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    iget-boolean v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const v1, 0x7f010093

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    const v0, 0x7f010018

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    const-string p1, "folder_search_activity"

    invoke-static {p1}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    const p1, 0x7f0e002e

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const p1, 0x7f0b00e1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->c:Landroid/view/View;

    const p1, 0x7f0b048e

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->i:Landroid/view/View;

    const p1, 0x7f0b0910

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->d:Lmiuix/androidbasewidget/widget/ProgressBar;

    const p1, 0x7f0b0a0a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->z:Landroid/text/TextWatcher;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->e:Landroid/widget/EditText;

    new-instance v2, Lk3/v;

    invoke-direct {v2, p0}, Lk3/v;-><init>(Lcom/miui/apppredict/activity/FolderSearchActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const p1, 0x7f0b0d92

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->s:Landroid/view/ViewStub;

    const p1, 0x7f0b02f7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->g:Landroid/view/View;

    const p1, 0x7f0b0200

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->f:Landroid/view/View;

    const p1, 0x7f0b00a5

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->h:Landroid/view/View;

    const p1, 0x7f0b0377

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->j:Landroid/widget/TextView;

    const p1, 0x7f0b0715

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->k:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->i:Landroid/view/View;

    new-instance v2, Lk3/w;

    invoke-direct {v2, p0}, Lk3/w;-><init>(Lcom/miui/apppredict/activity/FolderSearchActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->g:Landroid/view/View;

    new-instance v2, Lk3/x;

    invoke-direct {v2, p0}, Lk3/x;-><init>(Lcom/miui/apppredict/activity/FolderSearchActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->f:Landroid/view/View;

    new-instance v2, Lk3/y;

    invoke-direct {v2, p0}, Lk3/y;-><init>(Lcom/miui/apppredict/activity/FolderSearchActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->h:Landroid/view/View;

    new-instance v2, Lk3/z;

    invoke-direct {v2, p0}, Lk3/z;-><init>(Lcom/miui/apppredict/activity/FolderSearchActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->o:Landroid/content/pm/PackageManager;

    const p1, 0x7f0b04a2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Group;

    iput-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->l:Landroidx/constraintlayout/widget/Group;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    const p1, 0x7f0b04a3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Group;

    iput-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->m:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v3, 0x8000000

    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v3, 0x200

    invoke-virtual {p1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-direct {p0}, Lcom/miui/apppredict/activity/FolderSearchActivity;->J0()V

    new-instance p1, Lcom/miui/apppredict/activity/FolderSearchActivity$e;

    invoke-direct {p1, p0}, Lcom/miui/apppredict/activity/FolderSearchActivity$e;-><init>(Lcom/miui/apppredict/activity/FolderSearchActivity;)V

    iput-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->n:Lcom/miui/apppredict/activity/FolderSearchActivity$e;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "miui.intent.action.INPUT_METHOD_VISIBLE_HEIGHT_CHANGED"

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->n:Lcom/miui/apppredict/activity/FolderSearchActivity$e;

    invoke-static {p0, v3, p1, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt p1, v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v2, 0x30

    invoke-virtual {p1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->c:Landroid/view/View;

    new-instance v2, Lcom/miui/apppredict/activity/FolderSearchActivity$a;

    invoke-direct {v2, p0, v1}, Lcom/miui/apppredict/activity/FolderSearchActivity$a;-><init>(Lcom/miui/apppredict/activity/FolderSearchActivity;I)V

    invoke-static {p1, v2}, Lk3/p;->a(Landroid/view/View;Landroid/view/WindowInsetsAnimation$Callback;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v2, Lk3/a0;

    invoke-direct {v2, p0}, Lk3/a0;-><init>(Lcom/miui/apppredict/activity/FolderSearchActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->c:Landroid/view/View;

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const p1, 0x7f0b0180

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->u:Landroid/view/ViewStub;

    invoke-static {}, Lcom/miui/blur/sdk/backdrop/BlurManager;->c()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->v:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/miui/apppredict/activity/FolderSearchActivity;->W0()V

    :cond_1
    new-instance p1, Lcom/miui/apppredict/activity/FolderSearchActivity$f;

    invoke-direct {p1, p0}, Lcom/miui/apppredict/activity/FolderSearchActivity$f;-><init>(Lcom/miui/apppredict/activity/FolderSearchActivity;)V

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->n:Lcom/miui/apppredict/activity/FolderSearchActivity$e;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    invoke-virtual {p0}, Lcom/miui/apppredict/activity/FolderSearchActivity;->finish()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->p:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->A:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->v:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->t:Landroid/view/View;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->u:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity;->t:Landroid/view/View;

    :cond_0
    return-void
.end method
