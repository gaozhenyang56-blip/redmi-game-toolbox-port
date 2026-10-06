.class Lcom/miui/powercenter/quickoptimize/ScanResultFrame$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfe/g;

.field final synthetic b:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;Lfe/g;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$h;->b:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    iput-object p2, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$h;->a:Lfe/g;

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

    iget-object p1, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$h;->b:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/ScanResultFrame$h;->a:Lfe/g;

    invoke-static {p1, v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->j(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;Lfe/g;)V

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
