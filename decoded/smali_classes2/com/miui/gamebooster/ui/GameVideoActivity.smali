.class public Lcom/miui/gamebooster/ui/GameVideoActivity;
.super Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private c:Landroid/widget/LinearLayout;

.field private d:Lrh/c;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/y;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;-><init>()V

    new-instance v0, Lrh/c$b;

    invoke-direct {v0}, Lrh/c$b;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object v0

    const v2, 0x7f08076f

    invoke-virtual {v0, v2}, Lrh/c$b;->I(I)Lrh/c$b;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2}, Lrh/c$b;->v(Landroid/graphics/Bitmap$Config;)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lrh/c$b;->w()Lrh/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoActivity;->d:Lrh/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoActivity;->g:Ljava/util/List;

    new-instance v0, Lcom/miui/gamebooster/ui/GameVideoActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/GameVideoActivity$a;-><init>(Lcom/miui/gamebooster/ui/GameVideoActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoActivity;->h:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic f0(Lcom/miui/gamebooster/ui/GameVideoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameVideoActivity;->s0()V

    return-void
.end method

.method static synthetic g0(Lcom/miui/gamebooster/ui/GameVideoActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameVideoActivity;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/gamebooster/ui/GameVideoActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameVideoActivity;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/gamebooster/ui/GameVideoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameVideoActivity;->w0()V

    return-void
.end method

.method private initView()V
    .locals 5

    const v0, 0x7f0b01a8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0490

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0478

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120a5f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b027f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "match_md5"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoActivity;->f:Ljava/lang/String;

    invoke-static {p0, v0}, La8/q;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoActivity;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic j0(Lcom/miui/gamebooster/ui/GameVideoActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameVideoActivity;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/gamebooster/ui/GameVideoActivity;Lcom/miui/gamebooster/model/y;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/GameVideoActivity;->q0(Lcom/miui/gamebooster/model/y;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/gamebooster/ui/GameVideoActivity;Landroid/widget/ImageView;Lcom/miui/gamebooster/model/y;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/ui/GameVideoActivity;->v0(Landroid/widget/ImageView;Lcom/miui/gamebooster/model/y;)V

    return-void
.end method

.method static synthetic m0(Lcom/miui/gamebooster/ui/GameVideoActivity;Landroid/widget/ImageView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/ui/GameVideoActivity;->u0(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method private n0()V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070fd8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/miui/gamebooster/ui/GameVideoActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private o0(Landroid/view/View;Lcom/miui/gamebooster/model/y;)V
    .locals 4

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0c6a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b01c1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {p2}, La8/i2;->d(Lcom/miui/gamebooster/model/y;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/miui/gamebooster/ui/GameVideoActivity;->u0(Landroid/widget/ImageView;Z)V

    const v2, 0x7f0b0642

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/y;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lwh/c$a;->n:Lwh/c$a;

    invoke-direct {p0, p2}, Lcom/miui/gamebooster/ui/GameVideoActivity;->q0(Lcom/miui/gamebooster/model/y;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lwh/c$a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/gamebooster/ui/GameVideoActivity;->d:Lrh/c;

    invoke-static {v0, v2, v3}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    new-instance v0, Lcom/miui/gamebooster/ui/GameVideoActivity$c;

    invoke-direct {v0, p0, p2}, Lcom/miui/gamebooster/ui/GameVideoActivity$c;-><init>(Lcom/miui/gamebooster/ui/GameVideoActivity;Lcom/miui/gamebooster/model/y;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b01bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/miui/gamebooster/ui/GameVideoActivity$d;

    invoke-direct {v0, p0, p2}, Lcom/miui/gamebooster/ui/GameVideoActivity$d;-><init>(Lcom/miui/gamebooster/ui/GameVideoActivity;Lcom/miui/gamebooster/model/y;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/miui/gamebooster/ui/GameVideoActivity$e;

    invoke-direct {p1, p0, v1, p2}, Lcom/miui/gamebooster/ui/GameVideoActivity$e;-><init>(Lcom/miui/gamebooster/ui/GameVideoActivity;Landroid/widget/ImageView;Lcom/miui/gamebooster/model/y;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private p0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoActivity;->e:Ljava/lang/String;

    const-string v1, "pubg"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.tencent.tmgp.pubgmhd"

    return-object v0

    :cond_0
    const-string v0, "com.tencent.tmgp.sgame"

    return-object v0
.end method

.method private q0(Lcom/miui/gamebooster/model/y;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/y;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/y;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La8/y;->b(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/y;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/model/y;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/y;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La8/y;->b(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/y;->h()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private r0()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "key_download_click"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/ui/GameVideoActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lr0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initLocalBroadcastReceiver: failed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameVideoActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private s0()V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/ui/GameVideoActivity$b;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/GameVideoActivity$b;-><init>(Lcom/miui/gamebooster/ui/GameVideoActivity;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private t0()V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lr0/a;->e(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseLocalBroadcastReceiver: failed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameVideoActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private u0(Landroid/widget/ImageView;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_2

    const p2, 0x7f080847

    goto :goto_0

    :cond_2
    const p2, 0x7f080848

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private v0(Landroid/widget/ImageView;Lcom/miui/gamebooster/model/y;)V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/ui/GameVideoActivity$f;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/gamebooster/ui/GameVideoActivity$f;-><init>(Lcom/miui/gamebooster/ui/GameVideoActivity;Lcom/miui/gamebooster/model/y;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private w0()V
    .locals 6

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoActivity;->c:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoActivity;->g:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoActivity;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/miui/gamebooster/ui/GameVideoActivity;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gamebooster/model/y;

    if-eqz v2, :cond_1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0e021e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/miui/gamebooster/ui/GameVideoActivity;->o0(Landroid/view/View;Lcom/miui/gamebooster/model/y;)V

    iget-object v2, p0, Lcom/miui/gamebooster/ui/GameVideoActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameVideoActivity;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameVideoActivity;->n0()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b01a8

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b0490

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/gamebooster/ui/WonderfulMomentActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameVideoActivity;->p0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gamePkg"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f1301d6

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setTheme(I)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    invoke-static {}, La8/g0;->Z()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e01ba

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-static {p0}, La8/k2;->w(Landroid/app/Activity;)V

    invoke-static {p0}, La8/b2;->a(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameVideoActivity;->initView()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameVideoActivity;->r0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameVideoActivity;->s0()V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameVideoActivity;->t0()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-static {}, Lcom/miui/gamebooster/utils/a;->z0()V

    return-void
.end method
