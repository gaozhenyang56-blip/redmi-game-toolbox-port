.class Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->N0(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$k;->b:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    iput-object p2, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$k;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$k;->b:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->j0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)Loe/a;

    move-result-object p1

    invoke-interface {p1}, Loe/a;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "WirelessReverseActivity"

    const-string p2, "close haptic when fw update"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$k;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "haptic_feedback_disable"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$k;->b:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {p1, v0}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->k0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;Z)Z

    :cond_0
    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$k;->b:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->j0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)Loe/a;

    move-result-object p1

    const/16 p2, 0x62

    invoke-interface {p1, p2}, Loe/a;->e(I)V

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$k;->b:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->m0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;I)I

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$k;->b:Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;

    invoke-static {p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->n0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)V

    return-void
.end method
