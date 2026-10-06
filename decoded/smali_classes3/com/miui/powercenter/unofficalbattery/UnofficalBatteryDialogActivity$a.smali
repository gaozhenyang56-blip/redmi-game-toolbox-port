.class Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$a;->a:Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p2, 0x0

    invoke-static {p2}, Lgd/c;->Q1(Z)V

    invoke-static {}, Lhd/a;->F1()V

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$a;->a:Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$a;->a:Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;

    invoke-virtual {v0, p2}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
