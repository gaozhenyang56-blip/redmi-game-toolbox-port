.class Lcom/miui/antivirus/ui/MainActivityView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/ui/MainActivityView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/ui/MainActivityView;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/ui/MainActivityView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/MainActivityView$a;->a:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainActivityView$a;->a:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-static {p1}, Lcom/miui/antivirus/ui/MainActivityView;->b(Lcom/miui/antivirus/ui/MainActivityView;)Lcom/miui/antivirus/ui/MainHandleBar;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainActivityView$a;->a:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-static {p1}, Lcom/miui/antivirus/ui/MainActivityView;->a(Lcom/miui/antivirus/ui/MainActivityView;)Lw4/e;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
