.class Lcom/miui/networkassistant/ui/view/LoadingButton$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/view/LoadingButton;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/view/LoadingButton;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/view/LoadingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton$1;->this$0:Lcom/miui/networkassistant/ui/view/LoadingButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton$1;->this$0:Lcom/miui/networkassistant/ui/view/LoadingButton;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton$1;->this$0:Lcom/miui/networkassistant/ui/view/LoadingButton;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/view/LoadingButton;->access$000(Lcom/miui/networkassistant/ui/view/LoadingButton;)Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton$1;->this$0:Lcom/miui/networkassistant/ui/view/LoadingButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/view/LoadingButton;->access$102(Lcom/miui/networkassistant/ui/view/LoadingButton;I)I

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton$1;->this$0:Lcom/miui/networkassistant/ui/view/LoadingButton;

    invoke-static {}, Lcom/miui/networkassistant/ui/view/LoadingButton;->access$200()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/view/LoadingButton;->access$300(Lcom/miui/networkassistant/ui/view/LoadingButton;I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/LoadingButton$1;->this$0:Lcom/miui/networkassistant/ui/view/LoadingButton;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
