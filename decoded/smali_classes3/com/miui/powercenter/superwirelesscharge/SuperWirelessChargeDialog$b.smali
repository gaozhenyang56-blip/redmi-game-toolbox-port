.class Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;->e0(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog$b;->b:Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;

    iput-object p2, p0, Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p2, p0, Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog$b;->b:Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog$b;->b:Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121283

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    const/4 p2, 0x4

    invoke-static {p2}, Lke/a;->d(I)Ljava/lang/Boolean;

    iget-object p2, p0, Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog$b;->a:Landroid/content/Context;

    invoke-static {p2}, Lke/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lhd/a;->v1()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
