.class public Lw5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw5/b$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/miui/securitycenter/Application;

.field private final b:Landroid/content/res/Resources;

.field private c:Landroid/view/WindowManager;

.field private d:Landroid/view/WindowManager$LayoutParams;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lw5/c;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw5/b;->e:Ljava/util/List;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iput-object v0, p0, Lw5/b;->a:Lcom/miui/securitycenter/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lw5/b;->b:Landroid/content/res/Resources;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lw5/b;->c:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lw5/b;->f()V

    return-void
.end method

.method synthetic constructor <init>(Lw5/b$a;)V
    .locals 0

    invoke-direct {p0}, Lw5/b;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, La8/k2;->x(Landroid/view/View;)V

    iget-object v0, p0, Lw5/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lw5/b;->c:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lw5/b;->c:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lw5/b;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private b()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const-string v1, "BeautyLightView"

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
    const v1, 0x7f1307e9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lw5/b;->b:Landroid/content/res/Resources;

    const v2, 0x7f071e31

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lw5/b;->b:Landroid/content/res/Resources;

    const v2, 0x7f071df7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-object v0
.end method

.method public static d()Lw5/b;
    .locals 1

    sget-object v0, Lw5/b$b;->a:Lw5/b;

    return-object v0
.end method

.method private e()I
    .locals 3

    :try_start_0
    const-string v0, "android.view.WindowManager$LayoutParams"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "PRIVATE_FLAG_TRUSTED_OVERLAY"

    invoke-static {v0, v1}, Lbh/f;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BeautyLightManager"

    const-string v2, "setTrustPrivateFlag error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/high16 v0, 0x20000000

    return v0
.end method

.method private g()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lw5/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lw5/b;->c:Landroid/view/WindowManager;

    invoke-interface {v2, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw5/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeAllAddedView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautyLightManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private h(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lw5/b;->e()I

    move-result v0

    const-string v1, "android.view.WindowManager$LayoutParams"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "privateFlags"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v1, v2, v0}, Lbh/f;->o(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "BeautyLightManager"

    const-string v1, "setTrustPrivateFlag error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    invoke-direct {p0}, Lw5/b;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lw5/b;->f:Lw5/c;

    return-void
.end method

.method public f()V
    .locals 1

    invoke-direct {p0}, Lw5/b;->b()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lw5/b;->d:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lw5/b;->f:Lw5/c;

    if-nez v0, :cond_0

    new-instance v0, Lw5/c;

    iget-object v1, p0, Lw5/b;->a:Lcom/miui/securitycenter/Application;

    invoke-direct {v0, v1}, Lw5/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lw5/b;->f:Lw5/c;

    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v1, p0, Lw5/b;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v1

    invoke-virtual {v1}, Lw5/f;->t()F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1

    invoke-direct {p0, v0}, Lw5/b;->h(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lw5/b;->f:Lw5/c;

    invoke-direct {p0, v1, v0}, Lw5/b;->a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
