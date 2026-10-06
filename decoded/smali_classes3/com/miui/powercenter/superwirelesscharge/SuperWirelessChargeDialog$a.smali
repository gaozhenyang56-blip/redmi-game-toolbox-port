.class Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog$a;
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
.field final synthetic a:Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog$a;->a:Lcom/miui/powercenter/superwirelesscharge/SuperWirelessChargeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x7

    invoke-static {p2}, Lke/a;->d(I)Ljava/lang/Boolean;

    invoke-static {}, Lhd/a;->w1()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
