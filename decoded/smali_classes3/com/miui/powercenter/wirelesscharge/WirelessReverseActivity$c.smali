.class Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$c;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$c;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$c;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {v0}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->e0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->g0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->s0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;I)V

    return-void
.end method
