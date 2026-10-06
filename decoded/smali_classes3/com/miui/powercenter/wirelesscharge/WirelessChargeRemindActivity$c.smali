.class Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;->g0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/AppCompatCheckBox;

.field final synthetic b:Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;Landroidx/appcompat/widget/AppCompatCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity$c;->b:Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity;

    iput-object p2, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity$c;->a:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessChargeRemindActivity$c;->a:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lgd/c;->I1()V

    :cond_0
    return-void
.end method
