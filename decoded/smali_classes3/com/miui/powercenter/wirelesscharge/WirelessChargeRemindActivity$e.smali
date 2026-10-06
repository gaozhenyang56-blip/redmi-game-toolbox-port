.class Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;->f0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity$e;->a:Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity$e;->a:Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method
