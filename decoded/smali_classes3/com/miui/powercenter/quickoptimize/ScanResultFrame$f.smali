.class Lcom/miui/powercenter/quickoptimize/ScanResultFrame$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$f;->a:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

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

    const-string p1, "ScanResultFrame"

    const-string v0, "animation header view end"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$f;->a:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-static {p1}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->g(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$f;->a:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-static {p1}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->h(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)Lfe/j;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lfe/j;->w(Z)V

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
