.class public Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/brightness/a$a;
.implements Ls8/w;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/miui/dock/sidebar/j;

.field private e:Ls8/h;

.field public f:I

.field public g:I

.field public h:I

.field private i:Landroid/content/Context;

.field private j:Lo7/a;

.field private k:Z

.field private l:Z

.field private m:Lcom/miui/gamebooster/windowmanager/newbox/e;

.field private n:Lcom/miui/gamebooster/windowmanager/newbox/c0;

.field private o:Ld8/n;

.field private p:Landroid/view/View;

.field private q:Ly5/i;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->i(Landroid/content/Context;)V

    return-void
.end method

.method private d()V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->getTargetBox()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->s:Landroid/view/View;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not load type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->j:Lo7/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " boxView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TurboLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->j:Lo7/a;

    invoke-virtual {v1}, Lo7/a;->d()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->i:Landroid/content/Context;

    invoke-static {v1}, La8/z;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->a:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->f()V

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->s:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->s:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->f()V

    :goto_0
    return-void
.end method

.method private e(Landroid/content/res/Resources;)V
    .locals 6

    const v0, 0x7f070377

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/o0;->b()I

    move-result v1

    iput v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->h:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v0, Lcom/miui/gamebooster/windowmanager/newbox/e;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->i:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->a:Z

    iget-object v4, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->d:Lcom/miui/dock/sidebar/j;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/miui/gamebooster/windowmanager/newbox/e;-><init>(Landroid/content/Context;ZLjava/lang/String;Lcom/miui/dock/sidebar/j;)V

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->m:Lcom/miui/gamebooster/windowmanager/newbox/e;

    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/e;->J()V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->j:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->p()V

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->q()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->j:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->m:Lcom/miui/gamebooster/windowmanager/newbox/e;

    const v1, 0x7f0602f3

    invoke-static {v0, v1}, Lx4/k;->h(Landroid/view/ViewGroup;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->m:Lcom/miui/gamebooster/windowmanager/newbox/e;

    const v1, 0x7f080f7e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->m:Lcom/miui/gamebooster/windowmanager/newbox/e;

    invoke-static {p1}, Lm5/g;->c(Landroid/content/res/Resources;)F

    move-result p1

    invoke-static {v0, p1}, Lx4/k;->a(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->m:Lcom/miui/gamebooster/windowmanager/newbox/e;

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private f()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070e22

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/Space;

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->i:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getTargetBox()Landroid/view/View;
    .locals 7

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->j:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ly5/i;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->e:Ls8/h;

    invoke-direct {v0, v1}, Ly5/i;-><init>(Ls8/h;)V

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->q:Ly5/i;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->i:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->a:Z

    invoke-virtual {v0, v1, v2}, Ly5/i;->q(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->r:Landroid/view/View;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->j:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/gamebooster/windowmanager/newbox/c0;

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->i:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->a:Z

    iget-object v4, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->b:Ljava/lang/String;

    iget v5, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->c:I

    iget-boolean v6, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->k:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/gamebooster/windowmanager/newbox/c0;-><init>(Landroid/content/Context;ZLjava/lang/String;IZ)V

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->n:Lcom/miui/gamebooster/windowmanager/newbox/c0;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->setOnChangedListener(Lcom/miui/gamebooster/brightness/a$a;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->n:Lcom/miui/gamebooster/windowmanager/newbox/c0;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->setOnStatusChangeListener(Ls8/w;)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->n:Lcom/miui/gamebooster/windowmanager/newbox/c0;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->j:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ld8/n;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->e:Ls8/h;

    invoke-direct {v0, v1}, Ld8/n;-><init>(Ls8/h;)V

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->o:Ld8/n;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->i:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->a:Z

    iget-boolean v3, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->l:Z

    invoke-virtual {v0, v1, v2, v3}, Ld8/n;->m(Landroid/content/Context;ZZ)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->p:Landroid/view/View;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private i(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->i:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    return-void
.end method

.method private l(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->m:Lcom/miui/gamebooster/windowmanager/newbox/e;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->n:Lcom/miui/gamebooster/windowmanager/newbox/c0;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->getMainView()Lcom/miui/gamebooster/windowmanager/newbox/d0;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->n:Lcom/miui/gamebooster/windowmanager/newbox/c0;

    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->getMainView()Lcom/miui/gamebooster/windowmanager/newbox/d0;

    move-result-object v0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private p()V
    .locals 5

    invoke-static {}, Lx4/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->m:Lcom/miui/gamebooster/windowmanager/newbox/e;

    const v1, 0x7f060df0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->m:Lcom/miui/gamebooster/windowmanager/newbox/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lx4/k;->g(Landroid/view/View;Z)Z

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->m:Lcom/miui/gamebooster/windowmanager/newbox/e;

    invoke-static {v0, v1}, Lx4/k;->d(Landroid/view/ViewGroup;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->m:Lcom/miui/gamebooster/windowmanager/newbox/e;

    const/16 v2, 0x64

    invoke-static {v0, v2}, Lx4/k;->e(Landroid/view/ViewGroup;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->m:Lcom/miui/gamebooster/windowmanager/newbox/e;

    invoke-static {v0, v1}, Lx4/k;->f(Landroid/view/View;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/networkassistant/utils/DeviceUtil;->isDarkMode(Landroid/content/Context;)Z

    move-result v1

    const/16 v2, 0x6a

    const/16 v3, 0x6b

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/Point;

    const v4, -0x888889

    invoke-direct {v1, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/graphics/Point;

    const v3, -0xe58d00

    invoke-direct {v1, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Point;

    const v4, -0x6e6e6f

    invoke-direct {v1, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/graphics/Point;

    const v3, -0x330600

    invoke-direct {v1, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->m:Lcom/miui/gamebooster/windowmanager/newbox/e;

    invoke-static {v1, v0}, Lx4/k;->c(Landroid/view/View;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->m:Lcom/miui/gamebooster/windowmanager/newbox/e;

    const v1, 0x7f080f71

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method

.method private q()V
    .locals 8

    invoke-static {}, Lx4/p1;->a()Z

    move-result v0

    const v1, 0x7f0703ab

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->m:Lcom/miui/gamebooster/windowmanager/newbox/e;

    const/high16 v3, 0x73000000

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0709f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v6, v0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v7}, Lx4/p1;->b(Landroid/view/View;IFFFF)V

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->m:Lcom/miui/gamebooster/windowmanager/newbox/e;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->m:Lcom/miui/gamebooster/windowmanager/newbox/e;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOutlineAmbientShadowColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setLayoutPadding(Landroid/content/res/Resources;)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->f:I

    iput v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->g:I

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->i:Landroid/content/Context;

    invoke-static {v1}, La8/k2;->L(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->a:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/o0;->a()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->f:I

    iget-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->a:Z

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/o0;->a()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->g:I

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->e:Ls8/h;

    invoke-virtual {v1}, Ls8/h;->Z()Landroid/view/WindowManager;

    move-result-object v1

    invoke-static {v1}, La8/k2;->k(Landroid/view/WindowManager;)I

    move-result v1

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/o0;->b()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    goto :goto_7

    :cond_2
    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->j:Lo7/a;

    invoke-virtual {v1}, Lo7/a;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lx4/y;->t()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->j:Lo7/a;

    invoke-virtual {v1}, Lo7/a;->f()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->a:Z

    const v2, 0x7f071de4

    if-eqz v1, :cond_4

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    iput v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->f:I

    iget-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->a:Z

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_5
    :goto_3
    iget-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->a:Z

    const v2, 0x7f070ed3

    if-eqz v1, :cond_6

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_4

    :cond_6
    move v1, v0

    :goto_4
    iput v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->f:I

    iget-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->a:Z

    if-eqz v1, :cond_7

    :goto_5
    move v1, v0

    goto :goto_6

    :cond_7
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :goto_6
    iput v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->g:I

    :cond_8
    move v1, v0

    :goto_7
    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->j:Lo7/a;

    invoke-virtual {v2}, Lo7/a;->e()Z

    move-result v2

    if-eqz v2, :cond_c

    const v2, 0x7f070376

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->i:Landroid/content/Context;

    invoke-static {v2}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->i:Landroid/content/Context;

    invoke-static {v2}, Lx4/a0;->n(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_9
    iget-boolean v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->a:Z

    if-eqz v2, :cond_a

    move v3, p1

    goto :goto_8

    :cond_a
    move v3, v0

    :goto_8
    iput v3, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->f:I

    if-eqz v2, :cond_b

    move p1, v0

    :cond_b
    iput p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->g:I

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLayoutPadding: left = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->f:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " top = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " right = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->g:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TurboLayout"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->f:I

    iget v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->g:I

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->l(Z)V

    return-void
.end method

.method public b(I)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->l(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->e:Ls8/h;

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1, v0}, Ls8/h;->L(Lcom/miui/dock/sidebar/j;)V

    return-void
.end method

.method public g(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->setLayoutPadding(Landroid/content/res/Resources;)V

    return-void
.end method

.method public getBoxView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->s:Landroid/view/View;

    return-object v0
.end method

.method public getConversationViewAdapter()Ly5/i;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->q:Ly5/i;

    return-object v0
.end method

.method public getDockContainerWidth()I
    .locals 2

    iget-boolean v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->f:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->g:I

    :goto_0
    iget v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDockLayout()Lcom/miui/gamebooster/windowmanager/newbox/e;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->m:Lcom/miui/gamebooster/windowmanager/newbox/e;

    return-object v0
.end method

.method public getGameModeView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->n:Lcom/miui/gamebooster/windowmanager/newbox/c0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->getGameModeView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getGameTurboLayout()Lcom/miui/gamebooster/windowmanager/newbox/c0;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->n:Lcom/miui/gamebooster/windowmanager/newbox/c0;

    return-object v0
.end method

.method public getShoulderView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->n:Lcom/miui/gamebooster/windowmanager/newbox/c0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->getShoulderView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getVideoBoxViewAdapter()Ld8/n;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->o:Ld8/n;

    return-object v0
.end method

.method public h(Z)I
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/miui/gamebooster/windowmanager/newbox/c0;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/miui/gamebooster/windowmanager/newbox/c0;

    invoke-virtual {p1}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->getMainView()Lcom/miui/gamebooster/windowmanager/newbox/d0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFirstViewWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TurboLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .locals 1

    invoke-static {}, Lf7/b;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lf7/b;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lx4/t;->E()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->a:Z

    return v0
.end method

.method public m(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->j:Lo7/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lo7/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->o:Ld8/n;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ld8/n;->u(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->o:Ld8/n;

    invoke-virtual {p1}, Ld8/n;->q()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->j:Lo7/a;

    invoke-virtual {p1}, Lo7/a;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->q:Ly5/i;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ly5/i;->A()V

    :cond_2
    :goto_0
    return-void
.end method

.method public n(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->o:Ld8/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ld8/n;->v(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->n:Lcom/miui/gamebooster/windowmanager/newbox/c0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->g()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->j:Lo7/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lo7/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->o:Ld8/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ld8/n;->r()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->j:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->q:Ly5/i;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ly5/i;->y()V

    :cond_2
    :goto_0
    return-void
.end method

.method public r(Lcom/miui/dock/sidebar/j;ZLjava/lang/String;ILo7/a;ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setParams: expandTurbo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TurboLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->o()Ls8/h;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->e:Ls8/h;

    iput-boolean p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->a:Z

    iput-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->b:Ljava/lang/String;

    iput p4, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->c:I

    iput-object p5, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->j:Lo7/a;

    iput-boolean p6, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->k:Z

    iput-boolean p7, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->l:Z

    return-void
.end method

.method public s(Lg8/a;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->j:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->q:Ly5/i;

    invoke-virtual {v0, p1}, Ly5/i;->E(Lg8/a;)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->n:Lcom/miui/gamebooster/windowmanager/newbox/c0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->h()V

    :cond_0
    return-void
.end method

.method public u(Z)V
    .locals 13

    const-string v0, "TurboLayout"

    const-string v1, "showOrHideToolbox"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->j:Lo7/a;

    invoke-virtual {v0}, Lo7/a;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/miui/gamebooster/windowmanager/newbox/e;

    if-eqz v4, :cond_0

    goto :goto_4

    :cond_0
    const/4 v4, 0x1

    new-array v5, v4, [Landroid/view/View;

    aput-object v3, v5, v1

    invoke-static {v5}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v3

    new-instance v5, Lmiuix/animation/controller/AnimState;

    invoke-direct {v5}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v6, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-eqz p1, :cond_1

    move-wide v9, v7

    goto :goto_1

    :cond_1
    const-wide/16 v9, 0x0

    :goto_1
    invoke-virtual {v5, v6, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    sget-object v6, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide v9, 0x3fee666666666666L    # 0.95

    if-eqz p1, :cond_2

    move-wide v11, v7

    goto :goto_2

    :cond_2
    move-wide v11, v9

    :goto_2
    invoke-virtual {v5, v6, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    sget-object v6, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move-wide v7, v9

    :goto_3
    invoke-virtual {v5, v6, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    new-array v4, v4, [Lmiuix/animation/base/AnimConfig;

    new-instance v6, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v6}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v7, -0x2

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-virtual {v6, v7, v8}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-interface {v3, v5, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public v()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->e(Landroid/content/res/Resources;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->j:Lo7/a;

    invoke-virtual {v1}, Lo7/a;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->d()V

    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->setLayoutPadding(Landroid/content/res/Resources;)V

    return-void
.end method
