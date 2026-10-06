.class Lcom/miui/powercenter/batteryhistory/x$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/batteryhistory/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/x;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/x;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/x$c;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 5

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/x$c;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/x;->e(Lcom/miui/powercenter/batteryhistory/x;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/x$c;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/x;->e(Lcom/miui/powercenter/batteryhistory/x;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v1

    invoke-static {v1}, Lme/u;->b(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/x$c;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/x;->o(Lcom/miui/powercenter/batteryhistory/x;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/x$c;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/x;->e(Lcom/miui/powercenter/batteryhistory/x;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f071705

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    const v3, 0x800053

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/x$c;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {v3}, Lcom/miui/powercenter/batteryhistory/x;->e(Lcom/miui/powercenter/batteryhistory/x;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060bbf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/x$c;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {v3}, Lcom/miui/powercenter/batteryhistory/x;->e(Lcom/miui/powercenter/batteryhistory/x;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071766

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/x$c;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {v3}, Lcom/miui/powercenter/batteryhistory/x;->e(Lcom/miui/powercenter/batteryhistory/x;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v3

    invoke-static {v3}, Lme/c0;->b(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/view/View;->setTextAlignment(I)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method
