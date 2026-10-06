.class public Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/appcompat/app/Fragment;",
        "Landroidx/loader/app/a$a<",
        "Ljava/util/ArrayList<",
        "Lpe/d;",
        ">;>;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final r:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lpe/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final s:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lpe/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lmiuix/recyclerview/widget/RecyclerView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Lcom/miui/privacyapps/ui/a;

.field private f:Lte/a;

.field private g:Landroid/content/pm/PackageManager;

.field private h:Lse/a;

.field private i:Lmiui/security/SecurityManager;

.field private j:Lmiuix/view/l;

.field private k:I

.field private l:Landroid/app/Activity;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lpe/d;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroid/text/TextWatcher;

.field private q:Lmiuix/view/l$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$d;

    invoke-direct {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$d;-><init>()V

    sput-object v0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->r:Ljava/util/Comparator;

    new-instance v0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$e;

    invoke-direct {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$e;-><init>()V

    sput-object v0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->s:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->o:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$b;-><init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)V

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->p:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$c;

    invoke-direct {v0, p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$c;-><init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)V

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->q:Lmiuix/view/l$b;

    return-void
.end method

.method static synthetic b0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;Lpe/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->t0(Lpe/c;)V

    return-void
.end method

.method static synthetic c0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->isSearchMode()Z

    move-result p0

    return p0
.end method

.method static synthetic d0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;Lpe/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->s0(Lpe/c;)V

    return-void
.end method

.method static synthetic e0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->p0()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->updateSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->d:Landroid/view/View;

    return-object p0
.end method

.method private isSearchMode()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->j:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic j0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)Lmiuix/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->p:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->o:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic m0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)Lcom/miui/privacyapps/ui/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->e:Lcom/miui/privacyapps/ui/a;

    return-object p0
.end method

.method static synthetic n0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)Lse/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->h:Lse/a;

    return-object p0
.end method

.method private o0()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$h;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "privacyapps_top.json"

    invoke-static {v0, v2}, Lx4/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "type"

    const v6, 0x7fffffff

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "packages"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$h;

    invoke-direct {v4, v5, v6}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$h;-><init>(ILjava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "PaManageFragment"

    const-string v3, "getInfoFromAssetsFile failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v1
.end method

.method private p0()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lpe/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Li4/a;->j()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/appmanager/AppManageUtils;->k0(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->g:Landroid/content/pm/PackageManager;

    const/16 v4, 0x40

    const/16 v5, 0x3e7

    invoke-static {v3, v4, v5}, Lcom/miui/appmanager/AppManageUtils;->G(Landroid/content/pm/PackageManager;II)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->o0()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v6

    invoke-static {v6}, Lse/a;->f(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v10, v9

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    move v9, v8

    :goto_1
    iget-object v10, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v10}, Lse/c;->c(Ljava/lang/String;)Z

    move-result v10

    if-nez v9, :cond_1

    if-nez v10, :cond_1

    const/4 v9, 0x0

    :try_start_0
    iget-object v10, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Li4/a;->f(Ljava/lang/String;)Li4/b;

    move-result-object v10

    invoke-virtual {v10}, Li4/b;->a()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v10

    const-string v11, "PaManageFragment"

    const-string v12, "getAppLabel error"

    invoke-static {v11, v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v9, :cond_1

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    new-instance v11, Lpe/c;

    invoke-direct {v11}, Lpe/c;-><init>()V

    iget-object v12, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lpe/c;->j(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Lpe/c;->m(I)V

    iget-object v12, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v12}, Lpe/c;->l(I)V

    invoke-virtual {v11, v9}, Lpe/c;->i(Ljava/lang/String;)V

    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$h;

    iget-object v12, v9, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$h;->b:Ljava/util/List;

    iget-object v13, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget v8, v9, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$h;->a:I

    invoke-virtual {v11, v8}, Lpe/c;->k(I)V

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    iget-object v8, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->i:Lmiui/security/SecurityManager;

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lmiui/security/SecurityManager;->isPrivacyApp(Ljava/lang/String;I)Z

    move-result v8

    invoke-virtual {v11, v8}, Lpe/c;->h(Z)V

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->g:Landroid/content/pm/PackageManager;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Lpe/d;

    invoke-direct {v1}, Lpe/d;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f100110

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpe/d;->c(Ljava/lang/String;)V

    sget-object v2, Lnb/d;->b:Lnb/d;

    invoke-virtual {v1, v2}, Lpe/d;->d(Lnb/d;)V

    invoke-virtual {v1, v4}, Lpe/d;->e(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    const/4 v1, -0x1

    if-ne v6, v1, :cond_8

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1, v8}, Lse/a;->k(Landroid/content/Context;I)V

    :cond_8
    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Lpe/d;

    invoke-direct {v1}, Lpe/d;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100111

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpe/d;->c(Ljava/lang/String;)V

    sget-object v2, Lnb/d;->a:Lnb/d;

    invoke-virtual {v1, v2}, Lpe/d;->d(Lnb/d;)V

    invoke-virtual {v1, v3}, Lpe/d;->e(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-object v0
.end method

.method private r0(Ljava/lang/String;IZ)V
    .locals 8

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->l:Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3}, Lse/e;->g(Landroid/content/Context;Ljava/lang/String;IZ)V

    iget-object p2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->h:Lse/a;

    invoke-virtual {p2}, Lse/a;->a()I

    move-result p2

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpe/d;

    invoke-virtual {v1}, Lpe/d;->a()Lnb/d;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lnb/d;->a:Lnb/d;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->k:I

    sub-int/2addr v2, p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f100111

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-virtual {v3, v6, v2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100110

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v2, v3, p2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Lpe/d;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->e:Lcom/miui/privacyapps/ui/a;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    if-eqz p3, :cond_3

    invoke-static {p1}, Lqe/a;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private s0(Lpe/c;)V
    .locals 4

    new-instance v0, Lte/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f130023

    invoke-direct {v0, v1, v2}, Lte/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->f:Lte/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v3, -0x1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->f:Lte/a;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->f:Lte/a;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->f:Lte/a;

    new-instance v1, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$a;

    invoke-direct {v1, p0, p1}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$a;-><init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;Lpe/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->h:Lse/a;

    invoke-virtual {p1, v2}, Lse/a;->h(Z)V

    return-void
.end method

.method private t0(Lpe/c;)V
    .locals 5

    invoke-virtual {p1}, Lpe/c;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lpe/c;->h(Z)V

    invoke-virtual {p1}, Lpe/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lpe/c;->g()I

    move-result v2

    iget-object v3, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->l:Landroid/app/Activity;

    invoke-static {v3}, Lse/a;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lpe/c;->f()I

    move-result v3

    xor-int/lit8 v4, v0, 0x1

    invoke-static {v1, v3, v4}, Lcom/miui/appmanager/AppManageUtils;->z0(Ljava/lang/String;IZ)V

    :cond_0
    invoke-direct {p0, v1, v2, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->r0(Ljava/lang/String;IZ)V

    iget-object v2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->l:Landroid/app/Activity;

    invoke-static {v2, v1, v0}, Lec/c;->d(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->l:Landroid/app/Activity;

    invoke-virtual {p1}, Lpe/c;->g()I

    move-result p1

    invoke-static {v2, v0, v1, p1}, Lse/e;->i(Landroid/content/Context;ZLjava/lang/String;I)V

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->e:Lcom/miui/privacyapps/ui/a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method private updateSearchResult(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpe/d;

    invoke-virtual {v2}, Lpe/d;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpe/c;

    invoke-virtual {v3}, Lpe/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->s:Ljava/util/Comparator;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Lpe/d;

    invoke-direct {p1}, Lpe/d;-><init>()V

    invoke-virtual {p1, v0}, Lpe/d;->e(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10002c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lpe/d;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lnb/d;->c:Lnb/d;

    invoke-virtual {p1, v1}, Lpe/d;->d(Lnb/d;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->e:Lcom/miui/privacyapps/ui/a;

    invoke-virtual {p1, v0}, Lcom/miui/privacyapps/ui/a;->o(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/ArrayList<",
            "Lpe/d;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->q0(Lq0/c;Ljava/util/ArrayList;)V

    return-void
.end method

.method public exitSearchMode()V
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->j:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->j:Lmiuix/view/l;

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->l:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->g:Landroid/content/pm/PackageManager;

    new-instance v0, Lse/a;

    invoke-direct {v0, p1}, Lse/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->h:Lse/a;

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object v0

    const/16 v1, 0x140

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->l:Landroid/app/Activity;

    const-string v0, "security"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/security/SecurityManager;

    iput-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->i:Lmiui/security/SecurityManager;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->d:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->q:Lmiuix/view/l$b;

    invoke-virtual {p0, p1}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->startSearchMode(Lmiuix/view/l$b;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130442

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

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
            "Ljava/util/ArrayList<",
            "Lpe/d;",
            ">;>;"
        }
    .end annotation

    new-instance p1, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$g;-><init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;Landroid/content/Context;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object v0

    const/16 v1, 0x140

    invoke-virtual {v0, v1}, Landroidx/loader/app/a;->a(I)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0e046b

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b06d4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/miui/privacyapps/ui/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/miui/privacyapps/ui/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->e:Lcom/miui/privacyapps/ui/a;

    iget-object p3, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object p2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance p3, Lz2/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lz2/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object p2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->e:Lcom/miui/privacyapps/ui/a;

    new-instance p3, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$f;

    invoke-direct {p3, p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$f;-><init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)V

    invoke-virtual {p2, p3}, Lcom/miui/privacyapps/ui/a;->n(Lcom/miui/privacyapps/ui/a$e;)V

    const p2, 0x7f0b0a23

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->d:Landroid/view/View;

    const p3, 0x1020009

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->c:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->d:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b0379

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->b:Landroid/widget/TextView;

    return-object p1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->f:Lte/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lte/a;->dismiss()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->m:Z

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object v0

    const/16 v1, 0x140

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public q0(Lq0/c;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/ArrayList<",
            "Lpe/d;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lpe/d;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->o:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->e:Lcom/miui/privacyapps/ui/a;

    invoke-virtual {p1, p2}, Lcom/miui/privacyapps/ui/a;->o(Ljava/util/ArrayList;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->k:I

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpe/d;

    invoke-virtual {v1}, Lpe/d;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget v4, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->k:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->k:I

    if-le v3, v2, :cond_0

    sget-object v2, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->r:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->e:Lcom/miui/privacyapps/ui/a;

    invoke-virtual {v0, p2}, Lcom/miui/privacyapps/ui/a;->o(Ljava/util/ArrayList;)V

    iget p2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->k:I

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10002c

    iget v3, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->k:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, p1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->isSearchMode()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->n:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->updateSearchResult(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public startSearchMode(Lmiuix/view/l$b;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    check-cast p1, Lmiuix/view/l;

    iput-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->j:Lmiuix/view/l;

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method
