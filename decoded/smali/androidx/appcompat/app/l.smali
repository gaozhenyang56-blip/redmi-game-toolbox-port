.class public Landroidx/appcompat/app/l;
.super Landroidx/appcompat/app/ActionBar;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$d;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$a;->c:Landroidx/annotation/RestrictTo$a;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/l$e;,
        Landroidx/appcompat/app/l$d;
    }
.end annotation


# static fields
.field private static final F:Landroid/view/animation/Interpolator;

.field private static final G:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Z

.field B:Z

.field final C:Landroidx/core/view/b3;

.field final D:Landroidx/core/view/b3;

.field final E:Landroidx/core/view/d3;

.field a:Landroid/content/Context;

.field private b:Landroid/content/Context;

.field private c:Landroid/app/Activity;

.field d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field e:Landroidx/appcompat/widget/ActionBarContainer;

.field f:Landroidx/appcompat/widget/i0;

.field g:Landroidx/appcompat/widget/ActionBarContextView;

.field h:Landroid/view/View;

.field i:Landroidx/appcompat/widget/y0;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/l$e;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroidx/appcompat/app/l$e;

.field private l:I

.field private m:Z

.field n:Landroidx/appcompat/app/l$d;

.field o:Landroidx/appcompat/view/b;

.field p:Landroidx/appcompat/view/b$a;

.field private q:Z

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/ActionBar$b;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z

.field private t:I

.field u:Z

.field v:Z

.field w:Z

.field private x:Z

.field private y:Z

.field z:Landroidx/appcompat/view/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/l;->F:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/l;->G:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/l;->j:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/app/l;->l:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/l;->r:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/app/l;->t:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->u:Z

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->y:Z

    new-instance v0, Landroidx/appcompat/app/l$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/l$a;-><init>(Landroidx/appcompat/app/l;)V

    iput-object v0, p0, Landroidx/appcompat/app/l;->C:Landroidx/core/view/b3;

    new-instance v0, Landroidx/appcompat/app/l$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/l$b;-><init>(Landroidx/appcompat/app/l;)V

    iput-object v0, p0, Landroidx/appcompat/app/l;->D:Landroidx/core/view/b3;

    new-instance v0, Landroidx/appcompat/app/l$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/l$c;-><init>(Landroidx/appcompat/app/l;)V

    iput-object v0, p0, Landroidx/appcompat/app/l;->E:Landroidx/core/view/d3;

    iput-object p1, p0, Landroidx/appcompat/app/l;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/l;->h(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/l;->h:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/l;->j:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/app/l;->l:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/l;->r:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/app/l;->t:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->u:Z

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->y:Z

    new-instance v0, Landroidx/appcompat/app/l$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/l$a;-><init>(Landroidx/appcompat/app/l;)V

    iput-object v0, p0, Landroidx/appcompat/app/l;->C:Landroidx/core/view/b3;

    new-instance v0, Landroidx/appcompat/app/l$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/l$b;-><init>(Landroidx/appcompat/app/l;)V

    iput-object v0, p0, Landroidx/appcompat/app/l;->D:Landroidx/core/view/b3;

    new-instance v0, Landroidx/appcompat/app/l$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/l$c;-><init>(Landroidx/appcompat/app/l;)V

    iput-object v0, p0, Landroidx/appcompat/app/l;->E:Landroidx/core/view/d3;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/l;->h(Landroid/view/View;)V

    return-void
.end method

.method static checkShowingFlags(ZZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private cleanupTabs()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->k:Landroidx/appcompat/app/l$e;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/l;->selectTab(Landroidx/appcompat/app/ActionBar$d;)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/appcompat/app/l;->i:Landroidx/appcompat/widget/y0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->j()V

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/app/l;->l:I

    return-void
.end method

.method private configureTab(Landroidx/appcompat/app/ActionBar$d;I)V
    .locals 1

    check-cast p1, Landroidx/appcompat/app/l$e;

    invoke-virtual {p1}, Landroidx/appcompat/app/l$e;->getCallback()Landroidx/appcompat/app/ActionBar$e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/l$e;->setPosition(I)V

    iget-object v0, p0, Landroidx/appcompat/app/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/appcompat/app/l;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/l$e;

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/l$e;->setPosition(I)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Action Bar Tab must have a Callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ensureTabsExist()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/app/l;->i:Landroidx/appcompat/widget/y0;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/appcompat/widget/y0;

    iget-object v1, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/y0;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Landroidx/appcompat/app/l;->s:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v1, v0}, Landroidx/appcompat/widget/i0;->x(Landroidx/appcompat/widget/y0;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/l;->getNavigationMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_3

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->m0(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/y0;)V

    :goto_1
    iput-object v0, p0, Landroidx/appcompat/app/l;->i:Landroidx/appcompat/widget/y0;

    return-void
.end method

.method private g(Landroid/view/View;)Landroidx/appcompat/widget/i0;
    .locals 3

    instance-of v0, p1, Landroidx/appcompat/widget/i0;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/appcompat/widget/i0;

    return-object p1

    :cond_0
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/i0;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "null"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private h(Landroid/view/View;)V
    .locals 5

    sget v0, Le/f;->p:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$d;)V

    :cond_0
    sget v0, Le/f;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/l;->g(Landroid/view/View;)Landroidx/appcompat/widget/i0;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    sget v0, Le/f;->f:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Landroidx/appcompat/app/l;->g:Landroidx/appcompat/widget/ActionBarContextView;

    sget v0, Le/f;->c:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    if-eqz v0, :cond_7

    iget-object v1, p0, Landroidx/appcompat/app/l;->g:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    invoke-interface {v0}, Landroidx/appcompat/widget/i0;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    iget-object p1, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {p1}, Landroidx/appcompat/widget/i0;->E()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->m:Z

    :cond_2
    iget-object v2, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    invoke-static {v2}, Landroidx/appcompat/view/a;->b(Landroid/content/Context;)Landroidx/appcompat/view/a;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/a;->a()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move p1, v1

    goto :goto_2

    :cond_4
    :goto_1
    move p1, v0

    :goto_2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l;->setHomeButtonEnabled(Z)V

    invoke-virtual {v2}, Landroidx/appcompat/view/a;->g()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/l;->setHasEmbeddedTabs(Z)V

    iget-object p1, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Le/j;->a:[I

    sget v4, Le/a;->c:I

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v2, Le/j;->k:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/l;->setHideOnContentScrollEnabled(Z)V

    :cond_5
    sget v0, Le/j;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_6

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/l;->setElevation(F)V

    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private hideForActionMode()V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->x:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->x:Z

    iget-object v1, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    invoke-direct {p0, v0}, Landroidx/appcompat/app/l;->updateVisibility(Z)V

    :cond_1
    return-void
.end method

.method private i()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->T(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 4

    iput-boolean p1, p0, Landroidx/appcompat/app/l;->s:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/i0;->x(Landroidx/appcompat/widget/y0;)V

    iget-object p1, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Landroidx/appcompat/app/l;->i:Landroidx/appcompat/widget/y0;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/y0;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/y0;)V

    iget-object p1, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    iget-object v0, p0, Landroidx/appcompat/app/l;->i:Landroidx/appcompat/widget/y0;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/i0;->x(Landroidx/appcompat/widget/y0;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/l;->getNavigationMode()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    iget-object v0, p0, Landroidx/appcompat/app/l;->i:Landroidx/appcompat/widget/y0;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->m0(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    iget-boolean v3, p0, Landroidx/appcompat/app/l;->s:Z

    if-nez v3, :cond_4

    if-eqz p1, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    invoke-interface {v0, v3}, Landroidx/appcompat/widget/i0;->u(Z)V

    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Landroidx/appcompat/app/l;->s:Z

    if-nez v3, :cond_5

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method private showForActionMode()V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->x:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->x:Z

    iget-object v1, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/l;->updateVisibility(Z)V

    :cond_1
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 3

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->v:Z

    iget-boolean v1, p0, Landroidx/appcompat/app/l;->w:Z

    iget-boolean v2, p0, Landroidx/appcompat/app/l;->x:Z

    invoke-static {v0, v1, v2}, Landroidx/appcompat/app/l;->checkShowingFlags(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->y:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->y:Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l;->doShow(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/app/l;->y:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->y:Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l;->doHide(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->w:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->w:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/appcompat/app/l;->updateVisibility(Z)V

    :cond_0
    return-void
.end method

.method public addOnMenuVisibilityListener(Landroidx/appcompat/app/ActionBar$b;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$d;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/l;->addTab(Landroidx/appcompat/app/ActionBar$d;Z)V

    return-void
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$d;I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/app/l;->addTab(Landroidx/appcompat/app/ActionBar$d;IZ)V

    return-void
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$d;IZ)V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/l;->ensureTabsExist()V

    iget-object v0, p0, Landroidx/appcompat/app/l;->i:Landroidx/appcompat/widget/y0;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/y0;->a(Landroidx/appcompat/app/ActionBar$d;IZ)V

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/l;->configureTab(Landroidx/appcompat/app/ActionBar$d;I)V

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l;->selectTab(Landroidx/appcompat/app/ActionBar$d;)V

    :cond_0
    return-void
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$d;Z)V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/l;->ensureTabsExist()V

    iget-object v0, p0, Landroidx/appcompat/app/l;->i:Landroidx/appcompat/widget/y0;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/y0;->b(Landroidx/appcompat/app/ActionBar$d;Z)V

    iget-object v0, p0, Landroidx/appcompat/app/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/l;->configureTab(Landroidx/appcompat/app/ActionBar$d;I)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l;->selectTab(Landroidx/appcompat/app/ActionBar$d;)V

    :cond_0
    return-void
.end method

.method public animateToMode(Z)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/appcompat/app/l;->showForActionMode()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/app/l;->hideForActionMode()V

    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/app/l;->i()Z

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {p1, v1, v4, v5}, Landroidx/appcompat/widget/i0;->m(IJ)Landroidx/core/view/a3;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/l;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v3, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->f(IJ)Landroidx/core/view/a3;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {p1, v3, v6, v7}, Landroidx/appcompat/widget/i0;->m(IJ)Landroidx/core/view/a3;

    move-result-object v0

    iget-object p1, p0, Landroidx/appcompat/app/l;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->f(IJ)Landroidx/core/view/a3;

    move-result-object p1

    :goto_1
    new-instance v1, Landroidx/appcompat/view/h;

    invoke-direct {v1}, Landroidx/appcompat/view/h;-><init>()V

    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/view/h;->d(Landroidx/core/view/a3;Landroidx/core/view/a3;)Landroidx/appcompat/view/h;

    invoke-virtual {v1}, Landroidx/appcompat/view/h;->h()V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {p1, v1}, Landroidx/appcompat/widget/i0;->B(I)V

    iget-object p1, p0, Landroidx/appcompat/app/l;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {p1, v3}, Landroidx/appcompat/widget/i0;->B(I)V

    iget-object p1, p0, Landroidx/appcompat/app/l;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/app/l;->u:Z

    return-void
.end method

.method public collapseActionView()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/widget/i0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0}, Landroidx/appcompat/widget/i0;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->w:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->w:Z

    invoke-direct {p0, v0}, Landroidx/appcompat/app/l;->updateVisibility(Z)V

    :cond_0
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->q:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/app/l;->q:Z

    iget-object v0, p0, Landroidx/appcompat/app/l;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/appcompat/app/l;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/ActionBar$b;

    invoke-interface {v2, p1}, Landroidx/appcompat/app/ActionBar$b;->onMenuVisibilityChanged(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public doHide(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/app/l;->z:Landroidx/appcompat/view/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->a()V

    :cond_0
    iget v0, p0, Landroidx/appcompat/app/l;->t:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->A:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    new-instance v0, Landroidx/appcompat/view/h;

    invoke-direct {v0}, Landroidx/appcompat/view/h;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iget-object v3, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->e(Landroid/view/View;)Landroidx/core/view/a3;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/core/view/a3;->m(F)Landroidx/core/view/a3;

    move-result-object p1

    iget-object v1, p0, Landroidx/appcompat/app/l;->E:Landroidx/core/view/d3;

    invoke-virtual {p1, v1}, Landroidx/core/view/a3;->k(Landroidx/core/view/d3;)Landroidx/core/view/a3;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/h;->c(Landroidx/core/view/a3;)Landroidx/appcompat/view/h;

    iget-boolean p1, p0, Landroidx/appcompat/app/l;->u:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/appcompat/app/l;->h:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->e(Landroid/view/View;)Landroidx/core/view/a3;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/core/view/a3;->m(F)Landroidx/core/view/a3;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/h;->c(Landroidx/core/view/a3;)Landroidx/appcompat/view/h;

    :cond_3
    sget-object p1, Landroidx/appcompat/app/l;->F:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/h;->f(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/h;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/h;->e(J)Landroidx/appcompat/view/h;

    iget-object p1, p0, Landroidx/appcompat/app/l;->C:Landroidx/core/view/b3;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/h;->g(Landroidx/core/view/b3;)Landroidx/appcompat/view/h;

    iput-object v0, p0, Landroidx/appcompat/app/l;->z:Landroidx/appcompat/view/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->h()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Landroidx/appcompat/app/l;->C:Landroidx/core/view/b3;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/core/view/b3;->b(Landroid/view/View;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public doShow(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/app/l;->z:Landroidx/appcompat/view/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->a()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Landroidx/appcompat/app/l;->t:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->A:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iget-object v2, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2, p1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x1

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    new-instance p1, Landroidx/appcompat/view/h;

    invoke-direct {p1}, Landroidx/appcompat/view/h;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->e(Landroid/view/View;)Landroidx/core/view/a3;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/core/view/a3;->m(F)Landroidx/core/view/a3;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/app/l;->E:Landroidx/core/view/d3;

    invoke-virtual {v2, v3}, Landroidx/core/view/a3;->k(Landroidx/core/view/d3;)Landroidx/core/view/a3;

    invoke-virtual {p1, v2}, Landroidx/appcompat/view/h;->c(Landroidx/core/view/a3;)Landroidx/appcompat/view/h;

    iget-boolean v2, p0, Landroidx/appcompat/app/l;->u:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/appcompat/app/l;->h:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Landroidx/appcompat/app/l;->h:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->e(Landroid/view/View;)Landroidx/core/view/a3;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/core/view/a3;->m(F)Landroidx/core/view/a3;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/h;->c(Landroidx/core/view/a3;)Landroidx/appcompat/view/h;

    :cond_3
    sget-object v0, Landroidx/appcompat/app/l;->G:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/h;->f(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/h;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/h;->e(J)Landroidx/appcompat/view/h;

    iget-object v0, p0, Landroidx/appcompat/app/l;->D:Landroidx/core/view/b3;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/h;->g(Landroidx/core/view/b3;)Landroidx/appcompat/view/h;

    iput-object p1, p0, Landroidx/appcompat/app/l;->z:Landroidx/appcompat/view/h;

    invoke-virtual {p1}, Landroidx/appcompat/view/h;->h()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean p1, p0, Landroidx/appcompat/app/l;->u:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/appcompat/app/l;->h:Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    iget-object p1, p0, Landroidx/appcompat/app/l;->D:Landroidx/core/view/b3;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/core/view/b3;->b(Landroid/view/View;)V

    :goto_0
    iget-object p1, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_6

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->m0(Landroid/view/View;)V

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->z:Landroidx/appcompat/view/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/l;->z:Landroidx/appcompat/view/h;

    :cond_0
    return-void
.end method

.method f()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/l;->p:Landroidx/appcompat/view/b$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/app/l;->o:Landroidx/appcompat/view/b;

    invoke-interface {v0, v1}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/l;->o:Landroidx/appcompat/view/b;

    iput-object v0, p0, Landroidx/appcompat/app/l;->p:Landroidx/appcompat/view/b$a;

    :cond_0
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0}, Landroidx/appcompat/widget/i0;->w()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0}, Landroidx/appcompat/widget/i0;->E()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->v(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHideOffset()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0}, Landroidx/appcompat/widget/i0;->l()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0}, Landroidx/appcompat/widget/i0;->t()I

    move-result v0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0}, Landroidx/appcompat/widget/i0;->l()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0}, Landroidx/appcompat/widget/i0;->l()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/l;->k:Landroidx/appcompat/app/l$e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/l$e;->getPosition()I

    move-result v2

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0}, Landroidx/appcompat/widget/i0;->q()I

    move-result v0

    return v0
.end method

.method public getSelectedTab()Landroidx/appcompat/app/ActionBar$d;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->k:Landroidx/appcompat/app/l$e;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0}, Landroidx/appcompat/widget/i0;->D()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroidx/appcompat/app/ActionBar$d;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/ActionBar$d;

    return-object p1
.end method

.method public getTabCount()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/app/l;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Le/a;->h:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroidx/appcompat/app/l;->b:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    iput-object v0, p0, Landroidx/appcompat/app/l;->b:Landroid/content/Context;

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/l;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0}, Landroidx/appcompat/widget/i0;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->v:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->v:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/l;->updateVisibility(Z)V

    :cond_0
    return-void
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/l;->getHeight()I

    move-result v0

    iget-boolean v1, p0, Landroidx/appcompat/app/l;->y:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/l;->getHideOffset()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTitleTruncated()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/widget/i0;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newTab()Landroidx/appcompat/app/ActionBar$d;
    .locals 1

    new-instance v0, Landroidx/appcompat/app/l$e;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/l$e;-><init>(Landroidx/appcompat/app/l;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    invoke-static {p1}, Landroidx/appcompat/view/a;->b(Landroid/content/Context;)Landroidx/appcompat/view/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/a;->g()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/l;->setHasEmbeddedTabs(Z)V

    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/app/l$d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/l$d;->c()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/app/l;->t:I

    return-void
.end method

.method public removeAllTabs()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/l;->cleanupTabs()V

    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroidx/appcompat/app/ActionBar$b;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTab(Landroidx/appcompat/app/ActionBar$d;)V
    .locals 0

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar$d;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l;->removeTabAt(I)V

    return-void
.end method

.method public removeTabAt(I)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/app/l;->i:Landroidx/appcompat/widget/y0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/l;->k:Landroidx/appcompat/app/l$e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/l$e;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/appcompat/app/l;->l:I

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/app/l;->i:Landroidx/appcompat/widget/y0;

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/y0;->k(I)V

    iget-object v1, p0, Landroidx/appcompat/app/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/l$e;

    if-eqz v1, :cond_2

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/l$e;->setPosition(I)V

    :cond_2
    iget-object v1, p0, Landroidx/appcompat/app/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, p1

    :goto_1
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Landroidx/appcompat/app/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/app/l$e;

    invoke-virtual {v3, v2}, Landroidx/appcompat/app/l$e;->setPosition(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-ne v0, p1, :cond_5

    iget-object v0, p0, Landroidx/appcompat/app/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/app/l;->j:Ljava/util/ArrayList;

    const/4 v1, 0x0

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/ActionBar$d;

    :goto_2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l;->selectTab(Landroidx/appcompat/app/ActionBar$d;)V

    :cond_5
    return-void
.end method

.method public requestFocus()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0}, Landroidx/appcompat/widget/i0;->o()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public selectTab(Landroidx/appcompat/app/ActionBar$d;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/app/l;->getNavigationMode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar$d;->getPosition()I

    move-result v1

    :cond_0
    iput v1, p0, Landroidx/appcompat/app/l;->l:I

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/l;->c:Landroid/app/Activity;

    instance-of v0, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0}, Landroidx/appcompat/widget/i0;->o()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/l;->c:Landroid/app/Activity;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->q()Landroidx/fragment/app/s;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/app/l;->k:Landroidx/appcompat/app/l$e;

    if-ne v2, p1, :cond_3

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroidx/appcompat/app/l$e;->getCallback()Landroidx/appcompat/app/ActionBar$e;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/app/l;->k:Landroidx/appcompat/app/l$e;

    invoke-interface {v1, v2, v0}, Landroidx/appcompat/app/ActionBar$e;->onTabReselected(Landroidx/appcompat/app/ActionBar$d;Landroidx/fragment/app/s;)V

    iget-object v1, p0, Landroidx/appcompat/app/l;->i:Landroidx/appcompat/widget/y0;

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar$d;->getPosition()I

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/y0;->c(I)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroidx/appcompat/app/l;->i:Landroidx/appcompat/widget/y0;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar$d;->getPosition()I

    move-result v1

    :cond_4
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/y0;->setTabSelected(I)V

    iget-object v1, p0, Landroidx/appcompat/app/l;->k:Landroidx/appcompat/app/l$e;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/appcompat/app/l$e;->getCallback()Landroidx/appcompat/app/ActionBar$e;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/app/l;->k:Landroidx/appcompat/app/l$e;

    invoke-interface {v1, v2, v0}, Landroidx/appcompat/app/ActionBar$e;->onTabUnselected(Landroidx/appcompat/app/ActionBar$d;Landroidx/fragment/app/s;)V

    :cond_5
    check-cast p1, Landroidx/appcompat/app/l$e;

    iput-object p1, p0, Landroidx/appcompat/app/l;->k:Landroidx/appcompat/app/l$e;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroidx/appcompat/app/l$e;->getCallback()Landroidx/appcompat/app/ActionBar$e;

    move-result-object p1

    iget-object v1, p0, Landroidx/appcompat/app/l;->k:Landroidx/appcompat/app/l$e;

    invoke-interface {p1, v1, v0}, Landroidx/appcompat/app/ActionBar$e;->onTabSelected(Landroidx/appcompat/app/ActionBar$d;Landroidx/fragment/app/s;)V

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/fragment/app/s;->t()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v0}, Landroidx/fragment/app/s;->k()I

    :cond_7
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomView(I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/app/l;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v1}, Landroidx/appcompat/widget/i0;->o()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/i0;->F(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroidx/appcompat/app/ActionBar$a;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {p2, p1}, Landroidx/appcompat/widget/i0;->F(Landroid/view/View;)V

    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->m:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/l;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->m:Z

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/i0;->h(I)V

    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0}, Landroidx/appcompat/widget/i0;->E()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/app/l;->m:Z

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {v1, p1}, Landroidx/appcompat/widget/i0;->h(I)V

    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 1

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/l;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/l;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/l;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/l;->setDisplayOptions(II)V

    return-void
.end method

.method public setElevation(F)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->x0(Landroid/view/View;F)V

    return-void
.end method

.method public setHideOffset(I)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroidx/appcompat/app/l;->B:Z

    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/i0;->r(I)V

    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/i0;->i(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/i0;->A(I)V

    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/i0;->H(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/i0;->p(Z)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/i0;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/i0;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroidx/appcompat/app/ActionBar$c;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    new-instance v1, Landroidx/appcompat/app/h;

    invoke-direct {v1, p2}, Landroidx/appcompat/app/h;-><init>(Landroidx/appcompat/app/ActionBar$c;)V

    invoke-interface {v0, p1, v1}, Landroidx/appcompat/widget/i0;->C(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setLogo(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/i0;->z(I)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/i0;->y(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationMode(I)V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0}, Landroidx/appcompat/widget/i0;->l()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/l;->getSelectedNavigationIndex()I

    move-result v2

    iput v2, p0, Landroidx/appcompat/app/l;->l:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/l;->selectTab(Landroidx/appcompat/app/ActionBar$d;)V

    iget-object v2, p0, Landroidx/appcompat/app/l;->i:Landroidx/appcompat/widget/y0;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-eq v0, p1, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->s:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->m0(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/i0;->n(I)V

    const/4 v0, 0x0

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Landroidx/appcompat/app/l;->ensureTabsExist()V

    iget-object v2, p0, Landroidx/appcompat/app/l;->i:Landroidx/appcompat/widget/y0;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget v2, p0, Landroidx/appcompat/app/l;->l:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/l;->setSelectedNavigationItem(I)V

    iput v3, p0, Landroidx/appcompat/app/l;->l:I

    :cond_3
    :goto_1
    iget-object v2, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    const/4 v3, 0x1

    if-ne p1, v1, :cond_4

    iget-boolean v4, p0, Landroidx/appcompat/app/l;->s:Z

    if-nez v4, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v0

    :goto_2
    invoke-interface {v2, v4}, Landroidx/appcompat/widget/i0;->u(Z)V

    iget-object v2, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-ne p1, v1, :cond_5

    iget-boolean p1, p0, Landroidx/appcompat/app/l;->s:Z

    if-nez p1, :cond_5

    move v0, v3

    :cond_5
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0}, Landroidx/appcompat/widget/i0;->l()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/ActionBar$d;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l;->selectTab(Landroidx/appcompat/app/ActionBar$d;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/i0;->k(I)V

    :goto_0
    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/app/l;->A:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/l;->z:Landroidx/appcompat/view/h;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/h;->a()V

    :cond_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/i0;->j(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/i0;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/widget/i0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/i0;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->v:Z

    invoke-direct {p0, v0}, Landroidx/appcompat/app/l;->updateVisibility(Z)V

    :cond_0
    return-void
.end method

.method public startActionMode(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/app/l$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/l$d;->a()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v0, p0, Landroidx/appcompat/app/l;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->k()V

    new-instance v0, Landroidx/appcompat/app/l$d;

    iget-object v1, p0, Landroidx/appcompat/app/l;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroidx/appcompat/app/l$d;-><init>(Landroidx/appcompat/app/l;Landroid/content/Context;Landroidx/appcompat/view/b$a;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/l$d;->r()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v0, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/app/l$d;

    invoke-virtual {v0}, Landroidx/appcompat/app/l$d;->i()V

    iget-object p1, p0, Landroidx/appcompat/app/l;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->h(Landroidx/appcompat/view/b;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l;->animateToMode(Z)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
