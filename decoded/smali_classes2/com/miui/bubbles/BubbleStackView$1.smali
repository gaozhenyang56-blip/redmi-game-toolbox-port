.class Lcom/miui/bubbles/BubbleStackView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


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

    iput-object p1, p0, Lcom/miui/bubbles/BubbleStackView$1;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView$1;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/bubbles/BubbleStackView$1;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-static {v1}, Lcom/miui/bubbles/BubbleStackView;->access$000(Lcom/miui/bubbles/BubbleStackView;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView$1;->this$0:Lcom/miui/bubbles/BubbleStackView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/bubbles/BubbleStackView;->access$102(Lcom/miui/bubbles/BubbleStackView;Z)Z

    return v1
.end method
