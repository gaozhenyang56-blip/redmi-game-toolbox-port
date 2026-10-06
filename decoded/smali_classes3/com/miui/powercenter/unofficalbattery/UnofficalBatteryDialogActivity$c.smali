.class Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;->g0(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$c;->a:Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$c;->a:Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;

    invoke-static {v0}, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;->d0(Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$c;->a:Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;

    invoke-virtual {p1}, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;->finish()V

    :cond_0
    return-void
.end method
