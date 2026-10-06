.class Lcom/miui/gamebooster/windowmanager/newbox/e0$a;
.super La8/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/windowmanager/newbox/e0;->g(Landroid/view/View;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/miui/gamebooster/windowmanager/newbox/e0;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/windowmanager/newbox/e0;ZLandroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e0$a;->d:Lcom/miui/gamebooster/windowmanager/newbox/e0;

    iput-boolean p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/e0$a;->a:Z

    iput-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/e0$a;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/miui/gamebooster/windowmanager/newbox/e0$a;->c:Landroid/view/View;

    invoke-direct {p0}, La8/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e0$a;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e0$a;->d:Lcom/miui/gamebooster/windowmanager/newbox/e0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->a(Lcom/miui/gamebooster/windowmanager/newbox/e0;Z)Z

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e0$a;->a:Z

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e0$a;->c:Landroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e0$a;->d:Lcom/miui/gamebooster/windowmanager/newbox/e0;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->a(Lcom/miui/gamebooster/windowmanager/newbox/e0;Z)Z

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e0$a;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e0$a;->a:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e0$a;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/e0$a;->c:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
