.class public Lcom/miui/powercenter/PowerCenter;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/PowerCenter$b;,
        Lcom/miui/powercenter/PowerCenter$d;,
        Lcom/miui/powercenter/PowerCenter$c;
    }
.end annotation


# static fields
.field public static p:Z

.field public static q:Z

.field public static r:Z

.field private static s:Z


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/antivirus/result/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcom/miui/powercenter/mainui/MainActivityView;

.field private d:Lcom/miui/powercenter/PowerCenter$d;

.field private e:Lcom/miui/powercenter/PowerCenter$b;

.field private f:Lfe/j;

.field private g:Lcom/miui/common/customview/ActionBarContainer;

.field private h:Z

.field private i:Lmiuix/appcompat/app/ProgressDialog;

.field private j:Landroid/content/res/Configuration;

.field private k:I

.field private l:Landroid/content/BroadcastReceiver;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfe/g;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfe/g;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfe/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/PowerCenter;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/powercenter/PowerCenter$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/PowerCenter$c;-><init>(Lcom/miui/powercenter/PowerCenter;Lcom/miui/powercenter/PowerCenter$a;)V

    iput-object v0, p0, Lcom/miui/powercenter/PowerCenter;->l:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/PowerCenter;->m:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/PowerCenter;->n:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/PowerCenter;->o:Ljava/util/List;

    return-void
.end method

.method private A0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->c:Lcom/miui/powercenter/mainui/MainActivityView;

    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->f:Lfe/j;

    invoke-virtual {v1}, Lfe/j;->q()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->o0()I

    move-result v1

    :goto_0
    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->p0()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/mainui/MainActivityView;->h(II)V

    return-void
.end method

.method private B0()V
    .locals 2

    const-string v0, "setting"

    invoke-static {v0}, Lhd/a;->k1(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/PowerSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic d0(Lcom/miui/powercenter/PowerCenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->u0()V

    return-void
.end method

.method static synthetic e0(Lcom/miui/powercenter/PowerCenter;)Lcom/miui/powercenter/mainui/MainActivityView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/PowerCenter;->c:Lcom/miui/powercenter/mainui/MainActivityView;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/powercenter/PowerCenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->B0()V

    return-void
.end method

.method static synthetic g0(Lcom/miui/powercenter/PowerCenter;)Lcom/miui/powercenter/PowerCenter$b;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/PowerCenter;->e:Lcom/miui/powercenter/PowerCenter$b;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/powercenter/PowerCenter;)Lmiuix/appcompat/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/PowerCenter;->i:Lmiuix/appcompat/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/powercenter/PowerCenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->n0()V

    return-void
.end method

.method static synthetic j0(Lcom/miui/powercenter/PowerCenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->s0()V

    return-void
.end method

.method static synthetic k0(Lcom/miui/powercenter/PowerCenter;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/PowerCenter;->v0(F)V

    return-void
.end method

.method static synthetic l0(Lcom/miui/powercenter/PowerCenter;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/PowerCenter;->w0(F)V

    return-void
.end method

.method static synthetic m0(Lcom/miui/powercenter/PowerCenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->t0()V

    return-void
.end method

.method private n0()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/powercenter/PowerCenter;->z0()V

    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->A0()V

    return-void
.end method

.method private o0()I
    .locals 1

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v0

    invoke-virtual {v0}, Lfe/l;->o()I

    move-result v0

    return v0
.end method

.method private p0()I
    .locals 1

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v0

    invoke-virtual {v0}, Lfe/l;->r()I

    move-result v0

    return v0
.end method

.method private q0()V
    .locals 2

    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/powercenter/PowerCenter;->g:Lcom/miui/common/customview/ActionBarContainer;

    const v1, 0x7f12128b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/ActionBarContainer;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->g:Lcom/miui/common/customview/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/ActionBarContainer;->setIsShowSecondTitle(Z)V

    const v0, 0x7f0b0632

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private r0()V
    .locals 2

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->d:Lcom/miui/powercenter/PowerCenter$d;

    invoke-virtual {v0, p0, v1}, Lfe/l;->A(Landroid/content/Context;Lfe/l$c;)V

    return-void
.end method

.method private s0()V
    .locals 0

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private t0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->b:Landroid/content/Context;

    invoke-static {v0}, Lfe/n;->b(Landroid/content/Context;)V

    return-void
.end method

.method private u0()V
    .locals 7

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->n:Ljava/util/List;

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v1

    invoke-virtual {v1}, Lfe/l;->s()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->m:Ljava/util/List;

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v1

    invoke-virtual {v1}, Lfe/l;->p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->o:Ljava/util/List;

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v1

    invoke-virtual {v1}, Lfe/l;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    new-instance v1, Lfe/h;

    invoke-direct {v1}, Lfe/h;-><init>()V

    const v3, 0x7f121250

    invoke-virtual {v1, v3}, Lfe/h;->f(I)V

    new-instance v4, Lfe/g;

    invoke-direct {v4}, Lfe/g;-><init>()V

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lfe/g;->b:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lfe/g;->h(I)V

    invoke-virtual {v1, v4}, Lfe/h;->a(Lfe/g;)V

    iget-object v3, p0, Lcom/miui/powercenter/PowerCenter;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfe/g;

    invoke-virtual {v4, v2}, Lfe/g;->e(Z)V

    invoke-virtual {v4, v2}, Lfe/g;->g(Z)V

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lfe/g;->h(I)V

    invoke-virtual {v1, v4}, Lfe/h;->a(Lfe/g;)V

    invoke-virtual {v4}, Lfe/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhd/a;->l1(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_4

    new-instance v1, Lfe/h;

    invoke-direct {v1}, Lfe/h;-><init>()V

    const v4, 0x7f12124d

    invoke-virtual {v1, v4}, Lfe/h;->f(I)V

    new-instance v5, Lfe/g;

    invoke-direct {v5}, Lfe/g;-><init>()V

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lfe/g;->b:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lfe/g;->h(I)V

    invoke-virtual {v1, v5}, Lfe/h;->a(Lfe/g;)V

    iget-object v4, p0, Lcom/miui/powercenter/PowerCenter;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfe/g;

    invoke-virtual {v5, v2}, Lfe/g;->e(Z)V

    invoke-virtual {v5, v3}, Lfe/g;->g(Z)V

    sget-boolean v6, Lcom/miui/powercenter/PowerCenter;->s:Z

    if-nez v6, :cond_2

    iget v6, v5, Lfe/g;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6, v3}, Lfe/p;->b(Ljava/lang/Object;Z)V

    :cond_2
    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lfe/g;->h(I)V

    invoke-virtual {v1, v5}, Lfe/h;->a(Lfe/g;)V

    invoke-virtual {v5}, Lfe/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhd/a;->l1(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Lfe/h;

    invoke-direct {v1}, Lfe/h;-><init>()V

    new-instance v4, Lfe/g;

    invoke-direct {v4}, Lfe/g;-><init>()V

    const v5, 0x7f1212b9

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lfe/g;->b:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lfe/g;->h(I)V

    invoke-virtual {v1, v4}, Lfe/h;->a(Lfe/g;)V

    invoke-virtual {v1, v5}, Lfe/h;->f(I)V

    invoke-virtual {v1, v2}, Lfe/h;->e(Z)V

    iget-object v2, p0, Lcom/miui/powercenter/PowerCenter;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfe/g;

    invoke-virtual {v1, v4}, Lfe/h;->a(Lfe/g;)V

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lfe/g;->h(I)V

    goto :goto_2

    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    sput-boolean v3, Lcom/miui/powercenter/PowerCenter;->s:Z

    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->f:Lfe/j;

    invoke-virtual {v1, v0}, Lfe/j;->x(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->f:Lfe/j;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method private v0(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->c:Lcom/miui/powercenter/mainui/MainActivityView;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/mainui/MainActivityView;->setContentAlpha(F)V

    return-void
.end method

.method private w0(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->c:Lcom/miui/powercenter/mainui/MainActivityView;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/mainui/MainActivityView;->setFinalResultAlpha(F)V

    return-void
.end method

.method private x0(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->c:Lcom/miui/powercenter/mainui/MainActivityView;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/mainui/MainActivityView;->setSplitPadding(I)V

    return-void
.end method

.method private y0()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/powercenter/PowerCenter;->i:Lmiuix/appcompat/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->b:Landroid/content/Context;

    const v2, 0x7f12153d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->i:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->i:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->i:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->s0()V

    iget-boolean v0, p0, Lcom/miui/powercenter/PowerCenter;->h:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lme/w;->z0(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0e03c9

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enter_homepage_way"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "overried_transition"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v2, p0, Lcom/miui/powercenter/PowerCenter;->j:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    iput v2, p0, Lcom/miui/powercenter/PowerCenter;->k:I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/powercenter/PowerCenter;->b:Landroid/content/Context;

    new-instance v2, Lcom/miui/powercenter/PowerCenter$d;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/PowerCenter$d;-><init>(Lcom/miui/powercenter/PowerCenter;)V

    iput-object v2, p0, Lcom/miui/powercenter/PowerCenter;->d:Lcom/miui/powercenter/PowerCenter$d;

    new-instance v2, Lcom/miui/powercenter/PowerCenter$b;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/PowerCenter$b;-><init>(Lcom/miui/powercenter/PowerCenter;)V

    iput-object v2, p0, Lcom/miui/powercenter/PowerCenter;->e:Lcom/miui/powercenter/PowerCenter$b;

    const v2, 0x7f0b0741

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/mainui/MainActivityView;

    iput-object v2, p0, Lcom/miui/powercenter/PowerCenter;->c:Lcom/miui/powercenter/mainui/MainActivityView;

    iget-object v4, p0, Lcom/miui/powercenter/PowerCenter;->e:Lcom/miui/powercenter/PowerCenter$b;

    invoke-virtual {v2, v4}, Lcom/miui/powercenter/mainui/MainActivityView;->setEventHandler(Lw4/e;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "daily_battery_scan_problem_notification"

    const-string v5, "daily_battery_scan_suggest_notification"

    if-nez v2, :cond_2

    invoke-static {v0}, Lhd/a;->H0(Ljava/lang/String;)V

    const-string v2, "consume_abnormal_notification"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lhd/a;->I1()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lhd/a;->c0()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lhd/a;->a0()V

    :cond_2
    :goto_0
    invoke-static {p0}, Lme/w;->H(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0716bb

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/powercenter/PowerCenter;->x0(I)V

    :cond_3
    invoke-static {}, Lme/e0;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f0b0699

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0717bb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    iput v6, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-static {p0}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f0b09f1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v2, v3, v6, v3, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_5
    const v2, 0x7f0b09f0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v2, v3, v6, v3, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_6
    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->q0()V

    invoke-static {}, Lme/b;->E()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lme/d0;->g()V

    :cond_7
    iget-object v2, p0, Lcom/miui/powercenter/PowerCenter;->g:Lcom/miui/common/customview/ActionBarContainer;

    new-instance v3, Lcom/miui/powercenter/PowerCenter$a;

    invoke-direct {v3, p0}, Lcom/miui/powercenter/PowerCenter$a;-><init>(Lcom/miui/powercenter/PowerCenter;)V

    invoke-virtual {v2, v3}, Lcom/miui/common/customview/ActionBarContainer;->setActionBarEventListener(Lcom/miui/common/customview/ActionBarContainer$a;)V

    const/4 v2, 0x1

    if-eqz p1, :cond_8

    const-string v3, "powercenterstatus"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Lfe/j;

    invoke-direct {p1, p0}, Lfe/j;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/powercenter/PowerCenter;->f:Lfe/j;

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->e:Lcom/miui/powercenter/PowerCenter$b;

    invoke-virtual {p1, v0}, Lfe/j;->v(Lw4/e;)V

    iget-object p1, p0, Lcom/miui/powercenter/PowerCenter;->c:Lcom/miui/powercenter/mainui/MainActivityView;

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->f:Lfe/j;

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/mainui/MainActivityView;->setResultDataAdapter(Lfe/j;)V

    iget-object p1, p0, Lcom/miui/powercenter/PowerCenter;->c:Lcom/miui/powercenter/mainui/MainActivityView;

    invoke-virtual {p1, v2}, Lcom/miui/powercenter/mainui/MainActivityView;->f(Z)Z

    return-void

    :cond_8
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    new-instance p1, Lfe/j;

    invoke-direct {p1, p0}, Lfe/j;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/powercenter/PowerCenter;->f:Lfe/j;

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->e:Lcom/miui/powercenter/PowerCenter$b;

    invoke-virtual {p1, v0}, Lfe/j;->v(Lw4/e;)V

    iget-object p1, p0, Lcom/miui/powercenter/PowerCenter;->e:Lcom/miui/powercenter/PowerCenter$b;

    const/16 v0, 0x426

    const-wide/16 v3, 0x3e8

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    if-eqz v1, :cond_a

    iput-boolean v2, p0, Lcom/miui/powercenter/PowerCenter;->h:Z

    :cond_a
    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->u0()V

    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->n0()V

    invoke-virtual {p0, v2}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, v2}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    goto :goto_2

    :cond_b
    :goto_1
    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->y0()V

    new-instance p1, Lfe/j;

    invoke-direct {p1, p0}, Lfe/j;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/powercenter/PowerCenter;->f:Lfe/j;

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->e:Lcom/miui/powercenter/PowerCenter$b;

    invoke-virtual {p1, v0}, Lfe/j;->v(Lw4/e;)V

    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->r0()V

    invoke-static {p0}, Lfe/b;->h(Landroid/content/Context;)V

    :goto_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    invoke-static {p0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lr0/a;->e(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->c:Lcom/miui/powercenter/mainui/MainActivityView;

    invoke-virtual {v0}, Lcom/miui/powercenter/mainui/MainActivityView;->d()V

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->e:Lcom/miui/powercenter/PowerCenter$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/powercenter/PowerCenter;->q:Z

    sput-boolean v0, Lcom/miui/powercenter/PowerCenter;->p:Z

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    const-string v0, "enter_homepage_way"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/powercenter/PowerCenter;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "00004"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "abnormal_model"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v2}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    sget-boolean v0, Lcom/miui/powercenter/PowerCenter;->q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->c:Lcom/miui/powercenter/mainui/MainActivityView;

    invoke-virtual {v0}, Lcom/miui/powercenter/mainui/MainActivityView;->b()V

    sput-boolean v1, Lcom/miui/powercenter/PowerCenter;->q:Z

    :cond_0
    sget-boolean v0, Lcom/miui/powercenter/PowerCenter;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->c:Lcom/miui/powercenter/mainui/MainActivityView;

    invoke-virtual {v0}, Lcom/miui/powercenter/mainui/MainActivityView;->c()V

    sput-boolean v1, Lcom/miui/powercenter/PowerCenter;->r:Z

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    sget-boolean v0, Lcom/miui/powercenter/PowerCenter;->p:Z

    const-string v1, "powercenterstatus"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-static {}, Lme/e0;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    sput-boolean p1, Lcom/miui/powercenter/PowerCenter;->s:Z

    :cond_0
    return-void
.end method

.method public z0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->c:Lcom/miui/powercenter/mainui/MainActivityView;

    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->f:Lfe/j;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/mainui/MainActivityView;->setResultDataAdapter(Lfe/j;)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->c:Lcom/miui/powercenter/mainui/MainActivityView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/mainui/MainActivityView;->f(Z)Z

    return-void
.end method
