.class Lcom/miui/securityscan/OptimizeAndResultActivity$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/common/customview/AutoPasteListView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/OptimizeAndResultActivity$j;->onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/OptimizeAndResultActivity$j;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/OptimizeAndResultActivity$j;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$j$a;->a:Lcom/miui/securityscan/OptimizeAndResultActivity$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$j$a;->a:Lcom/miui/securityscan/OptimizeAndResultActivity$j;

    iget-object v0, v0, Lcom/miui/securityscan/OptimizeAndResultActivity$j;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    iget v1, v0, Lcom/miui/securityscan/OptimizeAndResultActivity;->z:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    invoke-static {v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->s0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lqf/c;->f0()V

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$j$a;->a:Lcom/miui/securityscan/OptimizeAndResultActivity$j;

    iget-object v0, v0, Lcom/miui/securityscan/OptimizeAndResultActivity$j;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-static {v0, v2}, Lcom/miui/securityscan/OptimizeAndResultActivity;->t0(Lcom/miui/securityscan/OptimizeAndResultActivity;Z)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/securityscan/OptimizeAndResultActivity;->t0(Lcom/miui/securityscan/OptimizeAndResultActivity;Z)Z

    :goto_0
    const v0, -0x40666666    # -1.2f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$j$a;->a:Lcom/miui/securityscan/OptimizeAndResultActivity$j;

    iget-object v0, v0, Lcom/miui/securityscan/OptimizeAndResultActivity$j;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-static {v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->u0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lwf/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lwf/a;->setContentFrameAlpha(F)V

    return-void
.end method
