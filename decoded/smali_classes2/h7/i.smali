.class public Lh7/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:J = 0x1388L


# instance fields
.field private a:Landroid/view/WindowManager;

.field private b:Landroid/view/WindowManager$LayoutParams;

.field private c:Landroid/view/View;

.field private d:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-static {v0}, Ls8/y;->a(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v1, 0x7d3

    const/16 v1, 0x7f6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v1, 0x50328

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    const v1, 0x7f1307fd

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x101

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_1
    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, Lh7/i;->c:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lh7/i;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lh7/i;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lh7/i;->c:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lh7/i;->c:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public c(J)V
    .locals 0

    sput-wide p1, Lh7/i;->e:J

    return-void
.end method

.method public d(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 3

    iget-object v0, p0, Lh7/i;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lh7/i;->a:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lh7/i;->a:Landroid/view/WindowManager;

    :cond_1
    iget-object v0, p0, Lh7/i;->b:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lh7/i;->a()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lh7/i;->b:Landroid/view/WindowManager$LayoutParams;

    :cond_2
    iget-object v0, p0, Lh7/i;->d:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    new-instance v0, Lh7/h;

    invoke-direct {v0, p0}, Lh7/h;-><init>(Lh7/i;)V

    iput-object v0, p0, Lh7/i;->d:Ljava/lang/Runnable;

    :cond_3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e029f

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lh7/i;->c:Landroid/view/View;

    const v0, 0x7f0b01c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lh7/i;->c:Landroid/view/View;

    const p2, 0x7f0b01d1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    iget-object p1, p0, Lh7/i;->a:Landroid/view/WindowManager;

    iget-object p2, p0, Lh7/i;->c:Landroid/view/View;

    iget-object p3, p0, Lh7/i;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lh7/i;->c:Landroid/view/View;

    iget-object p2, p0, Lh7/i;->d:Ljava/lang/Runnable;

    sget-wide v0, Lh7/i;->e:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
