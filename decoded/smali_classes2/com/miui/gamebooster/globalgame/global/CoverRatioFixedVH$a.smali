.class Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;->custom(Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH$a;->b:Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;

    iput p2, p0, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH$a;->b:Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;

    invoke-static {v0}, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;->access$000(Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH$a;->b:Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;->access$002(Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;Z)Z

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH$a;->b:Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;

    iget-object v0, v0, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;->cover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH$a;->a:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH$a;->b:Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;

    invoke-virtual {v2}, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;->parseRatio()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH$a;->b:Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;

    invoke-virtual {v1}, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;->keyForStore()Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    invoke-static {v1, v0}, Lc7/c;->L(Ljava/lang/String;F)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH$a;->b:Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;

    iget-object v0, v0, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;->cover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method
