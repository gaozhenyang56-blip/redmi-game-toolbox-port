.class Lcom/miui/bubbles/BubbleStackView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/bubbles/BubbleStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/bubbles/BubbleStackView;


# direct methods
.method constructor <init>(Lcom/miui/bubbles/BubbleStackView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/BubbleStackView$2;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/bubbles/BubbleStackView$2;Lcom/miui/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/BubbleStackView$2;->lambda$onClick$0(Lcom/miui/bubbles/Bubble;)V

    return-void
.end method

.method private synthetic lambda$onClick$0(Lcom/miui/bubbles/Bubble;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView$2;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-static {v0, p1}, Lcom/miui/bubbles/BubbleStackView;->access$400(Lcom/miui/bubbles/BubbleStackView;Lcom/miui/bubbles/Bubble;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView$2;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/miui/bubbles/BubbleStackView;->access$200(Lcom/miui/bubbles/BubbleStackView;)Lcom/miui/bubbles/BubbleData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/bubbles/BubbleData;->getBubbleWithView(Landroid/view/View;)Lcom/miui/bubbles/Bubble;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiBubbles.BSV"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v4

    invoke-virtual {v1, v3, v4, v5, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget p1, v0, Lcom/miui/bubbles/Bubble;->stackId:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, p1, v4, v4, v3}, Lmiui/app/MiuiFreeFormManager;->unPinFloatingWindow(Landroid/graphics/Rect;IFFZ)Z

    move-result p1

    invoke-virtual {v0}, Lcom/miui/bubbles/Bubble;->getIconView()Lcom/miui/bubbles/views/BubbleImageView;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/bubbles/animation/BubbleAnimator;->resetEdgeAlpha(Landroid/view/View;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/bubbles/BubbleStackView$2;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/miui/bubbles/BubbleStackView;->access$300(Lcom/miui/bubbles/BubbleStackView;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/miui/bubbles/q;

    invoke-direct {v1, p0, v0}, Lcom/miui/bubbles/q;-><init>(Lcom/miui/bubbles/BubbleStackView$2;Lcom/miui/bubbles/Bubble;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: change mode failed, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/miui/bubbles/Bubble;->getIconView()Lcom/miui/bubbles/views/BubbleImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView$2;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/miui/bubbles/BubbleStackView;->access$300(Lcom/miui/bubbles/BubbleStackView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/bubbles/views/BubbleImageView;->postReduceAlphaTask(Landroid/os/Handler;)V

    :goto_0
    return-void
.end method
