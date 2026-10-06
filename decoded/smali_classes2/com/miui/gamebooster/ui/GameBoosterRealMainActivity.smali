.class public Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;
.super Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;
.source "SourceFile"

# interfaces
.implements Lw8/a;
.implements Lcom/miui/gamebooster/model/t;
.implements Lcom/miui/gamebooster/model/u;


# static fields
.field private static final C:Ljava/lang/String; = "GameBoosterRealMainActivity"


# instance fields
.field A:Lo4/a$a;

.field private B:Ljava/lang/Runnable;

.field private c:Z

.field public d:Lw8/j;

.field private e:Lw8/i;

.field private f:Lmiuix/appcompat/app/AlertDialog;

.field public g:Lcom/miui/gamebooster/ui/BoosterFragment$d0;

.field public h:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

.field private i:Lr0/a;

.field private j:Lmiui/security/SecurityManager;

.field public k:Lw8/d;

.field private l:Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field private r:Lcom/miui/gamebooster/service/IGameBooster;

.field public s:Ljava/lang/String;

.field private t:Lx7/a;

.field private u:Lx7/a$a;

.field private v:Lsf/e$c;

.field public w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private x:Landroidx/fragment/app/Fragment;

.field private y:Ljava/lang/String;

.field private z:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;-><init>()V

    invoke-static {}, Ln6/a;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->n:Z

    const-string v1, "key_gamebooster_support_sign_function"

    invoke-static {v1, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->p:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->w:Ljava/util/List;

    const-string v0, "MainEntrance"

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->y:Ljava/lang/String;

    new-instance v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$b;-><init>(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->z:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$c;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$c;-><init>(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->A:Lo4/a$a;

    new-instance v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$d;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$d;-><init>(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->B:Ljava/lang/Runnable;

    return-void
.end method

.method private A0(Landroid/app/Activity;)V
    .locals 7

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, La8/w1;->e(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    invoke-static {}, La8/g0;->Y()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Leg/c;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$e;

    invoke-direct {v0, p0, p1}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$e;-><init>(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->u:Lx7/a$a;

    new-instance v0, Lx7/a;

    iget-object v5, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->u:Lx7/a$a;

    const-string v3, "gamebooster"

    const-string v4, "appinfo"

    const-string v6, "com.miui.securityadd"

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lx7/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lx7/a$a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->t:Lx7/a;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$f;

    invoke-direct {v0, p0, p1}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$f;-><init>(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->v:Lsf/e$c;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->v:Lsf/e$c;

    invoke-virtual {p1, v0}, Lsf/e;->l(Lsf/e$c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic f0(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->l:Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)Lr0/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->i:Lr0/a;

    return-object p0
.end method

.method static synthetic h0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->C:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i0(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)Lcom/miui/gamebooster/service/IGameBooster;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->r:Lcom/miui/gamebooster/service/IGameBooster;

    return-object p0
.end method

.method static synthetic j0(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;Lcom/miui/gamebooster/service/IGameBooster;)Lcom/miui/gamebooster/service/IGameBooster;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->r:Lcom/miui/gamebooster/service/IGameBooster;

    return-object p1
.end method

.method static synthetic k0(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->s0()V

    return-void
.end method

.method static synthetic l0(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->p0()V

    return-void
.end method

.method static synthetic m0(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;Lcom/miui/gamebooster/model/b;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->y0(Lcom/miui/gamebooster/model/b;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic n0(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->w0()V

    return-void
.end method

.method private o0()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    return-void
.end method

.method private p0()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120987

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120986

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$a;-><init>(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$j;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$j;-><init>(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private s0()V
    .locals 3

    new-instance v0, Lw8/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lw8/f;-><init>(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;Z)V

    iget-object v2, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->w:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private u0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->e:Lw8/i;

    if-nez v0, :cond_0

    new-instance v0, Lw8/j;

    invoke-direct {v0, p0}, Lw8/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->d:Lw8/j;

    new-instance v1, Lw8/c;

    invoke-direct {v1, p0}, Lw8/c;-><init>(Lw8/a;)V

    invoke-virtual {v0, v1}, Lw8/j;->setGiftCallBack(Lw8/a;)V

    new-instance v0, Lw8/i;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->d:Lw8/j;

    const v2, 0x7f1307fa

    invoke-direct {v0, p0, v1, v2}, Lw8/i;-><init>(Landroid/content/Context;Lw8/j;I)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->e:Lw8/i;

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->e:Lw8/i;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const-string v0, "show"

    const-string v1, "time"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->d:Lw8/j;

    invoke-virtual {v0}, Lw8/j;->f()V

    return-void
.end method

.method private v0()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "key_booster_fragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    instance-of v3, v2, Lcom/miui/gamebooster/ui/BoosterFragment;

    if-eqz v3, :cond_0

    iput-object v2, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->x:Landroidx/fragment/app/Fragment;

    check-cast v2, Lcom/miui/gamebooster/ui/BoosterFragment;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->y:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->k2(Ljava/lang/String;)Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-virtual {v2, p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->C1(Lcom/miui/gamebooster/model/t;)Lcom/miui/gamebooster/ui/BoosterFragment;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->B:Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->D1(Ljava/lang/Runnable;)Lcom/miui/gamebooster/ui/BoosterFragment;

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-direct {v2}, Lcom/miui/gamebooster/ui/BoosterFragment;-><init>()V

    invoke-virtual {v2, p0}, Lcom/miui/gamebooster/ui/BoosterFragment;->C1(Lcom/miui/gamebooster/model/t;)Lcom/miui/gamebooster/ui/BoosterFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->B:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/ui/BoosterFragment;->D1(Ljava/lang/Runnable;)Lcom/miui/gamebooster/ui/BoosterFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/ui/BoosterFragment;->k2(Ljava/lang/String;)Lcom/miui/gamebooster/ui/BoosterFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->x:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    const v2, 0x7f0b0436

    iget-object v3, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->x:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/s;->w(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->x:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->E(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->k()I

    :goto_0
    return-void
.end method

.method private w0()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->o:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->u0()V

    invoke-static {}, Ls7/a;->b()Ls7/a;

    move-result-object v0

    invoke-virtual {v0}, Ls7/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->h:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    const-string v1, "xunyou"

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->init(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->d:Lw8/j;

    invoke-virtual {v0}, Lw8/j;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->q:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->t0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->C:Ljava/lang/String;

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

    :cond_1
    :goto_0
    return-void
.end method

.method private x0()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enter_homepage_way"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->y:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private y0(Lcom/miui/gamebooster/model/b;Landroid/app/Activity;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/b;->b()I

    move-result v2

    div-int/lit16 v2, v2, 0x400

    div-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f12160a

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12160c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121609

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$h;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$h;-><init>(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12160b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$g;

    invoke-direct {v2, p0, p1, p2}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$g;-><init>(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;Lcom/miui/gamebooster/model/b;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->f:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private z0()V
    .locals 3

    new-instance v0, Lw8/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lw8/f;-><init>(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;Z)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public B()V
    .locals 1

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->z0()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->p0()V

    :goto_0
    return-void
.end method

.method public G()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->x:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/miui/gamebooster/ui/BoosterFragment;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->H1()Lcom/miui/gamebooster/model/u;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/miui/gamebooster/model/u;->G()V

    return-void
.end method

.method public O()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->x:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/miui/gamebooster/ui/BoosterFragment;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->H1()Lcom/miui/gamebooster/model/u;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/miui/gamebooster/model/u;->O()V

    return-void
.end method

.method public Q(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->x:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/miui/gamebooster/ui/BoosterFragment;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->H1()Lcom/miui/gamebooster/model/u;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/miui/gamebooster/model/u;->Q(ILjava/lang/String;)V

    return-void
.end method

.method public S()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gamebooster/ui/GameBoosterSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x20b

    invoke-virtual {p0, v0, v1}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->m()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&gift="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121ca6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->y:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, La8/k0;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->e:Lw8/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->e:Lw8/i;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x20b

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->x:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->x:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/miui/gamebooster/model/s;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/gamebooster/model/s;

    invoke-interface {v0}, Lcom/miui/gamebooster/model/s;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setGestureLineEnableSupport(Z)V

    invoke-super {p0, p1}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, La8/g0;->Y()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "miui.gamebooster.action.GAMEBOX"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "enter_homepage_way"

    const-string v1, "home_shortcut"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    invoke-static {p0}, La8/k2;->I(Landroid/app/Activity;)V

    invoke-static {p0}, La8/k2;->J(Landroid/app/Activity;)V

    const p1, 0x7f0e01b4

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->o0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->x0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->v0()V

    invoke-static {p0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->i:Lr0/a;

    const-string p1, "security"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->j:Lmiui/security/SecurityManager;

    new-instance p1, Lw8/d;

    invoke-direct {p1, p0}, Lw8/d;-><init>(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)V

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->k:Lw8/d;

    new-instance p1, Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback;

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback;-><init>(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)V

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->l:Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback;

    invoke-static {p0}, La8/i0;->c(Landroid/content/Context;)La8/i0;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->A:Lo4/a$a;

    invoke-virtual {p1, v0}, La8/i0;->a(Lo4/a$a;)V

    iget-boolean p1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->c:Z

    if-nez p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.miui.securitycenter"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.miui.networkassistant.vpn.MIUI_VPN_MANAGE_SERVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->z:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-static {p0, p1, v0, v1, v2}, Lx4/v;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    invoke-static {}, Lef/x;->z()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->s0()V

    :cond_1
    const-string p1, "key_gamebooster_red_point_press"

    const-string v0, ""

    invoke-static {p1, v0}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/miui/networkassistant/utils/DateUtil;->getDateFormat(I)Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->q()V

    :cond_2
    invoke-direct {p0, p0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->A0(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->t:Lx7/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_2
    invoke-static {p0}, La8/i0;->c(Landroid/content/Context;)La8/i0;

    move-result-object v0

    invoke-virtual {v0}, La8/i0;->d()V

    invoke-static {}, La8/h2;->a()La8/h2;

    move-result-object v0

    invoke-virtual {v0}, La8/h2;->b()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->h:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->z:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->h:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->l:Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback;

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->unregisterCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->C:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->v:Lsf/e$c;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->v:Lsf/e$c;

    invoke-virtual {v0, v1}, Lsf/e;->p(Lsf/e$c;)V

    :cond_4
    invoke-super {p0}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->x0()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->x:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lw8/b;

    if-eqz v1, :cond_0

    check-cast v0, Lw8/b;

    invoke-interface {v0}, Lw8/b;->Q()V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->x:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/miui/gamebooster/ui/BoosterFragment;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->H1()Lcom/miui/gamebooster/model/u;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/miui/gamebooster/model/u;->q()V

    return-void
.end method

.method protected q0()V
    .locals 9

    invoke-static {p0}, Lc3/w;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->j:Lmiui/security/SecurityManager;

    const-string v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Lc3/f;->d(Lmiui/security/SecurityManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->j:Lmiui/security/SecurityManager;

    invoke-static {v0, v1}, Lc3/f;->D0(Lmiui/security/SecurityManager;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v0}, Lc3/w;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-static {}, La8/o0;->m()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ll7/b;->b()Ll7/b;

    move-result-object v1

    const v0, 0x7f120bbf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f120bbc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f120bbd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$i;

    invoke-direct {v8, p0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$i;-><init>(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)V

    const-string v6, "https://xunyou.mobi/article-4557.html"

    const-string v7, "xunyou_booster_speed"

    move-object v2, p0

    invoke-virtual/range {v1 .. v8}, Ll7/b;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ll7/b$j;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->w0()V

    :goto_0
    return-void
.end method

.method public r0()Lcom/miui/gamebooster/service/IGameBooster;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->r:Lcom/miui/gamebooster/service/IGameBooster;

    return-object v0
.end method

.method public t0()V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120a7e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
