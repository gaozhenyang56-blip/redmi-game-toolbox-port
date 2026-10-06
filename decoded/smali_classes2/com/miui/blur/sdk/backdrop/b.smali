.class Lcom/miui/blur/sdk/backdrop/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private final e:Landroid/view/View;

.field private final f:Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

.field private final g:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/b;->a:Z

    new-instance v0, Lcom/miui/blur/sdk/backdrop/b$a;

    invoke-direct {v0, p0}, Lcom/miui/blur/sdk/backdrop/b$a;-><init>(Lcom/miui/blur/sdk/backdrop/b;)V

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/b;->g:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/b;->e:Landroid/view/View;

    iput-object p2, p0, Lcom/miui/blur/sdk/backdrop/b;->f:Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

    return-void
.end method

.method static synthetic a(Lcom/miui/blur/sdk/backdrop/b;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/b;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/blur/sdk/backdrop/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/b;->c()V

    return-void
.end method

.method private c()V
    .locals 6

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/b;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    const-string v5, "getSurfaceControl"

    invoke-static {v3, v5, v4}, Lcom/miui/blur/sdk/backdrop/t;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/miui/blur/sdk/backdrop/t;->b(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/view/SurfaceControl;

    if-eqz v4, :cond_0

    check-cast v3, Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/b;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/b;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/miui/blur/sdk/backdrop/b;->c:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/miui/blur/sdk/backdrop/b;->d:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/miui/blur/sdk/backdrop/b;->a:Z

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/b;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/blur/sdk/backdrop/b;->g:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_4
    iget-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/b;->b:Z

    if-eq v0, v1, :cond_6

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/b;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/blur/sdk/backdrop/b;->f:Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

    invoke-static {v0, v2}, Lcom/miui/blur/sdk/backdrop/BlurManager;->e(Landroid/content/Context;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/b;->f:Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/BlurManager;->f(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    :cond_6
    :goto_4
    iput-boolean v1, p0, Lcom/miui/blur/sdk/backdrop/b;->b:Z

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    sget-boolean v0, Lcom/miui/blur/sdk/backdrop/BlurManager;->a:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/b;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/b;->d:Z

    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/b;->c()V

    return-void
.end method

.method g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/b;->d:Z

    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/b;->c()V

    return-void
.end method

.method h(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/b;->f:Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

    invoke-static {p1, v0}, Lcom/miui/blur/sdk/backdrop/BlurManager;->b(Landroid/graphics/Canvas;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    :cond_0
    return-void
.end method

.method i(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/blur/sdk/backdrop/b;->c:Z

    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/b;->c()V

    return-void
.end method

.method j(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/blur/sdk/backdrop/b;->a:Z

    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/b;->c()V

    return-void
.end method
