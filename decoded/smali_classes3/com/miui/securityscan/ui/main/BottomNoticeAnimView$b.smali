.class Lcom/miui/securityscan/ui/main/BottomNoticeAnimView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView$b;->a:Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView$b;->a:Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->a(Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;Z)Z

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView$b;->a:Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->b(Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView$b;->a:Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->c(Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;I)I

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView$b;->a:Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->a(Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;Z)Z

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView$b;->a:Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->b(Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView$b;->a:Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->c(Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;I)I

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
