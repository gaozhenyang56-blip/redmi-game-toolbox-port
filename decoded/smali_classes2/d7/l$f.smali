.class Ld7/l$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/l;->V(Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/View;Landroid/view/WindowManager;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Z

.field final synthetic e:Landroid/view/WindowManager;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ld7/l;


# direct methods
.method constructor <init>(Ld7/l;Landroid/view/View;Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/content/Context;ZLandroid/view/WindowManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ld7/l$f;->g:Ld7/l;

    iput-object p2, p0, Ld7/l$f;->a:Landroid/view/View;

    iput-object p3, p0, Ld7/l$f;->b:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    iput-object p4, p0, Ld7/l$f;->c:Landroid/content/Context;

    iput-boolean p5, p0, Ld7/l$f;->d:Z

    iput-object p6, p0, Ld7/l$f;->e:Landroid/view/WindowManager;

    iput-object p7, p0, Ld7/l$f;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ld7/l$f;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld7/l$f;->d(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Ld7/l$f;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ld7/l$f;->c(Landroid/view/View;)V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Ld7/l$f;->g:Ld7/l;

    invoke-static {p1}, Ld7/l;->v(Ld7/l;)V

    return-void
.end method

.method private synthetic d(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Ld7/l$f;->g:Ld7/l;

    invoke-static {p2}, Ld7/l;->v(Ld7/l;)V

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Ld7/l$f;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Ld7/l$f;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Ld7/l$f;->b:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Ld7/l$f;->g:Ld7/l;

    iget-object v1, p0, Ld7/l$f;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0232

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/widget/GtbTipsView;

    invoke-static {v0, v1}, Ld7/l;->r(Ld7/l;Lcom/miui/gamebooster/widget/GtbTipsView;)Lcom/miui/gamebooster/widget/GtbTipsView;

    iget-object v0, p0, Ld7/l$f;->g:Ld7/l;

    invoke-static {v0}, Ld7/l;->q(Ld7/l;)Lcom/miui/gamebooster/widget/GtbTipsView;

    move-result-object v0

    const v1, 0x7f0b0c70

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ld7/s;

    invoke-direct {v1, p0}, Ld7/s;-><init>(Ld7/l$f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Ld7/l$f;->g:Ld7/l;

    invoke-static {v1}, Ld7/l;->g(Ld7/l;)Ld7/v;

    move-result-object v1

    instance-of v1, v1, Ld7/u;

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ld7/l$f;->c:Landroid/content/Context;

    const v1, 0x7f120a49

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ld7/l$f;->g:Ld7/l;

    invoke-static {v1}, Ld7/l;->q(Ld7/l;)Lcom/miui/gamebooster/widget/GtbTipsView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/widget/GtbTipsView;->l(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lp7/a;->b()Lp7/a;

    move-result-object v0

    invoke-virtual {v0}, Lp7/a;->e()Z

    move-result v0

    iget-object v1, p0, Ld7/l$f;->g:Ld7/l;

    invoke-static {v1}, Ld7/l;->g(Ld7/l;)Ld7/v;

    move-result-object v1

    instance-of v1, v1, Ld7/x;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ld7/l$f;->g:Ld7/l;

    invoke-static {v1}, Ld7/l;->q(Ld7/l;)Lcom/miui/gamebooster/widget/GtbTipsView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/widget/GtbTipsView;->f(Z)V

    :cond_2
    iget-object v1, p0, Ld7/l$f;->g:Ld7/l;

    invoke-static {v1}, Ld7/l;->q(Ld7/l;)Lcom/miui/gamebooster/widget/GtbTipsView;

    move-result-object v1

    iget-object v2, p0, Ld7/l$f;->a:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/miui/gamebooster/widget/GtbTipsView;->h(Landroid/view/View;Z)V

    iget-object v0, p0, Ld7/l$f;->g:Ld7/l;

    invoke-static {v0}, Ld7/l;->q(Ld7/l;)Lcom/miui/gamebooster/widget/GtbTipsView;

    move-result-object v1

    invoke-static {v0, v1}, Ld7/l;->s(Ld7/l;Landroid/view/View;)V

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Ld7/l$f;->g:Ld7/l;

    invoke-static {v0}, Ld7/l;->g(Ld7/l;)Ld7/v;

    move-result-object v0

    instance-of v0, v0, Ld7/y;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Ld7/l$f;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ld7/l$f;->g:Ld7/l;

    iget-object v1, p0, Ld7/l$f;->b:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    iget-object v2, p0, Ld7/l$f;->e:Landroid/view/WindowManager;

    invoke-static {v0, v1, v2}, Ld7/l;->l(Ld7/l;Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ld7/l$f;->g:Ld7/l;

    iget-object v1, p0, Ld7/l$f;->b:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    invoke-static {v0, v1}, Ld7/l;->m(Ld7/l;Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Ld7/l$f;->g:Ld7/l;

    invoke-static {v0}, Ld7/l;->q(Ld7/l;)Lcom/miui/gamebooster/widget/GtbTipsView;

    move-result-object v0

    new-instance v1, Ld7/l$f$a;

    invoke-direct {v1, p0}, Ld7/l$f$a;-><init>(Ld7/l$f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v0, p0, Ld7/l$f;->e:Landroid/view/WindowManager;

    iget-object v1, p0, Ld7/l$f;->g:Ld7/l;

    invoke-static {v1}, Ld7/l;->q(Ld7/l;)Lcom/miui/gamebooster/widget/GtbTipsView;

    move-result-object v1

    iget-object v2, p0, Ld7/l$f;->g:Ld7/l;

    invoke-static {v2}, Ld7/l;->t(Ld7/l;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Ld7/l$f;->g:Ld7/l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ld7/l;->u(Ld7/l;Z)Z

    iget-object v0, p0, Ld7/l$f;->g:Ld7/l;

    invoke-static {v0}, Ld7/l;->g(Ld7/l;)Ld7/v;

    move-result-object v0

    instance-of v0, v0, Ld7/u;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ld7/l$f;->g:Ld7/l;

    invoke-static {v0}, Ld7/l;->q(Ld7/l;)Lcom/miui/gamebooster/widget/GtbTipsView;

    move-result-object v0

    const v1, 0x7f0b061d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ld7/l$f;->a:Landroid/view/View;

    new-instance v2, Ld7/t;

    invoke-direct {v2, p0, v1}, Ld7/t;-><init>(Ld7/l$f;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void

    :cond_6
    :goto_1
    const-string v0, "GTGuideManager"

    const-string v1, "onGlobalLayout: targetView was removed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
