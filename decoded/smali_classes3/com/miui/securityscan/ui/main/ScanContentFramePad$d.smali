.class Lcom/miui/securityscan/ui/main/ScanContentFramePad$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/ui/main/ScanContentFramePad;->setStatusBottomText(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad$d;->a:Lcom/miui/securityscan/ui/main/ScanContentFramePad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad$d;->a:Lcom/miui/securityscan/ui/main/ScanContentFramePad;

    invoke-static {v0}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->B(Lcom/miui/securityscan/ui/main/ScanContentFramePad;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad$d;->a:Lcom/miui/securityscan/ui/main/ScanContentFramePad;

    invoke-static {v1}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->B(Lcom/miui/securityscan/ui/main/ScanContentFramePad;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad$d;->a:Lcom/miui/securityscan/ui/main/ScanContentFramePad;

    invoke-static {v2}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->E(Lcom/miui/securityscan/ui/main/ScanContentFramePad;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/miui/securityscan/OptimizeAndResultActivity;

    div-int v0, v1, v0

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/miui/securityscan/OptimizeAndResultActivity;->X0(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad$d;->a:Lcom/miui/securityscan/ui/main/ScanContentFramePad;

    invoke-static {v0}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->B(Lcom/miui/securityscan/ui/main/ScanContentFramePad;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
