.class public Lcom/miui/wakepath/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/wakepath/ui/e$b;
    }
.end annotation


# static fields
.field private static i:Lcom/miui/wakepath/ui/e;


# instance fields
.field private final a:I

.field private final b:I

.field private volatile c:Z

.field private d:Landroid/view/View;

.field private final e:Landroid/content/Context;

.field private final f:Landroid/view/WindowManager;

.field private g:Ljava/lang/String;

.field private final h:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1a

    iput v0, p0, Lcom/miui/wakepath/ui/e;->a:I

    const/16 v0, 0x26

    iput v0, p0, Lcom/miui/wakepath/ui/e;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/wakepath/ui/e;->c:Z

    new-instance v0, Lcom/miui/wakepath/ui/e$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/wakepath/ui/e$a;-><init>(Lcom/miui/wakepath/ui/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/wakepath/ui/e;->h:Landroid/os/Handler;

    iput-object p1, p0, Lcom/miui/wakepath/ui/e;->e:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/miui/wakepath/ui/e;->f:Landroid/view/WindowManager;

    return-void
.end method

.method public static synthetic a(Lcom/miui/wakepath/ui/e;Lcom/miui/wakepath/ui/e$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/wakepath/ui/e;->l(Lcom/miui/wakepath/ui/e$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/wakepath/ui/e;Lcom/miui/wakepath/ui/e$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/wakepath/ui/e;->k(Lcom/miui/wakepath/ui/e$b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/miui/wakepath/ui/e;Lcom/miui/wakepath/ui/e$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/wakepath/ui/e;->j(Lcom/miui/wakepath/ui/e$b;Landroid/view/View;)V

    return-void
.end method

.method static synthetic d(Lcom/miui/wakepath/ui/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/wakepath/ui/e;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/wakepath/ui/e;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/wakepath/ui/e;->f:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/wakepath/ui/e;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/wakepath/ui/e;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/wakepath/ui/e;->d:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/wakepath/ui/e;->d:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/wakepath/ui/e;->c:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/wakepath/ui/e;->g:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized f(Landroid/content/Context;)Lcom/miui/wakepath/ui/e;
    .locals 2

    const-class v0, Lcom/miui/wakepath/ui/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/wakepath/ui/e;->i:Lcom/miui/wakepath/ui/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/wakepath/ui/e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/miui/wakepath/ui/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/wakepath/ui/e;->i:Lcom/miui/wakepath/ui/e;

    :cond_0
    sget-object p0, Lcom/miui/wakepath/ui/e;->i:Lcom/miui/wakepath/ui/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private g(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "GB2312"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, ""

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method

.method private h(Lcom/miui/wakepath/ui/e$b;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/miui/wakepath/ui/e;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0261

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p2}, Lcom/miui/wakepath/ui/e;->g(Ljava/lang/String;)I

    move-result p2

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->isLargeScaleMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p3}, Lcom/miui/wakepath/ui/e;->g(Ljava/lang/String;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1a

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Lcom/miui/wakepath/ui/e;->g(Ljava/lang/String;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x26

    :goto_0
    invoke-direct {p0}, Lcom/miui/wakepath/ui/e;->m()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-static {}, Lx4/t;->E()Z

    move-result v2

    if-nez v2, :cond_1

    if-ge p2, v1, :cond_2

    :cond_1
    const p2, 0x1020019

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Lcom/miui/wakepath/ui/c;

    invoke-direct {p3, p0, p1}, Lcom/miui/wakepath/ui/c;-><init>(Lcom/miui/wakepath/ui/e;Lcom/miui/wakepath/ui/e$b;)V

    goto :goto_1

    :cond_2
    const p2, 0x7f0b0803

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance p3, Lcom/miui/wakepath/ui/d;

    invoke-direct {p3, p0, p1}, Lcom/miui/wakepath/ui/d;-><init>(Lcom/miui/wakepath/ui/e;Lcom/miui/wakepath/ui/e$b;)V

    :goto_1
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private i(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/miui/wakepath/ui/e;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0261

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private synthetic j(Lcom/miui/wakepath/ui/e$b;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/wakepath/ui/e$b;->a()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/wakepath/ui/e;->e()V

    return-void
.end method

.method private synthetic k(Lcom/miui/wakepath/ui/e$b;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/wakepath/ui/e$b;->a()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/wakepath/ui/e;->e()V

    return-void
.end method

.method private synthetic l(Lcom/miui/wakepath/ui/e$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/wakepath/ui/e;->o(Lcom/miui/wakepath/ui/e$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private m()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private o(Lcom/miui/wakepath/ui/e$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/wakepath/ui/e;->g:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x1388

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/wakepath/ui/e;->h:Landroid/os/Handler;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/miui/wakepath/ui/e;->h:Landroid/os/Handler;

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/miui/wakepath/ui/e;->c:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/wakepath/ui/e;->e()V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/wakepath/ui/e;->c:Z

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/wakepath/ui/e;->h(Lcom/miui/wakepath/ui/e$b;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/miui/wakepath/ui/e;->i(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    :goto_0
    new-instance p3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v0, 0x7f6

    iput v0, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, -0x2

    iput v0, p3, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, -0x3

    iput v0, p3, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v0, 0x30

    iput v0, p3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/miui/wakepath/ui/e;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f071cb0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p3, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v0, 0x88

    iput v0, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput-object p1, p0, Lcom/miui/wakepath/ui/e;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/wakepath/ui/e;->f:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/wakepath/ui/e;->h:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/miui/wakepath/ui/e;->h:Landroid/os/Handler;

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-object p2, p0, Lcom/miui/wakepath/ui/e;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public n(Ljava/lang/String;Ljava/lang/String;Lcom/miui/wakepath/ui/e$b;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/wakepath/ui/e;->h:Landroid/os/Handler;

    new-instance v1, Lcom/miui/wakepath/ui/b;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/miui/wakepath/ui/b;-><init>(Lcom/miui/wakepath/ui/e;Lcom/miui/wakepath/ui/e$b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
