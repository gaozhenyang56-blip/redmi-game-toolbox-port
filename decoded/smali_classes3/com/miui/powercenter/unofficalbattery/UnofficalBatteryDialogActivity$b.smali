.class Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$b;
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

    iput-object p1, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$b;->a:Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lhd/a;->E1()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
