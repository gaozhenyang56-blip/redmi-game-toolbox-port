.class public abstract Landroidx/recyclerview/widget/SpringRecyclerView;
.super Landroidx/recyclerview/widget/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/SpringRecyclerView$a;,
        Landroidx/recyclerview/widget/SpringRecyclerView$b;,
        Landroidx/recyclerview/widget/SpringRecyclerView$d;,
        Landroidx/recyclerview/widget/SpringRecyclerView$c;
    }
.end annotation


# static fields
.field private static final q:Ljava/lang/reflect/Field;

.field private static final r:Ljava/lang/reflect/Field;

.field private static final s:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;


# instance fields
.field private g:Landroidx/recyclerview/widget/SpringRecyclerView$c;

.field private h:Landroidx/recyclerview/widget/SpringRecyclerView$d;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/spring/view/a;",
            ">;"
        }
    .end annotation
.end field

.field private m:F

.field private n:F

.field private o:I

.field private p:Lmiuix/spring/view/SpringHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "mViewFlinger"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->q:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "mScrollingChildHelper"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->r:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v0, Landroidx/recyclerview/widget/SpringRecyclerView$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView$b;-><init>(Landroidx/recyclerview/widget/SpringRecyclerView$1;)V

    sput-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->s:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Lv0/a;->a:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/SpringRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->l:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->m:F

    iput p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->n:F

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->o:I

    new-instance p2, Landroidx/recyclerview/widget/SpringRecyclerView$1;

    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/SpringRecyclerView$1;-><init>(Landroidx/recyclerview/widget/SpringRecyclerView;)V

    iput-object p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->p:Lmiuix/spring/view/SpringHelper;

    sget-boolean p2, Lsl/a;->a:Z

    iput-boolean p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->k:Z

    new-instance p2, Landroidx/recyclerview/widget/SpringRecyclerView$c;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Landroidx/recyclerview/widget/SpringRecyclerView$c;-><init>(Landroidx/recyclerview/widget/SpringRecyclerView;Landroidx/recyclerview/widget/SpringRecyclerView$1;)V

    iput-object p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->g:Landroidx/recyclerview/widget/SpringRecyclerView$c;

    new-instance p2, Landroidx/recyclerview/widget/SpringRecyclerView$d;

    invoke-direct {p2, p0, p0}, Landroidx/recyclerview/widget/SpringRecyclerView$d;-><init>(Landroidx/recyclerview/widget/SpringRecyclerView;Landroid/view/View;)V

    iput-object p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->h:Landroidx/recyclerview/widget/SpringRecyclerView$d;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isNestedScrollingEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/core/view/h0;->n(Z)V

    iget-object p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->g:Landroidx/recyclerview/widget/SpringRecyclerView$c;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/SpringRecyclerView;->y(Landroidx/recyclerview/widget/x$a;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->h:Landroidx/recyclerview/widget/SpringRecyclerView$d;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/SpringRecyclerView;->x(Landroidx/core/view/h0;)V

    iget-boolean p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->k:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/recyclerview/widget/SpringRecyclerView;->s:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    :goto_0
    return-void
.end method

.method static synthetic l(Landroidx/recyclerview/widget/SpringRecyclerView;)Lmiuix/spring/view/SpringHelper;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->p:Lmiuix/spring/view/SpringHelper;

    return-object p0
.end method

.method static synthetic m(Landroidx/recyclerview/widget/SpringRecyclerView;)Landroidx/recyclerview/widget/SpringRecyclerView$c;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->g:Landroidx/recyclerview/widget/SpringRecyclerView$c;

    return-object p0
.end method

.method static synthetic n(Landroidx/recyclerview/widget/SpringRecyclerView;)Z
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/SpringRecyclerView;->z()Z

    move-result p0

    return p0
.end method

.method static synthetic o(Landroidx/recyclerview/widget/SpringRecyclerView;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->i:Z

    return p0
.end method

.method static synthetic p(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->i:Z

    return p1
.end method

.method static synthetic q(Landroidx/recyclerview/widget/SpringRecyclerView;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->j:Z

    return p0
.end method

.method static synthetic r(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->j:Z

    return p1
.end method

.method static synthetic s(Landroidx/recyclerview/widget/SpringRecyclerView;F)F
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->m:F

    return p1
.end method

.method static synthetic t(Landroidx/recyclerview/widget/SpringRecyclerView;F)F
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->n:F

    return p1
.end method

.method static synthetic u(Landroidx/recyclerview/widget/SpringRecyclerView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->l:Ljava/util/List;

    return-object p0
.end method

.method static synthetic v(Landroidx/recyclerview/widget/SpringRecyclerView;)Landroidx/recyclerview/widget/SpringRecyclerView$d;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->h:Landroidx/recyclerview/widget/SpringRecyclerView$d;

    return-object p0
.end method

.method static synthetic w(Landroidx/recyclerview/widget/SpringRecyclerView;)I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->o:I

    return p0
.end method

.method private x(Landroidx/core/view/h0;)V
    .locals 1

    :try_start_0
    sget-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->r:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private y(Landroidx/recyclerview/widget/x$a;)V
    .locals 1

    :try_start_0
    sget-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->q:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private z()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView;->getSpringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->p:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {v0}, Lmiuix/spring/view/SpringHelper;->g()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->p:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {v1}, Lmiuix/spring/view/SpringHelper;->h()I

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_1
    return-void
.end method

.method public bridge synthetic getSpringEnabled()Z
    .locals 1

    invoke-super {p0}, Landroidx/recyclerview/widget/x;->getSpringEnabled()Z

    move-result v0

    return v0
.end method

.method public getSpringX()F
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->m:F

    return v0
.end method

.method public getSpringY()F
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->n:F

    return v0
.end method

.method protected h()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bridge synthetic onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/x;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/x;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onScrollStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    iput p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->o:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/SpringRecyclerView;->z()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    iget-boolean p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->i:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->j:Z

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->g:Landroidx/recyclerview/widget/SpringRecyclerView$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/x$a;->f()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->i:Z

    iput-boolean p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->j:Z

    iget-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->p:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {p1}, Lmiuix/spring/view/SpringHelper;->l()V

    :cond_2
    return-void
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/x;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->h:Landroidx/recyclerview/widget/SpringRecyclerView$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/core/view/h0;->n(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setOverScrollMode(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/x;->setOverScrollMode(I)V

    return-void
.end method

.method setScrollState(I)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->p:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {v0}, Lmiuix/spring/view/SpringHelper;->g()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->p:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {v1}, Lmiuix/spring/view/SpringHelper;->h()I

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->g:Landroidx/recyclerview/widget/SpringRecyclerView$c;

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView$c;->o(II)V

    return-void

    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method public setSpringEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->k:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/x;->setSpringEnabled(Z)V

    return-void
.end method
