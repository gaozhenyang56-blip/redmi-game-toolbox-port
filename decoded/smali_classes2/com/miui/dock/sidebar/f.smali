.class public Lcom/miui/dock/sidebar/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnGenericMotionListener;


# instance fields
.field protected a:F

.field protected b:F

.field protected c:F

.field protected d:F

.field protected e:I

.field protected f:I

.field protected g:Landroid/view/VelocityTracker;

.field private h:J

.field private i:J

.field private j:Z

.field private k:I

.field protected l:Z

.field protected m:Lcom/miui/dock/sidebar/j;

.field protected n:Landroid/view/View;

.field protected o:Ls8/h;

.field private final p:Lo7/a;

.field private q:J

.field private volatile r:Z

.field private volatile s:Z

.field private volatile t:Z

.field private final u:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ls8/h;Lcom/miui/dock/sidebar/j;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, La8/g0;->O()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lj8/s;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/miui/dock/sidebar/f;->l:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/dock/sidebar/f;->q:J

    iput-boolean v2, p0, Lcom/miui/dock/sidebar/f;->s:Z

    iput-boolean v1, p0, Lcom/miui/dock/sidebar/f;->t:Z

    new-instance v0, Lcom/miui/dock/sidebar/e;

    invoke-direct {v0, p0}, Lcom/miui/dock/sidebar/e;-><init>(Lcom/miui/dock/sidebar/f;)V

    iput-object v0, p0, Lcom/miui/dock/sidebar/f;->u:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    iput-object p2, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/dock/sidebar/f;->n:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    invoke-virtual {p1}, Ls8/h;->U()Lcom/miui/gamebooster/service/DockWindowManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->o0()Lo7/a;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/dock/sidebar/f;->p:Lo7/a;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/miui/dock/sidebar/f;->e:I

    return-void
.end method

.method public static synthetic a(Lcom/miui/dock/sidebar/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/dock/sidebar/f;->m()V

    return-void
.end method

.method public static synthetic b(Lcom/miui/dock/sidebar/f;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/dock/sidebar/f;->l(Z)V

    return-void
.end method

.method private c(Landroid/content/Context;I)I
    .locals 0

    invoke-static {p1}, Lcom/miui/dock/sidebar/j;->r(Landroid/content/Context;)I

    move-result p1

    add-int/2addr p1, p2

    return p1
.end method

.method private d(Landroid/view/WindowManager$LayoutParams;F)I
    .locals 7

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->Z()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, La8/k2;->m(Landroid/view/WindowManager;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v1}, Lcom/miui/dock/sidebar/j;->v()Lcom/miui/dock/sidebar/c;

    move-result-object v1

    iget v1, v1, Lcom/miui/dock/sidebar/c;->g:I

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    cmpl-float v3, p2, v2

    const v4, 0x3f333333    # 0.7f

    const v5, 0x3e99999a    # 0.3f

    const/high16 v6, 0x42c80000    # 100.0f

    if-lez v3, :cond_0

    sub-float/2addr v0, p2

    sub-float/2addr v0, v1

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    mul-float/2addr v0, v6

    add-float/2addr v1, v0

    goto :goto_0

    :cond_0
    sub-float/2addr p2, v1

    sub-float/2addr v2, v1

    div-float/2addr p2, v2

    mul-float/2addr p2, v6

    add-float/2addr v1, p2

    :goto_0
    mul-float/2addr v1, v5

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float p1, p1

    mul-float/2addr p1, v4

    add-float/2addr v1, p1

    float-to-int p1, v1

    return p1
.end method

.method private e(F)I
    .locals 3

    float-to-int v0, p1

    iget-object v1, p0, Lcom/miui/dock/sidebar/f;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lx4/a0;->n(Landroid/content/Context;)I

    move-result v1

    int-to-float v2, v1

    cmpg-float p1, p1, v2

    if-gez p1, :cond_0

    move v0, v1

    :cond_0
    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->n:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/dock/sidebar/f;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lm5/g;->b(Landroid/content/Context;II)I

    move-result p1

    return p1
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Ls8/h;->c0(ZZ)V

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    iget-object v1, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0, v1}, Ls8/h;->K0(Lcom/miui/dock/sidebar/j;)V

    return-void
.end method

.method private h(F)V
    .locals 2

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-static {v0, p1}, Lcom/miui/dock/sidebar/a;->e(Lcom/miui/dock/sidebar/j;F)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/dock/sidebar/f;->n()V

    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ls8/h;->Y0(Lcom/miui/dock/sidebar/j;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/dock/sidebar/f;->f()V

    :goto_0
    return-void
.end method

.method private i(FZ)V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/dock/sidebar/f;->l:Z

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/dock/sidebar/f;->q:J

    sub-long/2addr v0, v2

    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x32

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "interval : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " skip....."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SidebarTouchListener"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/dock/sidebar/f;->q:J

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-static {v0, p1}, Lcom/miui/dock/sidebar/a;->e(Lcom/miui/dock/sidebar/j;F)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_4

    :cond_1
    invoke-direct {p0}, Lcom/miui/dock/sidebar/f;->n()V

    sget-boolean p1, Ln6/a;->a:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    invoke-virtual {p1}, Ls8/h;->U()Lcom/miui/gamebooster/service/DockWindowManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->z0()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ls8/h;->c0(ZZ)V

    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1, v0}, Ls8/h;->o1(Lcom/miui/dock/sidebar/j;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->P()V

    :cond_3
    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    new-instance v1, Lcom/miui/dock/sidebar/d;

    invoke-direct {v1, p0, p2}, Lcom/miui/dock/sidebar/d;-><init>(Lcom/miui/dock/sidebar/f;Z)V

    invoke-virtual {p1, v0, v1}, Ls8/h;->Y0(Lcom/miui/dock/sidebar/j;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/miui/dock/sidebar/f;->f()V

    :goto_0
    return-void
.end method

.method private k(IZ)Z
    .locals 3

    invoke-static {}, Lc5/a;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lk5/a;->b()I

    move-result p2

    if-eq p2, p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Li8/c;->C()I

    move-result p1

    xor-int/2addr p2, v2

    if-eq p1, p2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private synthetic l(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    iget-object v1, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0, v1}, Ls8/h;->n1(Lcom/miui/dock/sidebar/j;)V

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    iget-object v1, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0, v1, p1}, Ls8/h;->s1(Lcom/miui/dock/sidebar/j;Z)V

    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1, v0}, Ls8/h;->b1(Lcom/miui/dock/sidebar/j;)V

    return-void
.end method

.method private synthetic m()V
    .locals 4

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/k2;->L(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "SidebarTouchListener"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->J()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/dock/sidebar/f;->r:Z

    const-string v3, "onLongClick"

    invoke-static {v1, v3}, Lb8/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    invoke-virtual {v1, v0, v0}, Ls8/h;->c0(ZZ)V

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->n:Landroid/view/View;

    sget v1, Lmiuix/view/i;->x:I

    sget v3, Lmiuix/view/i;->m:I

    invoke-static {v0, v1, v3}, Lmiuix/view/HapticCompat;->f(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->R()V

    return-void

    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/miui/dock/sidebar/f;->r:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestRedirect mID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/dock/sidebar/f;->k:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/dock/sidebar/f;->k:I

    invoke-static {v0}, La8/i1;->c(I)V

    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/dock/sidebar/f;->p:Lo7/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo7/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ls8/h;->U0(I)V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 4

    iget-wide v0, p0, Lcom/miui/dock/sidebar/f;->i:J

    iget-wide v2, p0, Lcom/miui/dock/sidebar/f;->h:J

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upTime - downTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", otherOp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/dock/sidebar/f;->j:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SidebarTouchListener"

    invoke-static {v3, v2}, Lbh/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x12c

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/dock/sidebar/f;->j:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/dock/sidebar/f;->k:I

    invoke-static {v0}, La8/i1;->c(I)V

    :cond_0
    return-void
.end method

.method private q()V
    .locals 2

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0, v1}, Ls8/h;->B0(Lcom/miui/dock/sidebar/j;)V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/dock/sidebar/f;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->B()V

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->O()V

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->w1()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/dock/sidebar/f;->r:Z

    :cond_0
    return-void
.end method

.method private s(F)V
    .locals 4

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/k2;->L(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/dock/sidebar/f;->r:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/dock/sidebar/f;->w(Landroid/view/View;F)I

    move-result v0

    iget-object v1, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v1}, Lcom/miui/dock/sidebar/j;->z()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/miui/dock/sidebar/f;->w(Landroid/view/View;F)I

    const/4 p1, 0x1

    if-nez v0, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/miui/dock/sidebar/f;->k(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockLineLocationChanged, new location = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SidebarTouchListener"

    invoke-static {v3, v2}, Lb8/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "621.3.3.1.17216"

    invoke-static {v2, v1}, Ll5/b;->i(Ljava/lang/String;Z)V

    invoke-static {v0}, Lk5/a;->A(I)V

    xor-int/2addr p1, v1

    invoke-static {p1}, Li8/c;->F0(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private t()V
    .locals 3

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/k2;->L(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/dock/sidebar/f;->r:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v1}, Lk5/a;->B(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveSidebarLineViewY, y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SidebarTouchListener"

    invoke-static {v1, v0}, Lb8/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lm5/g;->h(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/dock/sidebar/j;->V(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private u(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p2, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    invoke-virtual {p2, p1, v0}, Ls8/h;->v1(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private v(Landroid/view/View;F)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->Z()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, La8/k2;->m(Landroid/view/WindowManager;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    const p2, 0x800035

    goto :goto_0

    :cond_0
    const p2, 0x800033

    :goto_0
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void
.end method

.method private w(Landroid/view/View;F)I
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    invoke-virtual {v1}, Ls8/h;->Z()Landroid/view/WindowManager;

    move-result-object v1

    invoke-static {v1}, La8/k2;->m(Landroid/view/WindowManager;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockLineLocationChanged, x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SidebarTouchListener"

    invoke-static {v3, v2}, Lb8/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v2, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    cmpl-float v2, p2, v2

    if-lez v2, :cond_0

    const v2, 0x800035

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v2, 0x7f1307f5

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const v2, 0x800033

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v2, 0x7f1307f3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v2, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\tx = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lb8/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    invoke-virtual {p2, p1, v0}, Ls8/h;->v1(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return v2
.end method


# virtual methods
.method protected g(FF)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMovingSidebarLine, movedX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\tmovedY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SidebarTouchListener"

    invoke-static {v1, v0}, Lb8/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v1}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object v1

    iget v2, p0, Lcom/miui/dock/sidebar/f;->b:F

    add-float/2addr v2, p1

    invoke-direct {p0, v1, v2}, Lcom/miui/dock/sidebar/f;->v(Landroid/view/View;F)V

    iget-object v1, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v1}, Lcom/miui/dock/sidebar/j;->z()Landroid/widget/FrameLayout;

    move-result-object v1

    iget v2, p0, Lcom/miui/dock/sidebar/f;->b:F

    add-float/2addr v2, p1

    invoke-direct {p0, v1, v2}, Lcom/miui/dock/sidebar/f;->v(Landroid/view/View;F)V

    iget v1, p0, Lcom/miui/dock/sidebar/f;->b:F

    add-float/2addr v1, p1

    invoke-direct {p0, v0, v1}, Lcom/miui/dock/sidebar/f;->d(Landroid/view/WindowManager$LayoutParams;F)I

    move-result p1

    iget v1, p0, Lcom/miui/dock/sidebar/f;->f:I

    int-to-float v1, v1

    add-float/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/miui/dock/sidebar/f;->e(F)I

    move-result p2

    iget-object v1, p0, Lcom/miui/dock/sidebar/f;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071d96

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v1, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v1}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/miui/dock/sidebar/f;->u(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v1}, Lcom/miui/dock/sidebar/j;->z()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/miui/dock/sidebar/f;->u(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v1}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/dock/sidebar/RegionSamplingImageView;->h()V

    iget-object v1, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v1}, Lcom/miui/dock/sidebar/j;->q()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/dock/sidebar/f;->c(Landroid/content/Context;I)I

    move-result p1

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/dock/sidebar/j;->s(Landroid/content/Context;)I

    move-result p1

    add-int/2addr p1, p2

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    invoke-virtual {p1, v1, v2}, Ls8/h;->v1(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected j(F)V
    .locals 1

    sget-boolean v0, Ln6/a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->U()Lcom/miui/gamebooster/service/DockWindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->z0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/dock/sidebar/f;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->P()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/dock/sidebar/f;->s:Z

    :cond_1
    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-static {v0, p1}, Lcom/miui/dock/sidebar/a;->i(Lcom/miui/dock/sidebar/j;F)V

    return-void
.end method

.method protected o()V
    .locals 2

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->J()V

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->I()V

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->C()V

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/miui/dock/sidebar/f;->f:I

    invoke-direct {p0}, Lcom/miui/dock/sidebar/f;->n()V

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    const v1, 0x7f071a84

    invoke-virtual {v0, v1}, Lcom/miui/dock/sidebar/j;->m(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/miui/dock/sidebar/f;->j(F)V

    iget-object v1, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v1}, Lcom/miui/dock/sidebar/j;->M()V

    invoke-direct {p0, v0}, Lcom/miui/dock/sidebar/f;->h(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/dock/sidebar/f;->s:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/dock/sidebar/f;->t:Z

    invoke-direct {p0}, Lcom/miui/dock/sidebar/f;->r()V

    invoke-direct {p0}, Lcom/miui/dock/sidebar/f;->q()V

    return-void
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onGenericMotion : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SidebarTouchListener"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0x9

    const/4 v0, 0x1

    if-eq p1, p2, :cond_4

    const/16 p2, 0xa

    if-eq p1, p2, :cond_3

    const/16 p2, 0xc

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/miui/dock/sidebar/f;->t:Z

    iget-boolean p1, p0, Lcom/miui/dock/sidebar/f;->r:Z

    if-nez p1, :cond_5

    sget-boolean p1, Ln6/a;->a:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    invoke-virtual {p1}, Ls8/h;->U()Lcom/miui/gamebooster/service/DockWindowManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->z0()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->P()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->l()V

    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->M()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->C()V

    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->X()V

    :cond_5
    :goto_0
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTouch: \taction = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\tisLeftShow = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SidebarTouchListener"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    invoke-virtual {p1}, Ls8/h;->X()Lcom/miui/dock/sidebar/j;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    invoke-virtual {p1}, Ls8/h;->X()Lcom/miui/dock/sidebar/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->z()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->g:Landroid/view/VelocityTracker;

    if-nez p1, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/dock/sidebar/f;->g:Landroid/view/VelocityTracker;

    :cond_1
    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->g:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    if-eq v2, v3, :cond_5

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v1, 0x3

    if-eq v2, v1, :cond_5

    goto/16 :goto_2

    :cond_2
    iget p2, p0, Lcom/miui/dock/sidebar/f;->b:F

    sub-float p2, p1, p2

    iget v0, p0, Lcom/miui/dock/sidebar/f;->a:F

    sub-float v0, v1, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/miui/dock/sidebar/f;->e:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/miui/dock/sidebar/f;->e:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v2, p0, Lcom/miui/dock/sidebar/f;->n:Landroid/view/View;

    iget-object v4, p0, Lcom/miui/dock/sidebar/f;->u:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v2, p0, Lcom/miui/dock/sidebar/f;->r:Z

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/miui/dock/sidebar/f;->n()V

    invoke-virtual {p0, p2}, Lcom/miui/dock/sidebar/f;->j(F)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p2, v0}, Lcom/miui/dock/sidebar/f;->g(FF)V

    :goto_0
    iput p1, p0, Lcom/miui/dock/sidebar/f;->d:F

    iput v1, p0, Lcom/miui/dock/sidebar/f;->c:F

    iput-boolean v3, p0, Lcom/miui/dock/sidebar/f;->j:Z

    goto/16 :goto_2

    :cond_5
    iget-object v1, p0, Lcom/miui/dock/sidebar/f;->n:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/dock/sidebar/f;->u:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v1}, Lcom/miui/dock/sidebar/j;->M()V

    iget-boolean v1, p0, Lcom/miui/dock/sidebar/f;->r:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/miui/dock/sidebar/f;->p:Lo7/a;

    invoke-virtual {v1}, Lo7/a;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/miui/dock/sidebar/f;->b:F

    sub-float v1, p1, v1

    invoke-direct {p0, v1}, Lcom/miui/dock/sidebar/f;->h(F)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/miui/dock/sidebar/f;->p:Lo7/a;

    invoke-virtual {v1}, Lo7/a;->h()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/miui/dock/sidebar/f;->b:F

    sub-float v1, p1, v1

    iget-boolean v2, p0, Lcom/miui/dock/sidebar/f;->t:Z

    invoke-direct {p0, v1, v2}, Lcom/miui/dock/sidebar/f;->i(FZ)V

    :cond_7
    :goto_1
    iput-boolean v0, p0, Lcom/miui/dock/sidebar/f;->t:Z

    iput-boolean v3, p0, Lcom/miui/dock/sidebar/f;->s:Z

    invoke-direct {p0, p1}, Lcom/miui/dock/sidebar/f;->s(F)V

    invoke-direct {p0}, Lcom/miui/dock/sidebar/f;->t()V

    invoke-direct {p0}, Lcom/miui/dock/sidebar/f;->r()V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/dock/sidebar/f;->i:J

    invoke-direct {p0}, Lcom/miui/dock/sidebar/f;->p()V

    invoke-direct {p0}, Lcom/miui/dock/sidebar/f;->q()V

    goto :goto_2

    :cond_8
    iput p1, p0, Lcom/miui/dock/sidebar/f;->b:F

    iput v1, p0, Lcom/miui/dock/sidebar/f;->a:F

    iput p1, p0, Lcom/miui/dock/sidebar/f;->d:F

    iput v1, p0, Lcom/miui/dock/sidebar/f;->c:F

    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    invoke-virtual {p1}, Ls8/h;->J()V

    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->o:Ls8/h;

    invoke-virtual {p1}, Ls8/h;->I()V

    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->n:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/dock/sidebar/f;->u:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {p1, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->C()V

    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->m:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->u()Lcom/miui/dock/sidebar/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcom/miui/dock/sidebar/f;->f:I

    iget-object p1, p0, Lcom/miui/dock/sidebar/f;->p:Lo7/a;

    invoke-virtual {p1}, Lo7/a;->f()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/miui/dock/sidebar/f;->l:Z

    if-eqz p1, :cond_9

    invoke-static {}, Le7/b;->c()V

    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/dock/sidebar/f;->h:J

    iput-boolean v0, p0, Lcom/miui/dock/sidebar/f;->j:Z

    invoke-static {p2}, La8/i1;->a(Landroid/view/MotionEvent;)I

    move-result p1

    iput p1, p0, Lcom/miui/dock/sidebar/f;->k:I

    :goto_2
    return v3
.end method
