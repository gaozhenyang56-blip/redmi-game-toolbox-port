.class Lcom/miui/optimizemanage/view/b$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizemanage/view/b;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizemanage/view/b;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/view/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/view/b$a;->a:Lcom/miui/optimizemanage/view/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/optimizemanage/view/b$a;->a:Lcom/miui/optimizemanage/view/b;

    invoke-static {p1}, Lcom/miui/optimizemanage/view/b;->b(Lcom/miui/optimizemanage/view/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/optimizemanage/view/b$a;->a:Lcom/miui/optimizemanage/view/b;

    invoke-static {p1}, Lcom/miui/optimizemanage/view/b;->d(Lcom/miui/optimizemanage/view/b;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method
