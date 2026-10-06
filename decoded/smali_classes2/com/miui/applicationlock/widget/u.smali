.class public Lcom/miui/applicationlock/widget/u;
.super Lcom/miui/applicationlock/widget/e;
.source "SourceFile"


# instance fields
.field private a:Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;

.field private b:Lc3/g;

.field private c:Lcom/miui/applicationlock/widget/LockPatternView;

.field private d:Ljava/lang/Runnable;

.field private e:Z

.field private f:Lmiui/security/SecurityManager;

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/e;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/applicationlock/widget/u;->g:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/miui/applicationlock/widget/u;->e:Z

    new-instance p2, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;

    invoke-direct {p2, p1}, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/applicationlock/widget/u;->a:Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;

    const-string p2, "security"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/security/SecurityManager;

    iput-object p1, p0, Lcom/miui/applicationlock/widget/u;->f:Lmiui/security/SecurityManager;

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/u;->n()V

    return-void
.end method

.method public static synthetic h(Lcom/miui/applicationlock/widget/u;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/u;->o()V

    return-void
.end method

.method static synthetic i(Lcom/miui/applicationlock/widget/u;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/widget/u;->d:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic j(Lcom/miui/applicationlock/widget/u;)Lcom/miui/applicationlock/widget/LockPatternView;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/widget/u;->c:Lcom/miui/applicationlock/widget/LockPatternView;

    return-object p0
.end method

.method static synthetic k(Lcom/miui/applicationlock/widget/u;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/applicationlock/widget/u;->e:Z

    return p0
.end method

.method static synthetic l(Lcom/miui/applicationlock/widget/u;)Lc3/g;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/widget/u;->b:Lc3/g;

    return-object p0
.end method

.method static synthetic m(Lcom/miui/applicationlock/widget/u;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/u;->p(Ljava/lang/String;)V

    return-void
.end method

.method private n()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {}, Lx4/y;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto :goto_0

    :cond_0
    const/16 v1, 0x51

    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-boolean v1, p0, Lcom/miui/applicationlock/widget/u;->e:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/applicationlock/widget/u;->g:Landroid/content/Context;

    const v2, 0x7f0e009e

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/applicationlock/widget/u;->g:Landroid/content/Context;

    const v2, 0x7f0e009d

    :goto_1
    invoke-static {v1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f0b071d

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/applicationlock/widget/LockPatternView;

    iput-object v1, p0, Lcom/miui/applicationlock/widget/u;->c:Lcom/miui/applicationlock/widget/LockPatternView;

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc3/f;->Q(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/applicationlock/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v1, p0, Lcom/miui/applicationlock/widget/u;->c:Lcom/miui/applicationlock/widget/LockPatternView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc3/f;->S(Landroid/content/Context;)Z

    move-result v2

    xor-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/miui/applicationlock/widget/LockPatternView;->setInStealthMode(Z)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/u;->c:Lcom/miui/applicationlock/widget/LockPatternView;

    iget-boolean v2, p0, Lcom/miui/applicationlock/widget/u;->e:Z

    invoke-virtual {v1, v2}, Lcom/miui/applicationlock/widget/LockPatternView;->setResetPage(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc3/f;->O(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/applicationlock/widget/u;->c:Lcom/miui/applicationlock/widget/LockPatternView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071d97

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/miui/applicationlock/widget/u;->c:Lcom/miui/applicationlock/widget/LockPatternView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    new-instance v1, Lcom/miui/applicationlock/widget/t;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/widget/t;-><init>(Lcom/miui/applicationlock/widget/u;)V

    iput-object v1, p0, Lcom/miui/applicationlock/widget/u;->d:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/u;->c:Lcom/miui/applicationlock/widget/LockPatternView;

    new-instance v2, Lcom/miui/applicationlock/widget/u$a;

    invoke-direct {v2, p0}, Lcom/miui/applicationlock/widget/u$a;-><init>(Lcom/miui/applicationlock/widget/u;)V

    invoke-virtual {v1, v2}, Lcom/miui/applicationlock/widget/LockPatternView;->setOnPatternListener(Lcom/miui/applicationlock/widget/LockPatternView$d;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private synthetic o()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/u;->c:Lcom/miui/applicationlock/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/LockPatternView;->c()V

    return-void
.end method

.method private p(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/u;->f:Lmiui/security/SecurityManager;

    const-string v1, "pattern"

    invoke-virtual {v0, v1, p1}, Lmiui/security/SecurityManager;->checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/applicationlock/widget/u;->b:Lc3/g;

    invoke-interface {p1}, Lc3/g;->b()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/applicationlock/widget/u;->b:Lc3/g;

    invoke-interface {p1}, Lc3/g;->a()V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/miui/applicationlock/widget/LockPatternView$c;->c:Lcom/miui/applicationlock/widget/LockPatternView$c;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/widget/u;->setDisplayMode(Lcom/miui/applicationlock/widget/LockPatternView$c;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/u;->a()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/widget/u;->c:Lcom/miui/applicationlock/widget/LockPatternView;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/u;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/applicationlock/widget/u;->c:Lcom/miui/applicationlock/widget/LockPatternView;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/u;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/u;->c:Lcom/miui/applicationlock/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/LockPatternView;->s()Z

    move-result v0

    return v0
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/u;->c:Lcom/miui/applicationlock/widget/LockPatternView;

    invoke-virtual {v0, p1}, Lcom/miui/applicationlock/widget/LockPatternView;->f(Z)V

    return-void
.end method

.method public d(Z)Landroid/widget/EditText;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/u;->c:Lcom/miui/applicationlock/widget/LockPatternView;

    invoke-virtual {v0, p1}, Lcom/miui/applicationlock/widget/LockPatternView;->h(Z)V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/u;->c:Lcom/miui/applicationlock/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/LockPatternView;->c()V

    return-void
.end method

.method public g()V
    .locals 20

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/miui/applicationlock/widget/u;->c:Lcom/miui/applicationlock/widget/LockPatternView;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setAppPage(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/u;->c:Lcom/miui/applicationlock/widget/LockPatternView;

    invoke-virtual {v0, p1}, Lcom/miui/applicationlock/widget/LockPatternView;->setAppPage(Z)V

    return-void
.end method

.method public setApplockUnlockCallback(Lc3/g;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/u;->b:Lc3/g;

    :cond_0
    return-void
.end method

.method public setDisplayMode(Lcom/miui/applicationlock/widget/LockPatternView$c;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/u;->c:Lcom/miui/applicationlock/widget/LockPatternView;

    invoke-virtual {v0, p1}, Lcom/miui/applicationlock/widget/LockPatternView;->setDisplayMode(Lcom/miui/applicationlock/widget/LockPatternView$c;)V

    return-void
.end method

.method public setLightMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/u;->c:Lcom/miui/applicationlock/widget/LockPatternView;

    invoke-virtual {v0, p1}, Lcom/miui/applicationlock/widget/LockPatternView;->setLightMode(Z)V

    return-void
.end method
