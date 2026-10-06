.class Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field final synthetic d:Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;->d:Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;->a:I

    iput p1, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;->b:I

    iput p1, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;->c:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;->d:Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;->d:Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->j(Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;)Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;->d:Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->k(Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit16 v0, v0, 0x7d0

    iput v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;->c:I

    iget v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;->b:I

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;->d:Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;

    invoke-static {v1}, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->k(Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;)I

    move-result v1

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;->a:I

    iget v1, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;->c:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;->b:I

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;->d:Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->m(Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;->b:I

    int-to-float v1, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;->d:Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;

    invoke-static {v3}, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->k(Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;->d:Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;

    invoke-static {v4}, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->l(Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;->d:Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;->b:I

    iput v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;->a:I

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;->d:Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->j(Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;)Lcom/miui/gamebooster/videobox/view/VideoEffectImageView$a;

    move-result-object v1

    const-wide/16 v2, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
