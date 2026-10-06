.class Lcom/miui/securityscan/ui/main/MainContentFrameLite$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/ui/main/MainContentFrameLite;->setStatusBottomText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/ui/main/MainContentFrameLite;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite$c;->a:Lcom/miui/securityscan/ui/main/MainContentFrameLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite$c;->a:Lcom/miui/securityscan/ui/main/MainContentFrameLite;

    invoke-static {v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->y(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite$c;->a:Lcom/miui/securityscan/ui/main/MainContentFrameLite;

    invoke-static {v1}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->y(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite$c;->a:Lcom/miui/securityscan/ui/main/MainContentFrameLite;

    invoke-static {v2}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->z(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/securityscan/MainActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite$c;->a:Lcom/miui/securityscan/ui/main/MainContentFrameLite;

    invoke-static {v2}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->z(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/miui/securityscan/MainActivity;

    div-int v0, v1, v0

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/miui/securityscan/MainActivity;->H0(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite$c;->a:Lcom/miui/securityscan/ui/main/MainContentFrameLite;

    invoke-static {v2}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->z(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/securityscan/OptimizeAndResultActivity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite$c;->a:Lcom/miui/securityscan/ui/main/MainContentFrameLite;

    invoke-static {v2}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->z(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/miui/securityscan/OptimizeAndResultActivity;

    div-int v0, v1, v0

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/miui/securityscan/OptimizeAndResultActivity;->X0(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite$c;->a:Lcom/miui/securityscan/ui/main/MainContentFrameLite;

    invoke-static {v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->y(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
