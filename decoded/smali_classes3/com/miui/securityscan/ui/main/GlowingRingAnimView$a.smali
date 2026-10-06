.class Lcom/miui/securityscan/ui/main/GlowingRingAnimView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/ui/main/GlowingRingAnimView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView$a;->b:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView$a;->a:Z

    return-void
.end method

.method public static synthetic a(Lcom/miui/securityscan/ui/main/GlowingRingAnimView$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView$a;->c()V

    return-void
.end method

.method public static synthetic b(Lcom/miui/securityscan/ui/main/GlowingRingAnimView$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView$a;->d()V

    return-void
.end method

.method private synthetic c()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView$a;->b:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    invoke-static {v0}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->c(Lcom/miui/securityscan/ui/main/GlowingRingAnimView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView$a;->b:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->d(Lcom/miui/securityscan/ui/main/GlowingRingAnimView;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView$a;->b:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->n()V

    :goto_0
    return-void
.end method

.method private synthetic d()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView$a;->b:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    invoke-static {v0}, Lcom/miui/securityscan/ui/main/GlowingRingAnimView;->b(Lcom/miui/securityscan/ui/main/GlowingRingAnimView;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView$a;->b:Lcom/miui/securityscan/ui/main/GlowingRingAnimView;

    new-instance v1, Lcom/miui/securityscan/ui/main/f;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/ui/main/f;-><init>(Lcom/miui/securityscan/ui/main/GlowingRingAnimView$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView$a;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/GlowingRingAnimView$a;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    new-instance p1, Lcom/miui/securityscan/ui/main/e;

    invoke-direct {p1, p0}, Lcom/miui/securityscan/ui/main/e;-><init>(Lcom/miui/securityscan/ui/main/GlowingRingAnimView$a;)V

    invoke-static {p1}, Lmiuix/animation/internal/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
