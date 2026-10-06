.class Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->H0()V
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

    iput-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$g;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$g;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->y0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$g;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->A0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$g;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {v0}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->A0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12132a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$g;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->h0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)I

    move-result p1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$g;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->A0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->O0(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$g;->a:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->A0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->i0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;Landroid/content/Context;)V

    :goto_0
    return-void
.end method
