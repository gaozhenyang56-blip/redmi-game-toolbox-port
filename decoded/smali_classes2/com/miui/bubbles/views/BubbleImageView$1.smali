.class Lcom/miui/bubbles/views/BubbleImageView$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/bubbles/views/BubbleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/bubbles/views/BubbleImageView;


# direct methods
.method constructor <init>(Lcom/miui/bubbles/views/BubbleImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/views/BubbleImageView$1;->this$0:Lcom/miui/bubbles/views/BubbleImageView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleImageView$1;->this$0:Lcom/miui/bubbles/views/BubbleImageView;

    invoke-static {v0}, Lcom/miui/bubbles/views/BubbleImageView;->access$000(Lcom/miui/bubbles/views/BubbleImageView;)F

    move-result v0

    float-to-int v2, v0

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleImageView$1;->this$0:Lcom/miui/bubbles/views/BubbleImageView;

    invoke-static {v0}, Lcom/miui/bubbles/views/BubbleImageView;->access$100(Lcom/miui/bubbles/views/BubbleImageView;)F

    move-result v0

    float-to-int v3, v0

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleImageView$1;->this$0:Lcom/miui/bubbles/views/BubbleImageView;

    invoke-static {v0}, Lcom/miui/bubbles/views/BubbleImageView;->access$000(Lcom/miui/bubbles/views/BubbleImageView;)F

    move-result v0

    iget-object v1, p0, Lcom/miui/bubbles/views/BubbleImageView$1;->this$0:Lcom/miui/bubbles/views/BubbleImageView;

    iget v1, v1, Lcom/miui/bubbles/views/BubbleImageView;->mScaledWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v4, v0

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleImageView$1;->this$0:Lcom/miui/bubbles/views/BubbleImageView;

    invoke-static {v0}, Lcom/miui/bubbles/views/BubbleImageView;->access$100(Lcom/miui/bubbles/views/BubbleImageView;)F

    move-result v0

    iget-object v1, p0, Lcom/miui/bubbles/views/BubbleImageView$1;->this$0:Lcom/miui/bubbles/views/BubbleImageView;

    iget v1, v1, Lcom/miui/bubbles/views/BubbleImageView;->mScaledHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    float-to-int v5, v0

    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleImageView$1;->this$0:Lcom/miui/bubbles/views/BubbleImageView;

    iget v6, p1, Lcom/miui/bubbles/views/BubbleImageView;->mBubbleCornerRadius:F

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
