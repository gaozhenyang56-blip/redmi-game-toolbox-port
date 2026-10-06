.class public Lcom/miui/gamebooster/ui/BoosterFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lt5/i$a;
.implements Lcom/miui/gamebooster/model/s;
.implements Lw8/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/ui/BoosterFragment$d0;,
        Lcom/miui/gamebooster/ui/BoosterFragment$i0;,
        Lcom/miui/gamebooster/ui/BoosterFragment$g0;,
        Lcom/miui/gamebooster/ui/BoosterFragment$e0;,
        Lcom/miui/gamebooster/ui/BoosterFragment$f0;,
        Lcom/miui/gamebooster/ui/BoosterFragment$h0;
    }
.end annotation


# static fields
.field private static final S:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Z

.field private E:Ljava/lang/Boolean;

.field private F:Ljava/lang/Boolean;

.field private G:Lcom/miui/gamebooster/service/a0;

.field private H:Lcom/miui/gamebooster/service/a0;

.field private I:J

.field private J:Lmiuix/appcompat/app/AlertDialog;

.field private K:Lw8/h;

.field private L:Z

.field private M:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ln8/a;",
            ">;"
        }
    .end annotation
.end field

.field private N:Lcom/miui/gamebooster/model/t;

.field private O:Z

.field private P:Z

.field private Q:Ljava/lang/String;

.field private R:Landroid/content/ServiceConnection;

.field private a:Landroid/content/pm/PackageManager;

.field private b:Lmiui/security/SecurityManager;

.field private c:Lcom/miui/gamebooster/ui/MainTopContentFrame;

.field private d:Landroid/view/View;

.field private e:Landroidx/viewpager/widget/ViewPager;

.field private f:Landroidx/viewpager/widget/ViewPager$i;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Lt5/i;

.field private l:Ljava/lang/Runnable;

.field private m:Ljava/lang/Object;

.field private n:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

.field private o:Lcom/miui/gamebooster/ui/BoosterFragment$h0;

.field private p:Lcom/miui/gamebooster/ui/BoosterFragment$g0;

.field private q:Lmiuix/appcompat/app/AlertDialog;

.field private r:Lmiuix/appcompat/app/AlertDialog;

.field private s:Lmiuix/appcompat/app/AlertDialog;

.field private t:Lmiuix/appcompat/app/ProgressDialog;

.field private u:Lr0/a;

.field private v:Landroid/content/BroadcastReceiver;

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroid/content/pm/ApplicationInfo;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/ui/BoosterFragment;->S:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->w:Ljava/util/ArrayList;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->E:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->F:Ljava/lang/Boolean;

    sget-object v0, Lcom/miui/gamebooster/service/a0;->a:Lcom/miui/gamebooster/service/a0;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->G:Lcom/miui/gamebooster/service/a0;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->H:Lcom/miui/gamebooster/service/a0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->L:Z

    new-instance v0, Lcom/miui/gamebooster/ui/BoosterFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$a;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->R:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic A0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/gamebooster/ui/MainTopContentFrame;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->c:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    return-object p0
.end method

.method private A1()V
    .locals 3

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lx4/a0;->n(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->j:Landroid/view/View;

    new-instance v2, Ly7/d;

    invoke-direct {v2, p0, v0}, Ly7/d;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;I)V

    invoke-static {v1, v2}, Lc7/c;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic B0(Lcom/miui/gamebooster/ui/BoosterFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->C:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic C0(Lcom/miui/gamebooster/ui/BoosterFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->C:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic D0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic E0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic F0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lmiuix/appcompat/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->t:Lmiuix/appcompat/app/ProgressDialog;

    return-object p0
.end method

.method private F1()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->n:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    const-string v1, "xunyou"

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->init(Ljava/lang/String;)I

    sget-object v0, Lcom/miui/gamebooster/service/a0;->c:Lcom/miui/gamebooster/service/a0;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->G:Lcom/miui/gamebooster/service/a0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/gamebooster/ui/BoosterFragment;->S:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiuiVpnServiceException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->d2()V

    return-void
.end method

.method static synthetic G0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/gamebooster/ui/BoosterFragment$h0;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->o:Lcom/miui/gamebooster/ui/BoosterFragment$h0;

    return-object p0
.end method

.method static synthetic H0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic I0(Lcom/miui/gamebooster/ui/BoosterFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->D:Z

    return p1
.end method

.method private I1()V
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/ui/BoosterFragment$n;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$n;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic J0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method private J1(Landroid/content/Context;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "addedGames"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/16 p3, 0x65

    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const-string p2, "tab1_gamebooster"

    const-string p3, "add_game"

    invoke-static {p2, p3}, Lcom/miui/gamebooster/utils/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lb7/b;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic K0(Lcom/miui/gamebooster/ui/BoosterFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->Q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic L0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method private L1()V
    .locals 3

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const-string v1, "gb_gamead_data_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lc7/a;->a()Lc7/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0}, Lc7/a;->c(Landroid/app/Application;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic M0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method private M1()V
    .locals 5

    new-instance v0, Ly7/a;

    invoke-direct {v0, p0}, Ly7/a;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    iget-object v3, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->g:Landroid/view/View;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lc7/c;->I(Ljava/lang/Runnable;[Landroid/view/View;)V

    new-instance v0, Ly7/b;

    invoke-direct {v0, p0}, Ly7/b;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    new-array v2, v1, [Landroid/view/View;

    iget-object v3, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->h:Landroid/view/View;

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lc7/c;->I(Ljava/lang/Runnable;[Landroid/view/View;)V

    new-instance v0, Ly7/c;

    invoke-direct {v0, p0}, Ly7/c;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->i:Landroid/view/View;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lc7/c;->I(Ljava/lang/Runnable;[Landroid/view/View;)V

    return-void
.end method

.method static synthetic N0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic N1(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->j:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method static synthetic O0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic O1()V
    .locals 3

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->w:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gamebooster/ui/BoosterFragment;->J1(Landroid/content/Context;Landroid/app/Activity;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic P0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private synthetic P1()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->N:Lcom/miui/gamebooster/model/t;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/miui/gamebooster/model/t;->S()V

    return-void
.end method

.method static synthetic Q0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic Q1()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->e:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->k:Lt5/i;

    invoke-virtual {v1, v0}, Lt5/i;->h(I)Lcom/miui/gamebooster/model/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/miui/gamebooster/ui/BoosterFragment;->K(Lcom/miui/gamebooster/model/c;IZ)V

    return-void
.end method

.method static synthetic R0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method private R1(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->S1(II)V

    return-void
.end method

.method static synthetic S0(Lcom/miui/gamebooster/ui/BoosterFragment;Lcom/miui/common/base/asyn/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

    return-void
.end method

.method private S1(II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/gamebooster/ui/BoosterFragment$o;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gamebooster/ui/BoosterFragment$o;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;II)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic T0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private T1(Lcom/miui/gamebooster/ui/BoosterFragment;)V
    .locals 2

    new-instance v0, Lcom/miui/gamebooster/ui/BoosterFragment$e0;

    invoke-direct {v0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment$e0;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic U0(Lcom/miui/gamebooster/ui/BoosterFragment;Lcom/miui/common/base/asyn/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

    return-void
.end method

.method private U1()V
    .locals 3

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    move-result-object v0

    invoke-virtual {v0}, Lm6/a;->t()Z

    move-result v0

    const-string v1, "loadGameListFromSql"

    if-eqz v0, :cond_1

    invoke-static {}, Lm6/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, La8/g0;->Y()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2}, La8/v1;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->Y1()V

    :cond_0
    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, La8/j0;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->X1()V

    sget-object v0, Lcom/miui/gamebooster/ui/BoosterFragment;->S:Ljava/lang/String;

    const-string v1, "loadLocalGameList"

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->W1()V

    sget-object v0, Lcom/miui/gamebooster/ui/BoosterFragment;->S:Ljava/lang/String;

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic V0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic W0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lt5/i;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->k:Lt5/i;

    return-object p0
.end method

.method private W1()V
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/ui/BoosterFragment$w;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$w;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic X0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->e:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private X1()V
    .locals 3

    new-instance v0, Lcom/miui/gamebooster/ui/BoosterFragment$f0;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$f0;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic Y0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroidx/viewpager/widget/ViewPager$i;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->f:Landroidx/viewpager/widget/ViewPager$i;

    return-object p0
.end method

.method private Y1()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1202c7

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e056f

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120499

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/ui/BoosterFragment$z;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$z;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120f48

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/ui/BoosterFragment$y;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$y;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->s:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic Z0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a1(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method private a2(ILcom/miui/gamebooster/model/c0;)V
    .locals 6

    const-string v0, "show"

    const-string v1, "time"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/utils/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/c0;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120e8e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/c0;->a()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100079

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/c0;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120499

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v1, Lcom/miui/gamebooster/ui/BoosterFragment$i;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$i;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/c0;->c()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f12156f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_3
    new-instance v0, Lcom/miui/gamebooster/ui/BoosterFragment$h;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$h;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/miui/networkassistant/utils/DateUtil;->getDateFormat(I)Ljava/text/SimpleDateFormat;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "gb_notification_expired"

    invoke-static {p2, p1}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/gamebooster/ui/BoosterFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->P1()V

    return-void
.end method

.method static synthetic b1(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/gamebooster/ui/BoosterFragment$g0;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->p:Lcom/miui/gamebooster/ui/BoosterFragment$g0;

    return-object p0
.end method

.method private b2(Lcom/miui/gamebooster/model/c0;)V
    .locals 8

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, La8/o0;->b(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    return-void

    :cond_0
    const-string v4, "gb_notification_overdue_xy_time"

    invoke-static {v4, v0, v1}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v5, v0, v2

    if-gez v5, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v5, v2, v5

    if-lez v5, :cond_1

    goto/16 :goto_4

    :cond_1
    sget-object v5, Lcom/miui/gamebooster/ui/BoosterFragment;->S:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openNetBoosterOverDueDialog: xunyouOverTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\tlastShowOverTime="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "show"

    const-string v1, "time"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/utils/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/c0;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120e8f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/c0;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120e90

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/c0;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120499

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v2, Lcom/miui/gamebooster/ui/BoosterFragment$k;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$k;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/c0;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f12156f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_3
    new-instance v1, Lcom/miui/gamebooster/ui/BoosterFragment$j;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$j;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v4, v0, v1}, Lr4/a;->q(Ljava/lang/String;J)V

    :cond_6
    :goto_4
    return-void
.end method

.method public static synthetic c0(Lcom/miui/gamebooster/ui/BoosterFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->O1()V

    return-void
.end method

.method static synthetic c1(Lcom/miui/gamebooster/ui/BoosterFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->F1()V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/gamebooster/ui/BoosterFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->N1(I)V

    return-void
.end method

.method static synthetic d1(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method private d2()V
    .locals 4

    new-instance v0, Lcom/miui/gamebooster/ui/BoosterFragment$i0;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$i0;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    new-instance v1, Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->t:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->t:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121c8b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->t:Lmiuix/appcompat/app/ProgressDialog;

    new-instance v2, Lcom/miui/gamebooster/ui/BoosterFragment$c;

    invoke-direct {v2, p0, v0}, Lcom/miui/gamebooster/ui/BoosterFragment$c;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;Lcom/miui/gamebooster/ui/BoosterFragment$i0;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->t:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/gamebooster/ui/BoosterFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->Q1()V

    return-void
.end method

.method static synthetic e1(Lcom/miui/gamebooster/ui/BoosterFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->R1(I)V

    return-void
.end method

.method private e2(Ljava/lang/Boolean;)V
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/ui/BoosterFragment$p;

    invoke-direct {v0, p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment$p;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;Ljava/lang/Boolean;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic f0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->n:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-object p0
.end method

.method static synthetic f1(Lcom/miui/gamebooster/ui/BoosterFragment;ZLcom/miui/gamebooster/model/c0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/ui/BoosterFragment;->o2(ZLcom/miui/gamebooster/model/c0;)V

    return-void
.end method

.method private f2()V
    .locals 0
    return-void
.end method

.method static synthetic g0(Lcom/miui/gamebooster/ui/BoosterFragment;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->n:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-object p1
.end method

.method static synthetic g1(Lcom/miui/gamebooster/ui/BoosterFragment;Lcom/miui/gamebooster/model/c0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->b2(Lcom/miui/gamebooster/model/c0;)V

    return-void
.end method

.method static synthetic h0(Lcom/miui/gamebooster/ui/BoosterFragment;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->F:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic h1(Lcom/miui/gamebooster/ui/BoosterFragment;ILcom/miui/gamebooster/model/c0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/ui/BoosterFragment;->a2(ILcom/miui/gamebooster/model/c0;)V

    return-void
.end method

.method private h2()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    invoke-static {}, Ln6/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->n:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->n:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "gb_update_adapter_action"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/miui/gamebooster/ui/BoosterFragment$r;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$r;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    iput-object v2, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->v:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->u:Lr0/a;

    invoke-virtual {v3, v2, v0}, Lr0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.miui.securitycenter"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.miui.networkassistant.vpn.MIUI_VPN_MANAGE_SERVICE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->R:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-static {v2, v0, v3, v1, v4}, Lx4/v;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic i0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/gamebooster/service/a0;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->H:Lcom/miui/gamebooster/service/a0;

    return-object p0
.end method

.method static synthetic i1(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private i2()V
    .locals 4

    new-instance v0, Lcom/miui/gamebooster/ui/BoosterFragment$s;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$s;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, La8/o0;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->D:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/gamebooster/service/a0;->d:Lcom/miui/gamebooster/service/a0;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->G:Lcom/miui/gamebooster/service/a0;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->n:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    const-string v1, "xunyou"

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->init(Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->D:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/gamebooster/ui/BoosterFragment;->S:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic j0(Lcom/miui/gamebooster/ui/BoosterFragment;Lcom/miui/gamebooster/service/a0;)Lcom/miui/gamebooster/service/a0;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->H:Lcom/miui/gamebooster/service/a0;

    return-object p1
.end method

.method static synthetic j1(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method private j2()V
    .locals 2

    new-instance v0, Lcom/miui/gamebooster/ui/BoosterFragment$x;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$x;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->K:Lw8/h;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lw8/h$b;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lw8/h;->g(Lw8/h$b;)V

    :goto_0
    return-void
.end method

.method static synthetic k0(Lcom/miui/gamebooster/ui/BoosterFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->F:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic k1(Lcom/miui/gamebooster/ui/BoosterFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->f2()V

    return-void
.end method

.method static synthetic l0(Lcom/miui/gamebooster/ui/BoosterFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->e2(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic l1(Lcom/miui/gamebooster/ui/BoosterFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->A:Z

    return p0
.end method

.method private l2(I)V
    .locals 3

    const-string v0, "gb_notification_business_period"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    if-le p1, v0, :cond_0

    invoke-direct {p0, v2}, Lcom/miui/gamebooster/ui/BoosterFragment;->R1(I)V

    move v1, v2

    :cond_0
    sget-object p1, Ln6/f;->c:Ln6/f;

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->s2(Ln6/f;)V

    if-nez v1, :cond_1

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->R1(I)V

    :cond_1
    return-void
.end method

.method static synthetic m0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic m1(Lcom/miui/gamebooster/ui/BoosterFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->A:Z

    return p1
.end method

.method private static m2(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    move-result-object v0

    invoke-virtual {v0}, Lm6/a;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-lez p1, :cond_0

    const p1, 0x7f1200b6

    goto :goto_0

    :cond_0
    const p1, 0x7f120ec8

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    invoke-static {p0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    const/4 p0, 0x0

    invoke-static {p0}, Lm6/a;->b0(Z)V

    return-void
.end method

.method static synthetic n0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic n1(Lcom/miui/gamebooster/ui/BoosterFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->z:Z

    return p0
.end method

.method private n2(Landroid/app/Activity;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lx4/t;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leg/o;->c(Landroid/content/Context;Z)V

    check-cast p1, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    iget-object p1, p1, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->g:Lcom/miui/gamebooster/ui/BoosterFragment$d0;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/miui/gamebooster/ui/BoosterFragment$d0;->a()V

    goto :goto_0

    :cond_1
    const v0, 0x7f120987

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f120986

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x104000a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/miui/gamebooster/ui/BoosterFragment$f;

    invoke-direct {v6, p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment$f;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;Landroid/app/Activity;)V

    new-instance v7, Lcom/miui/gamebooster/ui/BoosterFragment$g;

    invoke-direct {v7, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$g;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/miui/securityscan/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lqf/c;->M0(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic o0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->a:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic o1(Lcom/miui/gamebooster/ui/BoosterFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->p2(Z)V

    return-void
.end method

.method private o2(ZLcom/miui/gamebooster/model/c0;)V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->L:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->O:Z

    if-eqz v0, :cond_0

    goto/16 :goto_d

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "gt_xunyou_net_booster_try_again_dialog_show_again"

    invoke-static {v1, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string v1, "gamebooster_free_send_netbooster_open_nomore"

    invoke-static {v1, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/c0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/miui/gamebooster/model/c0;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120907

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/c0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Lcom/miui/gamebooster/model/c0;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12090a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    const-string v3, "PopupNewUser"

    iput-object v3, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->Q:Ljava/lang/String;

    if-eqz p1, :cond_b

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/c0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p2}, Lcom/miui/gamebooster/model/c0;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_8
    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120908

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_5
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/c0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {p2}, Lcom/miui/gamebooster/model/c0;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_a
    :goto_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120909

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_7
    const-string v3, "PopupTwiceTrial"

    iput-object v3, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->Q:Ljava/lang/String;

    :cond_b
    const-string v3, "time"

    const-string v4, "show"

    if-nez p1, :cond_c

    invoke-static {v4, v3}, Lcom/miui/gamebooster/utils/a;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    invoke-static {v4, v3}, Lcom/miui/gamebooster/utils/a;->p(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    new-instance v3, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/c0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_9

    :cond_d
    invoke-virtual {p2}, Lcom/miui/gamebooster/model/c0;->b()Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_e
    :goto_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120499

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_a
    new-instance v3, Lcom/miui/gamebooster/ui/BoosterFragment$m;

    invoke-direct {v3, p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment$m;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;Z)V

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/c0;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_b

    :cond_f
    invoke-virtual {p2}, Lcom/miui/gamebooster/model/c0;->c()Ljava/lang/String;

    move-result-object p2

    goto :goto_c

    :cond_10
    :goto_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f120f7a

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_c
    new-instance v2, Lcom/miui/gamebooster/ui/BoosterFragment$l;

    invoke-direct {v2, p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment$l;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;Z)V

    invoke-virtual {v1, p2, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f120865

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->O:Z

    :cond_11
    :goto_d
    return-void
.end method

.method static synthetic p0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic p1(Lcom/miui/gamebooster/ui/BoosterFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->z:Z

    return p1
.end method

.method private p2(Z)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->c:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Lc7/c;->f(Z[Landroid/view/View;)V

    xor-int/2addr p1, v0

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->d:Landroid/view/View;

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lc7/c;->f(Z[Landroid/view/View;)V

    return-void
.end method

.method static synthetic q0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic q1(Lcom/miui/gamebooster/ui/BoosterFragment;Lcom/miui/gamebooster/ui/BoosterFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->T1(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    return-void
.end method

.method private q2()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gamebooster/model/d;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->r0()Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1, v0}, Lcom/miui/gamebooster/service/IGameBooster;->Z1(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/gamebooster/ui/BoosterFragment;->S:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic r0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic r1(Lcom/miui/gamebooster/ui/BoosterFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->E:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic s0(Lcom/miui/gamebooster/ui/BoosterFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->x:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic s1(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private s2(Ln6/f;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    const/4 v0, 0x1

    invoke-static {v0}, Lm6/a;->C(Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ln6/f;->c:Ln6/f;

    if-eq p1, v0, :cond_0

    sget-object p1, Ln6/f;->a:Ln6/f;

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->c:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->f(Ln6/f;)V

    :cond_1
    return-void
.end method

.method static synthetic t0(Lcom/miui/gamebooster/ui/BoosterFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->j2()V

    return-void
.end method

.method static synthetic t1(Lcom/miui/gamebooster/ui/BoosterFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->W1()V

    return-void
.end method

.method static synthetic u0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/ui/BoosterFragment;->S:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u1(Lcom/miui/gamebooster/ui/BoosterFragment;Lcom/miui/common/base/asyn/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

    return-void
.end method

.method static synthetic v0(Lcom/miui/gamebooster/ui/BoosterFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->q2()V

    return-void
.end method

.method static synthetic v1(Lcom/miui/gamebooster/ui/BoosterFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->B:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic w0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic w1(Lcom/miui/gamebooster/ui/BoosterFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->B:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic x0(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->m2(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic x1(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/gamebooster/service/a0;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->G:Lcom/miui/gamebooster/service/a0;

    return-object p0
.end method

.method static synthetic y0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic y1(Lcom/miui/gamebooster/ui/BoosterFragment;Lcom/miui/gamebooster/service/a0;)Lcom/miui/gamebooster/service/a0;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->G:Lcom/miui/gamebooster/service/a0;

    return-object p1
.end method

.method static synthetic z0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic z1(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->y:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public B(I)V
    .locals 2

    invoke-static {p0}, Lc7/c;->i(Lmiuix/appcompat/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->k:Lt5/i;

    invoke-virtual {v0}, Lt5/i;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->e:Landroidx/viewpager/widget/ViewPager;

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public B1(Ln6/g;)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->L:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->P:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    check-cast p1, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->n2(Landroid/app/Activity;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->P:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->J:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_1

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120987

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120986

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/miui/gamebooster/ui/BoosterFragment$e;

    invoke-direct {v2, p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment$e;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;Ln6/g;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    new-instance v1, Lcom/miui/gamebooster/ui/BoosterFragment$d;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$d;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->J:Lmiuix/appcompat/app/AlertDialog;

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->J:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->J:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public C1(Lcom/miui/gamebooster/model/t;)Lcom/miui/gamebooster/ui/BoosterFragment;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->N:Lcom/miui/gamebooster/model/t;

    return-object p0
.end method

.method public D1(Ljava/lang/Runnable;)Lcom/miui/gamebooster/ui/BoosterFragment;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method protected E1()V
    .locals 9

    invoke-static {}, La8/o0;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ll7/b;->b()Ll7/b;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    const v0, 0x7f120bbf

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f120bbc

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f120bbd

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/miui/gamebooster/ui/BoosterFragment$q;

    invoke-direct {v8, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$q;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    const-string v6, "https://xunyou.mobi/article-4557.html"

    const-string v7, "xunyou_booster_speed"

    invoke-virtual/range {v1 .. v8}, Ll7/b;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ll7/b$j;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->f2()V

    return-void
.end method

.method public G1(Landroid/content/Context;Landroid/app/Activity;Ljava/util/ArrayList;Lcom/miui/gamebooster/model/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/gamebooster/model/c;",
            ")V"
        }
    .end annotation

    if-nez p4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    :goto_0
    if-nez p4, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/ui/BoosterFragment;->J1(Landroid/content/Context;Landroid/app/Activity;Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object p2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "already_added_game"

    invoke-static {v1, p2, p3}, La8/p1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p2, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {p2}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    move-result-object p2

    invoke-virtual {p2}, Lm6/a;->x()Z

    move-result p2

    const-string p3, "run_game"

    const-string v1, "tab1_gamebooster"

    const v2, 0x186a0

    if-nez p2, :cond_3

    iget-object p2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    div-int/2addr p4, v2

    invoke-static {p4}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object p4

    invoke-static {p1, p2, p4}, La8/k0;->q(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {v1, p3}, Lcom/miui/gamebooster/utils/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 p2, 0x0

    invoke-static {p2}, Lm6/a;->O(Z)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p4}, Lcom/miui/gamebooster/model/c;->j()Z

    move-result p2

    if-eqz p2, :cond_4

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->y:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->E:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->Z1(Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    invoke-virtual {p2}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->r0()Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object p2

    iget-object p4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    div-int/2addr v0, v2

    invoke-static {v0}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p1, p2, p4, v0}, La8/k0;->k(Landroid/content/Context;Lcom/miui/gamebooster/service/IGameBooster;Ljava/lang/String;Landroid/os/UserHandle;)V

    :goto_1
    invoke-static {v1, p3}, Lcom/miui/gamebooster/utils/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public H1()Lcom/miui/gamebooster/model/u;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->c:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    return-object v0
.end method

.method public K(Lcom/miui/gamebooster/model/c;IZ)V
    .locals 3
    .param p1    # Lcom/miui/gamebooster/model/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Lc7/c;->i(Lmiuix/appcompat/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->G1(Landroid/content/Context;Landroid/app/Activity;Ljava/util/ArrayList;Lcom/miui/gamebooster/model/c;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lb7/b;->f(Landroid/content/Context;Ljava/lang/String;IZ)V

    goto :goto_1

    :cond_2
    if-ge p2, v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->o(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->B(I)V

    :goto_1
    return-void
.end method

.method public K1()V
    .locals 2

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ln6/g;->b:Ln6/g;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->B1(Ln6/g;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->D:Z

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->E1()V

    const-string v0, "tab1_gamebooster"

    const-string v1, "network_speeding"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/utils/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Q()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->r2()V

    return-void
.end method

.method public V1(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p1}, La8/j0;->p(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    return v0

    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    sget-object v2, Lcom/miui/gamebooster/ui/BoosterFragment;->S:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    return v0

    :goto_0
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method protected Z1(Ljava/lang/Boolean;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gamebooster_netbooster_open_nomore"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "show"

    const-string v0, "time"

    invoke-static {p1, v0}, Lcom/miui/gamebooster/utils/a;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120e92

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120e91

    invoke-static {v0, v2}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120499

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/miui/gamebooster/ui/BoosterFragment$b0;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$b0;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    invoke-virtual {p1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120f7a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/miui/gamebooster/ui/BoosterFragment$a0;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$a0;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    invoke-virtual {p1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120865

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->r:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->F:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->c2(Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->y:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->r0()Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->y:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const v3, 0x186a0

    div-int/2addr v1, v3

    invoke-static {v1}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {p1, v0, v2, v1}, La8/k0;->k(Landroid/content/Context;Lcom/miui/gamebooster/service/IGameBooster;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected c2(Ljava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const-string v1, "gamebooster_netbooster_wifi_open_nomore"

    invoke-static {v1, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p1, "show"

    const-string v0, "time"

    invoke-static {p1, v0}, Lcom/miui/gamebooster/utils/a;->D(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121c8d

    invoke-static {p1, v1}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0572

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120499

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/ui/BoosterFragment$b;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$b;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120f7a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/ui/BoosterFragment$c0;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$c0;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->q:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->q:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x7f0b0d12

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const v1, 0x7f121c8c

    invoke-static {p1, v1}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lzg/a;->a(Landroid/content/Context;)Lzg/a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lzg/a;->c(Z)V

    :cond_4
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->F1()V

    return-void
.end method

.method public g2()V
    .locals 4

    invoke-static {}, La8/o0;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->n:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    const-string v1, "xunyou"

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->init(Ljava/lang/String;)I

    sget-object v0, Lcom/miui/gamebooster/service/a0;->d:Lcom/miui/gamebooster/service/a0;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->G:Lcom/miui/gamebooster/service/a0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/gamebooster/ui/BoosterFragment;->S:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiuiVpnServiceException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected initView()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const v0, 0x7f0b02a3

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/MainTopContentFrame;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->c:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    const v0, 0x7f0b0183

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->d:Landroid/view/View;

    const v0, 0x7f0b0d78

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->e:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f0b0085

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->g:Landroid/view/View;

    const v0, 0x7f0b0a4e

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->h:Landroid/view/View;

    const v0, 0x7f0b08cc

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->i:Landroid/view/View;

    const v0, 0x7f0b0b3a

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->M:Ljava/util/Set;

    const v1, 0x7f0b04c9

    invoke-virtual {p0, v1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ln8/a;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->A1()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->c:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->c(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->M1()V

    new-instance v0, Lt5/i;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lt5/i;-><init>(Landroid/content/Context;Lt5/i$a;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->k:Lt5/i;

    const v0, 0x7f0b0d79

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0d7a

    invoke-virtual {p0, v1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0, v2, v1}, Ll8/c;->c(Landroid/view/View;Landroidx/viewpager/widget/ViewPager;Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->i:Landroid/view/View;

    invoke-static {v0}, Ll8/c;->b(Landroid/view/View;)V

    invoke-static {}, La8/k2;->A()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    new-array v0, v3, [Landroid/view/View;

    const v5, 0x7f0b07e9

    invoke-virtual {p0, v5}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v0, v4

    const v5, 0x7f0b07e8

    invoke-virtual {p0, v5}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-static {v0}, Lc7/c;->F([Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->e:Landroidx/viewpager/widget/ViewPager;

    iget-object v5, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->k:Lt5/i;

    invoke-virtual {v0, v5}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->e:Landroidx/viewpager/widget/ViewPager;

    new-instance v5, Ll8/c$d;

    invoke-direct {v5, v1}, Ll8/c$d;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0b0459

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/view/View;

    aput-object v0, v5, v4

    iget-object v6, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->i:Landroid/view/View;

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->d:Landroid/view/View;

    aput-object v6, v5, v3

    invoke-static {v1, v5}, Lc7/c;->d(Landroid/content/Context;[Landroid/view/View;)V

    new-instance v1, Ll8/c$c;

    iget-object v3, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->k:Lt5/i;

    iget-object v5, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->i:Landroid/view/View;

    invoke-direct {v1, v3, v0, v5}, Ll8/c$c;-><init>(Lt5/i;Landroid/widget/TextView;Landroid/view/View;)V

    iput-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->f:Landroidx/viewpager/widget/ViewPager$i;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->a:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->c:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->p:Lcom/miui/gamebooster/ui/BoosterFragment$g0;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->setEventHandler(Lw4/e;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->U1()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    iget-boolean v0, v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->m:Z

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->A:Z

    invoke-static {}, Ln6/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->A:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-direct {p0, v2}, Lcom/miui/gamebooster/ui/BoosterFragment;->p2(Z)V

    invoke-static {}, Ln6/a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->A:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->r2()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->C:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->c:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->setBusinessText(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->T1(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {v4}, Lm6/a;->D0(Z)V

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Ln6/g;->c:Ln6/g;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->B1(Ln6/g;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public k2(Ljava/lang/String;)Lcom/miui/gamebooster/ui/BoosterFragment;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->Q:Ljava/lang/String;

    return-object p0
.end method

.method public o(I)V
    .locals 2

    invoke-static {p0}, Lc7/c;->i(Lmiuix/appcompat/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->e:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/miui/gamebooster/ui/BoosterFragment$t;

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$t;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    invoke-static {p1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->L:Z

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->M:Ljava/util/Set;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->b:Lmiui/security/SecurityManager;

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->u:Lr0/a;

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->h2()V

    new-instance p1, Lcom/miui/gamebooster/ui/BoosterFragment$g0;

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$g0;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->p:Lcom/miui/gamebooster/ui/BoosterFragment$g0;

    new-instance p1, Lcom/miui/gamebooster/ui/BoosterFragment$h0;

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$h0;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->o:Lcom/miui/gamebooster/ui/BoosterFragment$h0;

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->L1()V

    const/4 p1, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;
    move-result-object v2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v2

    iput-object v2, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->m:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-boolean v2, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->L:Z

    if-nez v2, :cond_0

    invoke-static {v1}, Lm6/a;->O(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ln6/a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Lw8/h;

    iget-object v2, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lw8/h;-><init>(Landroid/content/Context;)V

    :cond_0
    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->K:Lw8/h;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->M:Ljava/util/Set;

    new-array v0, v0, [Lw8/h;

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lb7/b;->d(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e0200

    return v0
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    invoke-static {}, Ll8/c;->h()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->u:Lr0/a;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lr0/a;->e(Landroid/content/BroadcastReceiver;)V

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->n:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->o:Lcom/miui/gamebooster/ui/BoosterFragment$h0;

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->unregisterCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/gamebooster/ui/BoosterFragment;->S:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->n:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->R:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->R:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->k:Lt5/i;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->c:Lcom/miui/gamebooster/ui/MainTopContentFrame;

    aput-object v2, v0, v1

    invoke-static {v0}, Lc7/c;->h([Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->N:Lcom/miui/gamebooster/model/t;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->M:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onPause()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->M:Ljava/util/Set;

    invoke-static {v0}, Lc7/c;->x(Ljava/util/Collection;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->I:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {v0, v1}, Lcom/miui/gamebooster/utils/a;->u0(J)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->i2()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->M:Ljava/util/Set;

    invoke-static {v0}, Lc7/c;->y(Ljava/util/Collection;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->I:J

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->M:Ljava/util/Set;

    invoke-static {v0}, Lc7/c;->z(Ljava/util/Collection;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->M:Ljava/util/Set;

    invoke-static {v0}, Lc7/c;->A(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment;->k:Lt5/i;

    invoke-virtual {v1}, Lt5/i;->i()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/miui/gamebooster/ui/BoosterFragment$v;

    invoke-direct {v1, p0, v0}, Lcom/miui/gamebooster/ui/BoosterFragment$v;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment;Ljava/util/List;)V

    invoke-static {v1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public r2()V
    .locals 13

    const-string v0, "UTF-8"

    invoke-static {}, Ln6/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lef/x;->z()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Ln6/g;->a:Ln6/g;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->B1(Ln6/g;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lc3/w;->c(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static {v2}, Lm6/a;->D0(Z)V

    return-void

    :cond_2
    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, La8/o0;->b(J)J

    move-result-wide v5

    const/4 v1, 0x2

    const/4 v7, 0x0

    :try_start_0
    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v9}, Lc3/w;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v9, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v8, Lcom/miui/gamebooster/ui/BoosterFragment;->S:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v7

    :goto_0
    const-string v0, "gb_xiaomi_id_md5_key"

    invoke-static {v0, v7}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v6}, Lcom/miui/networkassistant/utils/DateUtil;->getFromNowDayInterval(J)I

    move-result v10

    if-eqz v9, :cond_3

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    invoke-static {v0, v8}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v5, v3

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v0, v5, v8

    const/4 v8, 0x1

    if-lez v0, :cond_5

    move v0, v8

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    const-string v9, "gamebooster_xunyou_cache_expire"

    invoke-static {v9, v8}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v9

    cmp-long v3, v5, v3

    const-wide/16 v11, 0x0

    if-nez v3, :cond_6

    invoke-static {v11, v12}, La8/o0;->B(J)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->I1()V

    goto :goto_2

    :cond_6
    cmp-long v3, v5, v11

    if-nez v3, :cond_7

    sget-object v1, Ln6/f;->a:Ln6/f;

    invoke-direct {p0, v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->s2(Ln6/f;)V

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->R1(I)V

    sget-object v1, Lcom/miui/gamebooster/ui/BoosterFragment;->S:Ljava/lang/String;

    const-string v3, "showTryOutOrTryAgainDialog from GAMEBOOSTER_XUNYOU_CACHE_TIME_NOT_FIRST"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_9

    if-eqz v9, :cond_a

    sget-object v3, Ln6/f;->b:Ln6/f;

    invoke-direct {p0, v3}, Lcom/miui/gamebooster/ui/BoosterFragment;->s2(Ln6/f;)V

    const-string v3, "gb_notification_expired"

    invoke-static {v3, v7}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    neg-int v4, v10

    if-ge v4, v1, :cond_b

    if-lez v4, :cond_b

    if-eqz v3, :cond_8

    invoke-static {v1}, Lcom/miui/networkassistant/utils/DateUtil;->getDateFormat(I)Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_8
    const/4 v1, 0x4

    invoke-direct {p0, v1, v4}, Lcom/miui/gamebooster/ui/BoosterFragment;->S1(II)V

    goto :goto_2

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v5, v3

    if-gez v1, :cond_b

    :cond_a
    invoke-direct {p0, v10}, Lcom/miui/gamebooster/ui/BoosterFragment;->l2(I)V

    :cond_b
    :goto_2
    if-eqz v0, :cond_c

    if-eqz v9, :cond_c

    move v2, v8

    :cond_c
    invoke-static {v2}, Lm6/a;->D0(Z)V

    return-void
.end method
