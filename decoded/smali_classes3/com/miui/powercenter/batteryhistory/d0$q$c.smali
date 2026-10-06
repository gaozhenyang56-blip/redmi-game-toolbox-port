.class Lcom/miui/powercenter/batteryhistory/d0$q$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/d0$q;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/d0$q;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/d0$q;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$q$c;->a:Lcom/miui/powercenter/batteryhistory/d0$q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0$q$c;->a:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v0, v0, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/d0;->j(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v0

    invoke-static {v0}, Lme/w;->P(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0$q$c;->a:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/d0;->J(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/mainui/MainBatteryView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/powercenter/mainui/MainBatteryView;->setPerformanceModeStatus(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0$q$c;->a:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v0, v0, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/d0;->j(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v0

    invoke-static {v0}, Lme/w;->L(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0$q$c;->a:Lcom/miui/powercenter/batteryhistory/d0$q;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/d0$q;->a(Lcom/miui/powercenter/batteryhistory/d0$q;)I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0$q$c;->a:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v0, v0, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/d0;->m0()V

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0$q$c;->a:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v0, v0, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/d0;->u(Lcom/miui/powercenter/batteryhistory/d0;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/powercenter/batteryhistory/d0;->v(Lcom/miui/powercenter/batteryhistory/d0;Ljava/lang/String;)V

    return-void
.end method
