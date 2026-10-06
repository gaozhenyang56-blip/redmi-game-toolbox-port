.class public Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;
.implements Lt5/p$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/common/base/BaseActivity;",
        "Landroidx/loader/app/a$a<",
        "Lcom/miui/gamebooster/ui/b;",
        ">;",
        "Lt5/p$c;"
    }
.end annotation


# static fields
.field public static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ls5/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lmiuix/recyclerview/widget/RecyclerView;

.field private b:Lmiuix/androidbasewidget/widget/ProgressBar;

.field private c:Landroid/content/pm/PackageManager;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ls5/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lt5/p;

.field private g:Lcom/miui/gamebooster/service/IFreeformWindow;

.field private h:Z

.field private i:Z

.field private j:Z

.field k:Lo4/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->l:Ljava/util/List;

    const-string v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.tencent.mobileqq"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.whatsapp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$c;

    invoke-direct {v0}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$c;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->m:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->e:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->j:Z

    new-instance v0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$a;-><init>(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->k:Lo4/a$a;

    return-void
.end method

.method static synthetic d0(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;)Lcom/miui/gamebooster/service/IFreeformWindow;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->g:Lcom/miui/gamebooster/service/IFreeformWindow;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;Lcom/miui/gamebooster/service/IFreeformWindow;)Lcom/miui/gamebooster/service/IFreeformWindow;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->g:Lcom/miui/gamebooster/service/IFreeformWindow;

    return-object p1
.end method

.method static synthetic f0(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->j:Z

    return p0
.end method

.method static synthetic g0(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->h:Z

    return p0
.end method

.method static synthetic h0(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->c:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method private initView()V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->c:Landroid/content/pm/PackageManager;

    invoke-static {p0}, Lf7/a;->b(Landroid/content/Context;)Lf7/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->k:Lo4/a$a;

    invoke-virtual {v0, v1}, Lf7/a;->a(Lo4/a$a;)V

    invoke-static {p0}, Lf7/b;->h(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->h:Z

    const v0, 0x7f0b00e9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Lt5/p;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->d:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lt5/p;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->f:Lt5/p;

    iget-boolean v1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->h:Z

    invoke-virtual {v0, v1}, Lt5/p;->m(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->f:Lt5/p;

    invoke-virtual {v0, p0}, Lt5/p;->o(Lt5/p$c;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->f:Lt5/p;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    const v0, 0x7f0b0933

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->b:Lmiuix/androidbasewidget/widget/ProgressBar;

    return-void
.end method

.method static synthetic j0(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;Landroid/content/pm/PackageManager;ILjava/util/HashSet;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->m0(Landroid/content/pm/PackageManager;ILjava/util/HashSet;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->i:Z

    return p0
.end method

.method static synthetic l0(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->i:Z

    return p1
.end method

.method private m0(Landroid/content/pm/PackageManager;ILjava/util/HashSet;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I",
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, p2}, Lcom/miui/appmanager/AppManageUtils;->o0(Landroid/content/pm/PackageManager;Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static n0(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {p0}, Lm7/a;->m(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_1

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "package_name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_1
    move-exception v0

    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Lcom/miui/gamebooster/ui/b;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/miui/gamebooster/ui/b;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->o0(Lq0/c;Lcom/miui/gamebooster/ui/b;)V

    return-void
.end method

.method public o0(Lq0/c;Lcom/miui/gamebooster/ui/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Lcom/miui/gamebooster/ui/b;",
            ">;",
            "Lcom/miui/gamebooster/ui/b;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p1

    const/16 v0, 0x145

    invoke-virtual {p1, v0}, Landroidx/loader/app/a;->a(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->b:Lmiuix/androidbasewidget/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/miui/gamebooster/ui/b;->a:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->d:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p2, Lcom/miui/gamebooster/ui/b;->b:Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->e:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->d:Ljava/util/ArrayList;

    sget-object p2, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->m:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Ls5/c;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ls5/c;-><init>(I)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->h:Z

    invoke-virtual {p1, v0}, Ls5/c;->i(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->f:Lt5/p;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lt5/p;->n(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->f:Lt5/p;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->g:Lcom/miui/gamebooster/service/IFreeformWindow;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->j:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->h:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->g:Lcom/miui/gamebooster/service/IFreeformWindow;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->e:Ljava/util/ArrayList;

    invoke-interface {p1, p2}, Lcom/miui/gamebooster/service/IFreeformWindow;->Y7(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "QuickReplySettings"

    const-string v0, "setQuickReplyApps error"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e047d

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->initView()V

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p1

    const/16 v0, 0x145

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Lcom/miui/gamebooster/ui/b;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$b;

    invoke-direct {p1, p0, p0}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$b;-><init>(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;Landroid/content/Context;)V

    return-object p1
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    invoke-static {p0}, La8/i0;->c(Landroid/content/Context;)La8/i0;

    move-result-object v0

    invoke-virtual {v0}, La8/i0;->d()V

    return-void
.end method

.method public onItemClick(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->f:Lt5/p;

    invoke-virtual {v0, p1}, Lt5/p;->l(I)Ls5/c;

    move-result-object p1

    invoke-virtual {p1}, Ls5/c;->f()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->h:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->h:Z

    invoke-virtual {p1, v0}, Ls5/c;->i(Z)V

    iget-boolean p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->h:Z

    invoke-static {p0, p1}, Lf7/b;->v(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->f:Lt5/p;

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->h:Z

    invoke-virtual {p1, v0}, Lt5/p;->m(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->f:Lt5/p;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->g:Lcom/miui/gamebooster/service/IFreeformWindow;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->h:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->g:Lcom/miui/gamebooster/service/IFreeformWindow;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->e:Ljava/util/ArrayList;

    invoke-interface {p1, v1}, Lcom/miui/gamebooster/service/IFreeformWindow;->Y7(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "QuickReplySettings"

    const-string v2, "setQuickReplyApps error"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->g:Lcom/miui/gamebooster/service/IFreeformWindow;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->j:Z

    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->i:Z

    if-eqz p1, :cond_4

    invoke-static {p0, v0}, Lf7/b;->u(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->h:Z

    if-eqz v2, :cond_4

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Ls5/c;->a()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ls5/c;->h(Z)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->f:Lt5/p;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->p0(Ls5/c;)V

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ls5/c;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/gamebooster/utils/a;->l0(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public p0(Ls5/c;)V
    .locals 5

    invoke-virtual {p1}, Ls5/c;->a()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls5/c;

    invoke-virtual {v2}, Ls5/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ls5/c;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ls5/c;->h(Z)V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ls5/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ls5/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->g:Lcom/miui/gamebooster/service/IFreeformWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->e:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Lcom/miui/gamebooster/service/IFreeformWindow;->Y7(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "QuickReplySettings"

    const-string v3, "setQuickReplyApps error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->j:Z

    :goto_1
    new-instance v0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$d;

    invoke-direct {v0, p0, p1}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$d;-><init>(Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;Ls5/c;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object p1, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;->f:Lt5/p;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method
