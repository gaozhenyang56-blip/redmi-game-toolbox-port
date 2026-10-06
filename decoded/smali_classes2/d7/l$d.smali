.class Ld7/l$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/l;->S(Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

.field final synthetic c:Landroid/view/WindowManager;

.field final synthetic d:Ld7/l;


# direct methods
.method constructor <init>(Ld7/l;Landroid/view/View;Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;)V
    .locals 0

    iput-object p1, p0, Ld7/l$d;->d:Ld7/l;

    iput-object p2, p0, Ld7/l$d;->a:Landroid/view/View;

    iput-object p3, p0, Ld7/l$d;->b:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    iput-object p4, p0, Ld7/l$d;->c:Landroid/view/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ld7/l$d;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ld7/l$d;->e(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Ld7/l$d;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld7/l$d;->d(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Ld7/l$d;Landroid/view/View;Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Ld7/l$d;->f(Landroid/view/View;Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;ZZ)V

    return-void
.end method

.method private synthetic d(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Ld7/l$d;->d:Ld7/l;

    invoke-static {p2}, Ld7/l;->v(Ld7/l;)V

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    return-void
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Ld7/l$d;->d:Ld7/l;

    invoke-static {p1}, Ld7/l;->v(Ld7/l;)V

    return-void
.end method

.method private synthetic f(Landroid/view/View;Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;ZZ)V
    .locals 8

    if-nez p4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p4

    if-nez p4, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 p4, 0x2

    new-array p4, p4, [I

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onGlobalLayout: LocationInWindow "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget v1, p4, v0

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget v2, p4, v1

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v2, "GTGuideManager"

    invoke-static {v2, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p5, p0, Ld7/l$d;->d:Ld7/l;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0e01eb

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/gamebooster/widget/GtbTipsView;

    invoke-static {p5, p2}, Ld7/l;->r(Ld7/l;Lcom/miui/gamebooster/widget/GtbTipsView;)Lcom/miui/gamebooster/widget/GtbTipsView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object p5, p0, Ld7/l$d;->d:Ld7/l;

    invoke-static {p5}, Ld7/l;->q(Ld7/l;)Lcom/miui/gamebooster/widget/GtbTipsView;

    move-result-object v2

    aget p5, p4, v0

    const v0, 0x7f070e16

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int v4, p5, v0

    aget p4, p4, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p5

    sub-int/2addr p4, p5

    const p5, 0x7f070e17

    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    add-int v5, p4, p5

    const p4, 0x7f070e15

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const p4, 0x7f070e14

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/miui/gamebooster/widget/GtbTipsView;->g(Landroid/view/View;IIII)V

    iget-object p2, p0, Ld7/l$d;->d:Ld7/l;

    invoke-static {p2}, Ld7/l;->q(Ld7/l;)Lcom/miui/gamebooster/widget/GtbTipsView;

    move-result-object p4

    invoke-static {p2, p4}, Ld7/l;->s(Ld7/l;Landroid/view/View;)V

    iget-object p2, p0, Ld7/l$d;->d:Ld7/l;

    invoke-static {p2}, Ld7/l;->q(Ld7/l;)Lcom/miui/gamebooster/widget/GtbTipsView;

    move-result-object p2

    const p4, 0x7f0b061d

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p4, Ld7/n;

    invoke-direct {p4, p0, p1}, Ld7/n;-><init>(Ld7/l$d;Landroid/view/View;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Ld7/l$d;->d:Ld7/l;

    invoke-static {p1}, Ld7/l;->q(Ld7/l;)Lcom/miui/gamebooster/widget/GtbTipsView;

    move-result-object p1

    new-instance p2, Ld7/o;

    invoke-direct {p2, p0}, Ld7/o;-><init>(Ld7/l$d;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Ld7/l$d;->d:Ld7/l;

    invoke-static {p1}, Ld7/l;->q(Ld7/l;)Lcom/miui/gamebooster/widget/GtbTipsView;

    move-result-object p1

    iget-object p2, p0, Ld7/l$d;->d:Ld7/l;

    invoke-static {p2}, Ld7/l;->t(Ld7/l;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Ld7/l$d;->d:Ld7/l;

    invoke-static {p1, v1}, Ld7/l;->u(Ld7/l;Z)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    iget-object v0, p0, Ld7/l$d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lh7/g;->l()Lh7/g;

    move-result-object v0

    iget-object v1, p0, Ld7/l$d;->a:Landroid/view/View;

    iget-object v2, p0, Ld7/l$d;->b:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    iget-object v3, p0, Ld7/l$d;->c:Landroid/view/WindowManager;

    new-instance v4, Ld7/m;

    invoke-direct {v4, p0, v1, v2, v3}, Ld7/m;-><init>(Ld7/l$d;Landroid/view/View;Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;)V

    invoke-virtual {v0, v4}, Lh7/g;->m(Lh7/g$b;)V

    return-void
.end method
