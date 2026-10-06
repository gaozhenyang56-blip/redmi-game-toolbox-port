.class Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity$a;->a:Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity$a;->a:Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;

    invoke-static {p2}, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->d0(Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;)Loe/a;

    move-result-object p2

    invoke-interface {p2, v0}, Loe/a;->j(Z)V

    iget-object p2, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity$a;->a:Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;

    invoke-static {p2, p1}, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->e0(Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity$a;->a:Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;

    invoke-static {p1, v0}, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->e0(Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;I)V

    :goto_1
    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity$a;->a:Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
