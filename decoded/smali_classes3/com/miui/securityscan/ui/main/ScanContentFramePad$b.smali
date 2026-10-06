.class Lcom/miui/securityscan/ui/main/ScanContentFramePad$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/ui/main/ScanContentFramePad;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/ui/main/ScanContentFramePad;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/ui/main/ScanContentFramePad;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad$b;->a:Lcom/miui/securityscan/ui/main/ScanContentFramePad;

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

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad$b;->a:Lcom/miui/securityscan/ui/main/ScanContentFramePad;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->x(Lcom/miui/securityscan/ui/main/ScanContentFramePad;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

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
