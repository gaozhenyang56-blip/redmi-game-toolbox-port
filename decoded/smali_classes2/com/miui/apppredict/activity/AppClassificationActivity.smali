.class public Lcom/miui/apppredict/activity/AppClassificationActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/apppredict/activity/AppClassificationActivity$f;
    }
.end annotation


# instance fields
.field private final A:I

.field private B:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private C:Landroid/view/View;

.field private D:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Lcom/miui/apppredict/activity/AppClassificationActivity$f;",
            ">;"
        }
    .end annotation
.end field

.field private E:Landroid/text/TextWatcher;

.field private F:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private G:Z

.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

.field private d:Ll3/b;

.field private e:Ll3/d;

.field private f:Lcom/miui/apppredict/activity/AppClassificationActivity;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Lcom/miui/apppredict/view/DarkEmptyView;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/content/pm/PackageManager;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Lmiuix/androidbasewidget/widget/ProgressBar;

.field private r:[Ljava/lang/String;

.field private s:I

.field private t:Ljava/lang/String;

.field private u:[I

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/apppredict/bean/AppClassificationBaseBean;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/apppredict/bean/AppClassificationContentBean;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroidx/recyclerview/widget/GridLayoutManager;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->s:I

    const-string v1, ""

    iput-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->t:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->v:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->w:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->x:Ljava/util/HashMap;

    const/4 v1, 0x4

    iput v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->z:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->A:I

    new-instance v1, Landroidx/lifecycle/c0;

    invoke-direct {v1}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->D:Landroidx/lifecycle/c0;

    new-instance v1, Lcom/miui/apppredict/activity/AppClassificationActivity$b;

    invoke-direct {v1, p0}, Lcom/miui/apppredict/activity/AppClassificationActivity$b;-><init>(Lcom/miui/apppredict/activity/AppClassificationActivity;)V

    iput-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->E:Landroid/text/TextWatcher;

    new-instance v1, Lk3/m;

    invoke-direct {v1, p0}, Lk3/m;-><init>(Lcom/miui/apppredict/activity/AppClassificationActivity;)V

    iput-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->F:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-boolean v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->G:Z

    return-void
.end method

.method static synthetic A0(Lcom/miui/apppredict/activity/AppClassificationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->t:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic B0(Lcom/miui/apppredict/activity/AppClassificationActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/activity/AppClassificationActivity;->G0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic C0(Lcom/miui/apppredict/activity/AppClassificationActivity;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->r:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic D0(Lcom/miui/apppredict/activity/AppClassificationActivity;)[I
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->u:[I

    return-object p0
.end method

.method static synthetic E0(Lcom/miui/apppredict/activity/AppClassificationActivity;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->x:Ljava/util/HashMap;

    return-object p0
.end method

.method private F0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->F:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->h:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/miui/apppredict/activity/AppClassificationActivity;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method private G0(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/16 v1, 0x8

    if-nez v0, :cond_4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->v:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->v:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/apppredict/bean/AppClassificationContentBean;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->v:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/apppredict/bean/AppClassificationContentBean;

    invoke-virtual {v3}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->getNamePinYin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->w:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "search result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppPredict"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->k:Lcom/miui/apppredict/view/DarkEmptyView;

    iget-object v2, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    move v1, v0

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->k:Lcom/miui/apppredict/view/DarkEmptyView;

    :cond_5
    :goto_2
    invoke-virtual {p1, v1}, Lcom/miui/optimizecenter/storage/view/EmptyView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->e:Ll3/d;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method private static H0()Lcom/miui/apppredict/activity/AppClassificationActivity$f;
    .locals 16

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

    const-string v7, "AppPredict"

    const-string v8, "getAppInfo fail"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lk3/d;

    invoke-direct {v0}, Lk3/d;-><init>()V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/miui/apppredict/bean/AppClassificationHeadBean;

    const-string v8, "#"

    invoke-direct {v7, v8}, Lcom/miui/apppredict/bean/AppClassificationHeadBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    const-string v9, ""

    move v10, v7

    move v11, v10

    move v12, v11

    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ge v10, v13, :cond_a

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/apppredict/bean/AppClassificationContentBean;

    invoke-virtual {v13}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->getFirstChar()Ljava/lang/String;

    move-result-object v13

    const-string v15, "!"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    goto :goto_6

    :cond_7
    invoke-static {v8, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/apppredict/bean/AppClassificationBaseBean;

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    invoke-static {v9, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    new-instance v9, Lcom/miui/apppredict/bean/AppClassificationHeadBean;

    invoke-direct {v9, v13}, Lcom/miui/apppredict/bean/AppClassificationHeadBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move-object v9, v13

    :cond_9
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/apppredict/bean/AppClassificationBaseBean;

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v11, v14

    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v14, :cond_b

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_b
    new-instance v4, Lcom/miui/apppredict/activity/AppClassificationActivity$f;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/miui/apppredict/activity/AppClassificationActivity$f;-><init>(Lcom/miui/apppredict/activity/AppClassificationActivity$a;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [I

    move v8, v7

    :goto_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_c

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_c
    iput-object v6, v4, Lcom/miui/apppredict/activity/AppClassificationActivity$f;->c:[I

    iput-object v5, v4, Lcom/miui/apppredict/activity/AppClassificationActivity$f;->b:Ljava/util/HashMap;

    new-array v3, v7, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, v4, Lcom/miui/apppredict/activity/AppClassificationActivity$f;->d:[Ljava/lang/String;

    iput-object v1, v4, Lcom/miui/apppredict/activity/AppClassificationActivity$f;->a:Ljava/util/List;

    iput v0, v4, Lcom/miui/apppredict/activity/AppClassificationActivity$f;->e:I

    return-object v4
.end method

.method private I0(Lcom/miui/apppredict/activity/AppClassificationActivity$f;)V
    .locals 5

    iget-object v0, p1, Lcom/miui/apppredict/activity/AppClassificationActivity$f;->c:[I

    iput-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->u:[I

    iget-object v0, p1, Lcom/miui/apppredict/activity/AppClassificationActivity$f;->d:[Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->r:[Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/apppredict/activity/AppClassificationActivity$f;->b:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->x:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/miui/apppredict/activity/AppClassificationActivity$f;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->v:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->d:Ll3/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->h:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget p1, p1, Lcom/miui/apppredict/activity/AppClassificationActivity$f;->e:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f100127

    invoke-virtual {v1, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/miui/apppredict/activity/AppClassificationActivity;->J0()V

    iget-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->t:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->t:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/apppredict/activity/AppClassificationActivity;->G0(Ljava/lang/String;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->t:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->q:Lmiuix/androidbasewidget/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private J0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->c:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    new-instance v1, Lcom/miui/apppredict/activity/AppClassificationActivity$c;

    invoke-direct {v1, p0}, Lcom/miui/apppredict/activity/AppClassificationActivity$c;-><init>(Lcom/miui/apppredict/activity/AppClassificationActivity;)V

    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->setSectionIndexer(Landroid/widget/SectionIndexer;)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->c:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    new-instance v1, Lcom/miui/apppredict/activity/AppClassificationActivity$d;

    invoke-direct {v1, p0}, Lcom/miui/apppredict/activity/AppClassificationActivity$d;-><init>(Lcom/miui/apppredict/activity/AppClassificationActivity;)V

    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->k(Lmiuix/miuixbasewidget/widget/AlphabetIndexer$e;)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/miui/apppredict/activity/AppClassificationActivity$e;

    invoke-direct {v1, p0}, Lcom/miui/apppredict/activity/AppClassificationActivity$e;-><init>(Lcom/miui/apppredict/activity/AppClassificationActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    new-instance v0, Lk3/b;

    invoke-direct {v0, p0}, Lk3/b;-><init>(Lcom/miui/apppredict/activity/AppClassificationActivity;)V

    iput-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->B:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->c:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->B:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->C:Landroid/view/View;

    new-instance v1, Lk3/c;

    invoke-direct {v1, p0}, Lk3/c;-><init>(Lcom/miui/apppredict/activity/AppClassificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->G:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->c:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->C:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private K0()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->G:Z

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->i:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->l:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->o:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private L0()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->G:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->G:Z

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->i:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->l:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->q:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->c:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {v1, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->C:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->o:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->h:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method private M0()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->G:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->G:Z

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->l:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->q:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->c:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->C:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->o:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static synthetic N0(Lcom/miui/apppredict/bean/AppClassificationContentBean;Lcom/miui/apppredict/bean/AppClassificationContentBean;)I
    .locals 0

    invoke-virtual {p0}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->getNamePinYin()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->getNamePinYin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private synthetic O0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->c:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->B:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->C:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->c:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->c:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->C:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private synthetic P0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->c:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {p1, p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method private synthetic Q0()V
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    int-to-double v2, v0

    int-to-double v0, v1

    const-wide v4, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v0, v4

    cmpl-double v0, v2, v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/apppredict/activity/AppClassificationActivity;->M0()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/apppredict/activity/AppClassificationActivity;->L0()V

    :goto_0
    return-void
.end method

.method private synthetic R0(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 p1, 0x42

    if-ne p1, p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->h:Landroid/widget/EditText;

    new-instance p2, Lk3/e;

    invoke-direct {p2, p0}, Lk3/e;-><init>(Lcom/miui/apppredict/activity/AppClassificationActivity;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic S0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->h:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic T0(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->h:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/miui/apppredict/activity/AppClassificationActivity;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method private synthetic U0(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->f:Lcom/miui/apppredict/activity/AppClassificationActivity;

    const-class v2, Lcom/miui/apppredict/activity/WidgetSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lx4/z1;->d()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lx4/v;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic V0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private synthetic W0(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/apppredict/bean/AppClassificationContentBean;

    invoke-virtual {p1}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->getUserId()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/miui/apppredict/activity/AppClassificationActivity;->a1(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic X0(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/apppredict/bean/AppClassificationContentBean;

    invoke-virtual {p1}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->getUserId()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/miui/apppredict/activity/AppClassificationActivity;->a1(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic Y0()V
    .locals 2

    invoke-static {}, Lcom/miui/apppredict/activity/AppClassificationActivity;->H0()Lcom/miui/apppredict/activity/AppClassificationActivity$f;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->D:Landroidx/lifecycle/c0;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic Z0(Lcom/miui/apppredict/activity/AppClassificationActivity$f;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/activity/AppClassificationActivity;->I0(Lcom/miui/apppredict/activity/AppClassificationActivity$f;)V

    :cond_0
    return-void
.end method

.method private a1(Ljava/lang/String;I)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->n:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/apppredict/activity/AppClassificationActivity;->F0()V

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
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private b1()V
    .locals 7

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_0
    const-class v1, Landroid/view/Window;

    const-string v2, "setBackgroundBlurRadius"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/16 v3, 0x50

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->g:Landroid/view/View;

    const-string v1, "#80000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AppPredict"

    const-string v2, "setBackgroundBlurRadius fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/apppredict/activity/AppClassificationActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/activity/AppClassificationActivity;->S0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/apppredict/activity/AppClassificationActivity;Lcom/miui/apppredict/activity/AppClassificationActivity$f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/activity/AppClassificationActivity;->Z0(Lcom/miui/apppredict/activity/AppClassificationActivity$f;)V

    return-void
.end method

.method public static synthetic f0(Lcom/miui/apppredict/activity/AppClassificationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/apppredict/activity/AppClassificationActivity;->Q0()V

    return-void
.end method

.method public static synthetic g0(Lcom/miui/apppredict/activity/AppClassificationActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/apppredict/activity/AppClassificationActivity;->R0(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h0(Lcom/miui/apppredict/activity/AppClassificationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/apppredict/activity/AppClassificationActivity;->O0()V

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

.method public static synthetic i0(Lcom/miui/apppredict/activity/AppClassificationActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/activity/AppClassificationActivity;->U0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j0(Lcom/miui/apppredict/activity/AppClassificationActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/activity/AppClassificationActivity;->V0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k0(Lcom/miui/apppredict/activity/AppClassificationActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/activity/AppClassificationActivity;->W0(I)V

    return-void
.end method

.method public static synthetic l0(Lcom/miui/apppredict/activity/AppClassificationActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/apppredict/activity/AppClassificationActivity;->P0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->h:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public static synthetic m0(Lcom/miui/apppredict/activity/AppClassificationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/apppredict/activity/AppClassificationActivity;->Y0()V

    return-void
.end method

.method public static synthetic n0(Lcom/miui/apppredict/bean/AppClassificationContentBean;Lcom/miui/apppredict/bean/AppClassificationContentBean;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/apppredict/activity/AppClassificationActivity;->N0(Lcom/miui/apppredict/bean/AppClassificationContentBean;Lcom/miui/apppredict/bean/AppClassificationContentBean;)I

    move-result p0

    return p0
.end method

.method public static synthetic o0(Lcom/miui/apppredict/activity/AppClassificationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/apppredict/activity/AppClassificationActivity;->lambda$onCreate$0()V

    return-void
.end method

.method public static synthetic p0(Lcom/miui/apppredict/activity/AppClassificationActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/activity/AppClassificationActivity;->T0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/miui/apppredict/activity/AppClassificationActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/activity/AppClassificationActivity;->X0(I)V

    return-void
.end method

.method static synthetic r0(Lcom/miui/apppredict/activity/AppClassificationActivity;)Ll3/b;
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->d:Ll3/b;

    return-object p0
.end method

.method static synthetic s0(Lcom/miui/apppredict/activity/AppClassificationActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->z:I

    return p0
.end method

.method static synthetic t0(Lcom/miui/apppredict/activity/AppClassificationActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->s:I

    return p0
.end method

.method static synthetic u0(Lcom/miui/apppredict/activity/AppClassificationActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->s:I

    return p1
.end method

.method static synthetic v0(Lcom/miui/apppredict/activity/AppClassificationActivity;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->y:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic w0(Lcom/miui/apppredict/activity/AppClassificationActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic x0(Lcom/miui/apppredict/activity/AppClassificationActivity;)Lmiuix/miuixbasewidget/widget/AlphabetIndexer;
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->c:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    return-object p0
.end method

.method static synthetic y0(Lcom/miui/apppredict/activity/AppClassificationActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->j:Landroid/view/View;

    return-object p0
.end method

.method static synthetic z0(Lcom/miui/apppredict/activity/AppClassificationActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->v:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    iget-boolean v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->G:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "all_app_activity_new"

    invoke-static {p1}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    const p1, 0x7f0e0021

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    iput-object p0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->f:Lcom/miui/apppredict/activity/AppClassificationActivity;

    const p1, 0x7f0b00e1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->g:Landroid/view/View;

    const p1, 0x7f0b00e0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f0b0a1f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f0b0568

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    iput-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->c:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    const p1, 0x7f0b056a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->C:Landroid/view/View;

    const p1, 0x7f0b0246

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->o:Landroid/view/View;

    const p1, 0x7f0b0a17

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->p:Landroid/view/View;

    const p1, 0x7f0b02f5

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->l:Landroid/view/View;

    const p1, 0x7f0b0bd2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->m:Landroid/view/View;

    const p1, 0x7f0b0a0a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->h:Landroid/widget/EditText;

    const p1, 0x7f0b0a12

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/apppredict/view/DarkEmptyView;

    iput-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->k:Lcom/miui/apppredict/view/DarkEmptyView;

    const p1, 0x7f0b0910

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->q:Lmiuix/androidbasewidget/widget/ProgressBar;

    iget-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->h:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->E:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->h:Landroid/widget/EditText;

    new-instance v0, Lk3/a;

    invoke-direct {v0, p0}, Lk3/a;-><init>(Lcom/miui/apppredict/activity/AppClassificationActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const p1, 0x7f0b02f7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->j:Landroid/view/View;

    const p1, 0x7f0b0200

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->i:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->j:Landroid/view/View;

    new-instance v0, Lk3/f;

    invoke-direct {v0, p0}, Lk3/f;-><init>(Lcom/miui/apppredict/activity/AppClassificationActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->i:Landroid/view/View;

    new-instance v0, Lk3/g;

    invoke-direct {v0, p0}, Lk3/g;-><init>(Lcom/miui/apppredict/activity/AppClassificationActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b0a4e

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lk3/h;

    invoke-direct {v0, p0}, Lk3/h;-><init>(Lcom/miui/apppredict/activity/AppClassificationActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b0138

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lk3/i;

    invoke-direct {v0, p0}, Lk3/i;-><init>(Lcom/miui/apppredict/activity/AppClassificationActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->n:Landroid/content/pm/PackageManager;

    new-instance p1, Ll3/d;

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->f:Lcom/miui/apppredict/activity/AppClassificationActivity;

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->w:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Ll3/d;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->e:Ll3/d;

    new-instance v0, Lk3/j;

    invoke-direct {v0, p0}, Lk3/j;-><init>(Lcom/miui/apppredict/activity/AppClassificationActivity;)V

    invoke-virtual {p1, v0}, Ll3/d;->o(Ll3/d$b;)V

    iget-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->f:Lcom/miui/apppredict/activity/AppClassificationActivity;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->e:Ll3/d;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->k:Lcom/miui/apppredict/view/DarkEmptyView;

    const v0, 0x7f12022f

    invoke-virtual {p1, v0}, Lcom/miui/optimizecenter/storage/view/EmptyView;->setHintView(I)V

    new-instance p1, Ll3/b;

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->f:Lcom/miui/apppredict/activity/AppClassificationActivity;

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->v:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Ll3/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->d:Ll3/b;

    new-instance v0, Lk3/k;

    invoke-direct {v0, p0}, Lk3/k;-><init>(Lcom/miui/apppredict/activity/AppClassificationActivity;)V

    invoke-virtual {p1, v0}, Ll3/b;->q(Ll3/b$c;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c001e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->z:I

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->f:Lcom/miui/apppredict/activity/AppClassificationActivity;

    invoke-direct {v0, v1, p1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->y:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance p1, Lcom/miui/apppredict/activity/AppClassificationActivity$a;

    invoke-direct {p1, p0}, Lcom/miui/apppredict/activity/AppClassificationActivity$a;-><init>(Lcom/miui/apppredict/activity/AppClassificationActivity;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->t(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    iget-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->y:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->d:Ll3/b;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-direct {p0}, Lcom/miui/apppredict/activity/AppClassificationActivity;->b1()V

    invoke-direct {p0}, Lcom/miui/apppredict/activity/AppClassificationActivity;->K0()V

    iget-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->F:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    new-instance v0, Lk3/l;

    invoke-direct {v0, p0}, Lk3/l;-><init>(Lcom/miui/apppredict/activity/AppClassificationActivity;)V

    invoke-virtual {p1, v0}, Lef/z;->b(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->D:Landroidx/lifecycle/c0;

    new-instance v0, Lcom/miui/apppredict/activity/a;

    invoke-direct {v0, p0}, Lcom/miui/apppredict/activity/a;-><init>(Lcom/miui/apppredict/activity/AppClassificationActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->h:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->E:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity;->F:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
