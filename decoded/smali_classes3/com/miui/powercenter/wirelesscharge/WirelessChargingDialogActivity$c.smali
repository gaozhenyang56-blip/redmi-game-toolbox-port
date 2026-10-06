.class Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity$c;->a:Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity$c;->a:Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;->e0(Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;I)V

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity$c;->a:Lcom/miui/powercenter/wirelesscharge/WirelessChargingDialogActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
