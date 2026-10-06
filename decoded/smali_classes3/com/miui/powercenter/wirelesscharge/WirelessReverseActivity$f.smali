.class Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$f;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->G0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$f;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/high16 p2, 0x10000

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$f;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->x0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$f;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    const v0, 0x7f120dd7

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$f;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {v4}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->e0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    const v0, 0x8000

    if-ne p2, v0, :cond_0

    const/high16 p2, 0x10000

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x800

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method
