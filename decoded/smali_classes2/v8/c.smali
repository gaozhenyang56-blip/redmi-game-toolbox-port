.class public Lv8/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lv8/c;


# instance fields
.field private a:Landroid/os/CountDownTimer;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lv8/c;)Landroid/os/CountDownTimer;
    .locals 0

    iget-object p0, p0, Lv8/c;->a:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic b(Lv8/c;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lv8/c;->a:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic c(Lv8/c;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lv8/c;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private f()Ljava/lang/String;
    .locals 2

    const-string v0, "key_currentbooster_pkg_uid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.tencent.tmgp.sgame"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "kpl"

    return-object v0

    :cond_0
    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "pubg"

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static declared-synchronized g()Lv8/c;
    .locals 2

    const-class v0, Lv8/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lv8/c;->b:Lv8/c;

    if-nez v1, :cond_0

    new-instance v1, Lv8/c;

    invoke-direct {v1}, Lv8/c;-><init>()V

    sput-object v1, Lv8/c;->b:Lv8/c;

    :cond_0
    sget-object v1, Lv8/c;->b:Lv8/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static h(Ljava/lang/String;Z)Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {}, La8/g0;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, La8/y0;->g(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, La8/z;->c(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, La8/z;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    invoke-static {}, Ll8/b;->z()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, La8/i2;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7f0e01f0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_2

    invoke-static {v0}, Lv8/a;->a(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lv8/b;->a(Landroid/widget/ImageView;Z)V

    :cond_2
    const v1, 0x7f080700

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    new-instance v2, Lv8/c$a;

    invoke-direct {v2, p0, v0}, Lv8/c$a;-><init>(Lv8/c;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ll8/b;->D(Landroid/content/Context;)Ll8/b$b;

    move-result-object v2

    invoke-virtual {v2, p2}, Ll8/b$b;->c(Ljava/lang/String;)Ll8/b$b;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070fb9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p2, v0, v2, v3}, Ll8/b$b;->e(Landroid/view/View;II)Ll8/b$b;

    move-result-object p2

    invoke-static {p1}, La8/k2;->r(Landroid/content/Context;)I

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {p1, v3}, Lx4/a0;->a(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {p1}, La8/k2;->n(Landroid/content/Context;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const/high16 v4, 0x42440000    # 49.0f

    invoke-static {p1, v4}, Lx4/a0;->a(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Ll8/b$b;->d(II)Ll8/b$b;

    move-result-object p2

    invoke-virtual {p2}, Ll8/b$b;->a()V

    new-instance p2, Lv8/c$b;

    invoke-direct {p2, p0, p1, v1, v0}, Lv8/c$b;-><init>(Lv8/c;Landroid/content/Context;Landroid/graphics/drawable/AnimatedVectorDrawable;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public e()V
    .locals 0

    invoke-static {}, Ll8/b;->p()V

    return-void
.end method

.method public i(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.miui.securitycenter.gamebooster.WONDERFULL_FLOAT_MANUAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.miui.securitycenter.gamebooster.WONDERFULL_FLOAT_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p1}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lr0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public j(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lr0/a;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method public k(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lr0/a;->e(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
