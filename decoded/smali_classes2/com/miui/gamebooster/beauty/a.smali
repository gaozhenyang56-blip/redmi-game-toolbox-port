.class public Lcom/miui/gamebooster/beauty/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/beauty/BeautyView$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/beauty/a$d;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private b:Landroid/view/WindowManager;

.field private c:Landroid/view/WindowManager$LayoutParams;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/content/Context;

.field private f:Lcom/miui/gamebooster/beauty/BeautyView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/os/Handler;

.field private j:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/a;->d:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/a;->i:Landroid/os/Handler;

    new-instance v0, Lcom/miui/gamebooster/beauty/a$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/beauty/a$a;-><init>(Lcom/miui/gamebooster/beauty/a;)V

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/a;->j:Ljava/lang/Runnable;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/a;->e:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/miui/gamebooster/beauty/a;->b:Landroid/view/WindowManager;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/a;->a:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/miui/gamebooster/beauty/a;->l()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gamebooster/beauty/a$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/a;-><init>()V

    return-void
.end method

.method static synthetic c(Lcom/miui/gamebooster/beauty/a;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/beauty/a;->g:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/gamebooster/beauty/a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/beauty/a;->n(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e(Lcom/miui/gamebooster/beauty/a;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/beauty/a;->h:Landroid/view/View;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/gamebooster/beauty/a;)Lcom/miui/gamebooster/beauty/BeautyView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/beauty/a;->f:Lcom/miui/gamebooster/beauty/BeautyView;

    return-object p0
.end method

.method static synthetic g(Lcom/miui/gamebooster/beauty/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/beauty/a;->e:Landroid/content/Context;

    return-object p0
.end method

.method private h(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, La8/k2;->x(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/a;->b:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/a;->b:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/miui/gamebooster/beauty/a;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private i()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const-string v1, "BeautyAssistantView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Ls8/y;->a(Landroid/view/WindowManager$LayoutParams;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/16 v2, 0x7f6

    goto :goto_0

    :cond_0
    const/16 v2, 0x7d2

    :goto_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v2, 0x800033

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v2, 0xd0328

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_1
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/a;->a:Landroid/content/res/Resources;

    const v2, 0x7f071e31

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/a;->a:Landroid/content/res/Resources;

    const v2, 0x7f071df7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-object v0
.end method

.method private j()I
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/a;->e:Landroid/content/Context;

    invoke-static {v0}, La8/k2;->y(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f071e78

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/a;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/beauty/a;->e:Landroid/content/Context;

    invoke-static {v0}, La8/k2;->i(Landroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/a;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static k()Lcom/miui/gamebooster/beauty/a;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/beauty/a$d;->a:Lcom/miui/gamebooster/beauty/a;

    return-object v0
.end method

.method private m(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "uimode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private n(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/beauty/a;->b:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeAllAddedView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BeautyWindowManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lw5/b;->d()Lw5/b;

    move-result-object v0

    invoke-virtual {v0}, Lw5/b;->i()V

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-virtual {v0}, Lx5/p;->d1()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lw5/b;->d()Lw5/b;

    move-result-object v0

    invoke-virtual {v0}, Lw5/b;->c()V

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-virtual {v0}, Lx5/p;->M1()V

    :goto_0
    return-void
.end method

.method public b(Lw5/a;)V
    .locals 1

    invoke-static {p1}, Lw5/f;->Z(Lw5/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lw5/f;->S(Lw5/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/a;->e:Landroid/content/Context;

    const v0, 0x7f1203c0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/beauty/a;->e:Landroid/content/Context;

    const v0, 0x7f1203bf

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/beauty/a;->p(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public l()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/a;->i()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/a;->c:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public o(Lb6/c;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/a;->e:Landroid/content/Context;

    const v1, 0x7f0e0204

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/a;->h:Landroid/view/View;

    const v1, 0x7f0b0659

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lw5/f;->a0()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "privacy_camera"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/a;->e:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/miui/gamebooster/beauty/a;->m(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "privacy_camera/privacycamera_dark.json"

    goto :goto_0

    :cond_0
    const-string v1, "privacy_camera/privacycamera_light.json"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/beauty/a;->h:Landroid/view/View;

    const v1, 0x7f0b0666

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/a;->j()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/a;->h:Landroid/view/View;

    const v1, 0x7f0b01a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/a;->h:Landroid/view/View;

    const v2, 0x7f0b01a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/miui/gamebooster/beauty/a$b;

    invoke-direct {v2, p0, p1}, Lcom/miui/gamebooster/beauty/a$b;-><init>(Lcom/miui/gamebooster/beauty/a;Lb6/c;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/gamebooster/beauty/a$c;

    invoke-direct {v0, p0, p1}, Lcom/miui/gamebooster/beauty/a$c;-><init>(Lcom/miui/gamebooster/beauty/a;Lb6/c;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/a;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/a;->h:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/miui/gamebooster/beauty/a;->h(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/beauty/a;->g:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/a;->e:Landroid/content/Context;

    const v1, 0x7f0e0205

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/a;->g:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/beauty/a;->g:Landroid/view/View;

    const v1, 0x7f0b0cf1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/a;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x31

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, 0x0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/a;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071d82

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/a;->g:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/miui/gamebooster/beauty/a;->h(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/a;->i:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/a;->j:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
