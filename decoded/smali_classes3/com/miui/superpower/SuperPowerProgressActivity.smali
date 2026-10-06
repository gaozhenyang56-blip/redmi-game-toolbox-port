.class public Lcom/miui/superpower/SuperPowerProgressActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/superpower/SuperPowerProgressActivity$c;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/os/PowerManager$WakeLock;

.field private l:Z

.field private m:Lcom/miui/superpower/SuperPowerProgressActivity$c;

.field private n:Z

.field private final o:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->l:Z

    iput-boolean v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->n:Z

    new-instance v0, Lcom/miui/superpower/SuperPowerProgressActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/superpower/SuperPowerProgressActivity$a;-><init>(Lcom/miui/superpower/SuperPowerProgressActivity;)V

    iput-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->o:Landroid/os/Handler;

    return-void
.end method

.method static synthetic c0(Lcom/miui/superpower/SuperPowerProgressActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->l:Z

    return p0
.end method

.method static synthetic d0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->a:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->o:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method private initView()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->l:Z

    if-nez v0, :cond_0

    invoke-static {}, Lme/q;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0705

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0708b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0708bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/superpower/SuperPowerProgressActivity;->u0()V

    invoke-direct {p0}, Lcom/miui/superpower/SuperPowerProgressActivity;->q0()V

    return-void
.end method

.method static synthetic j0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->j:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic m0(Lcom/miui/superpower/SuperPowerProgressActivity;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/superpower/SuperPowerProgressActivity;->w0(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic n0(Lcom/miui/superpower/SuperPowerProgressActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method public static o0(Landroid/content/Context;Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/superpower/SuperPowerProgressActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "shouldShowLowTempUi"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x800000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private p0()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1218f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08100a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private q0()V
    .locals 3

    const v0, 0x7f0b05ee

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->j:Landroid/widget/ImageView;

    const v0, 0x7f010091

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const v1, 0x7f010092

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v2, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-boolean v1, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->l:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/superpower/SuperPowerProgressActivity;->r0(Landroid/view/animation/Animation;)V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->l:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/superpower/SuperPowerProgressActivity;->p0()V

    :cond_1
    return-void
.end method

.method private r0(Landroid/view/animation/Animation;)V
    .locals 1

    const v0, 0x7f0b063f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->a:Landroid/widget/ImageView;

    const v0, 0x7f0b0640

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->b:Landroid/widget/ImageView;

    const v0, 0x7f0b063e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->c:Landroid/widget/ImageView;

    const v0, 0x7f0b063b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->d:Landroid/widget/ImageView;

    const v0, 0x7f0b0d24

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0b0d25

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f0b0d23

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f0b0d22

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f0b0cbb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->i:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private s0()V
    .locals 3

    const v0, 0x7f0b0d93

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0b0d95

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-static {}, Lme/w;->c0()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0cbc

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12121c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f0b0c8c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0}, Lpg/g;->a(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {p0}, Lme/w;->g(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lpg/f;->c(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private t0()V
    .locals 1

    const v0, 0x7f0b0d94

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    return-void
.end method

.method private u0()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->l:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/superpower/SuperPowerProgressActivity;->s0()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/superpower/SuperPowerProgressActivity;->t0()V

    :goto_0
    return-void
.end method

.method private v0()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    invoke-static {p0, v0}, Lpg/i;->L(Landroid/content/Context;I)V

    return-void
.end method

.method private w0(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-static {p1, v0}, Lpg/i;->L(Landroid/content/Context;I)V

    return-void
.end method

.method private x0()V
    .locals 3

    new-instance v0, Lcom/miui/superpower/SuperPowerProgressActivity$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/superpower/SuperPowerProgressActivity$c;-><init>(Lcom/miui/superpower/SuperPowerProgressActivity;Lcom/miui/superpower/SuperPowerProgressActivity$a;)V

    iput-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->m:Lcom/miui/superpower/SuperPowerProgressActivity$c;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->m:Lcom/miui/superpower/SuperPowerProgressActivity$c;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    const v0, 0x7f01008f

    const v1, 0x7f010090

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isEnter"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->l:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shouldShowLowTempUi"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->n:Z

    const v0, 0x7f0e0050

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1302

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/superpower/SuperPowerProgressActivity$b;

    invoke-direct {v1, p0, v0}, Lcom/miui/superpower/SuperPowerProgressActivity$b;-><init>(Lcom/miui/superpower/SuperPowerProgressActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    invoke-direct {p0}, Lcom/miui/superpower/SuperPowerProgressActivity;->initView()V

    iget-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->o:Landroid/os/Handler;

    const/4 v1, -0x1

    const-wide/16 v3, 0x4e2

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "SuperPowerProgress"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-static {}, Lme/q;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/superpower/SuperPowerProgressActivity;->v0()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/superpower/SuperPowerProgressActivity;->x0()V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    invoke-static {p0}, Lx4/s0;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->o:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->m:Lcom/miui/superpower/SuperPowerProgressActivity$c;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    iget-boolean v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->l:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lme/w;->R(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/superpower/SuperPowerProgressActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->k:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/superpower/SuperPowerProgressActivity;->k:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method
