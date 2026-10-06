.class public Lcom/miui/luckymoney/ui/view/MessageViewUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeMessageView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static showMessageView(Landroid/view/View;III)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    if-nez p3, :cond_0

    const/16 p3, 0x7da

    :cond_0
    iput p3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p3, -0x3

    iput p3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 p3, 0x520

    iput p3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 p3, 0x31

    iput p3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {}, Lx4/a0;->x()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "status_bar_height"

    const-string p3, "dimen"

    const-string v3, "android"

    invoke-virtual {p1, p2, p3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {v1, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_3
    invoke-interface {v1, p0, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static showMoneyMessageView(Landroid/view/View;III)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    if-nez p3, :cond_0

    const/16 p3, 0x7da

    :cond_0
    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p3, -0x3

    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 p3, 0x520

    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 p3, 0x31

    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {v0, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-interface {v0, p0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
