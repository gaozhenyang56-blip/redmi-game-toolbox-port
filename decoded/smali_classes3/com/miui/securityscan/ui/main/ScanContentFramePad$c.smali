.class Lcom/miui/securityscan/ui/main/ScanContentFramePad$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/ui/main/ScanContentFramePad;->j()V
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

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad$c;->a:Lcom/miui/securityscan/ui/main/ScanContentFramePad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad$c;->a:Lcom/miui/securityscan/ui/main/ScanContentFramePad;

    const v0, 0x7f0b0987

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->w(Lcom/miui/securityscan/ui/main/ScanContentFramePad;Landroid/view/View;)Landroid/view/View;

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad$c;->a:Lcom/miui/securityscan/ui/main/ScanContentFramePad;

    const v0, 0x7f0b097f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->y(Lcom/miui/securityscan/ui/main/ScanContentFramePad;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad$c;->a:Lcom/miui/securityscan/ui/main/ScanContentFramePad;

    const v0, 0x7f0b0986

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/ScoreTextView;

    invoke-static {p1, v0}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->A(Lcom/miui/securityscan/ui/main/ScanContentFramePad;Lcom/miui/common/customview/ScoreTextView;)Lcom/miui/common/customview/ScoreTextView;

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad$c;->a:Lcom/miui/securityscan/ui/main/ScanContentFramePad;

    const v0, 0x7f0b0afd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->C(Lcom/miui/securityscan/ui/main/ScanContentFramePad;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad$c;->a:Lcom/miui/securityscan/ui/main/ScanContentFramePad;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->D(Lcom/miui/securityscan/ui/main/ScanContentFramePad;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad$c;->a:Lcom/miui/securityscan/ui/main/ScanContentFramePad;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->x(Lcom/miui/securityscan/ui/main/ScanContentFramePad;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p2, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad$c;->a:Lcom/miui/securityscan/ui/main/ScanContentFramePad;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f071a5e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object p2, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad$c;->a:Lcom/miui/securityscan/ui/main/ScanContentFramePad;

    invoke-static {p2}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->x(Lcom/miui/securityscan/ui/main/ScanContentFramePad;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad$c;->a:Lcom/miui/securityscan/ui/main/ScanContentFramePad;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->z(Lcom/miui/securityscan/ui/main/ScanContentFramePad;)Lcom/miui/common/customview/ScoreTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p2, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad$c;->a:Lcom/miui/securityscan/ui/main/ScanContentFramePad;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f071a61

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object p2, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad$c;->a:Lcom/miui/securityscan/ui/main/ScanContentFramePad;

    invoke-static {p2}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->z(Lcom/miui/securityscan/ui/main/ScanContentFramePad;)Lcom/miui/common/customview/ScoreTextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad$c;->a:Lcom/miui/securityscan/ui/main/ScanContentFramePad;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->B(Lcom/miui/securityscan/ui/main/ScanContentFramePad;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p2, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad$c;->a:Lcom/miui/securityscan/ui/main/ScanContentFramePad;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f071b52

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object p2, p0, Lcom/miui/securityscan/ui/main/ScanContentFramePad$c;->a:Lcom/miui/securityscan/ui/main/ScanContentFramePad;

    invoke-static {p2}, Lcom/miui/securityscan/ui/main/ScanContentFramePad;->B(Lcom/miui/securityscan/ui/main/ScanContentFramePad;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
