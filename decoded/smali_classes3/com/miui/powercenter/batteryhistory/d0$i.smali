.class Lcom/miui/powercenter/batteryhistory/d0$i;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/d0;->j0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/powercenter/batteryhistory/d0;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/d0;Landroid/os/Looper;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$i;->b:Lcom/miui/powercenter/batteryhistory/d0;

    iput p3, p0, Lcom/miui/powercenter/batteryhistory/d0$i;->a:I

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$i;->b:Lcom/miui/powercenter/batteryhistory/d0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/powercenter/batteryhistory/d0;->s(Lcom/miui/powercenter/batteryhistory/d0;Z)Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Lme/w;->j(Landroid/content/Context;)I

    move-result p1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0$i;->b:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v0, p1}, Lcom/miui/powercenter/batteryhistory/d0;->C(Lcom/miui/powercenter/batteryhistory/d0;I)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0$i;->b:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v0, p1}, Lcom/miui/powercenter/batteryhistory/d0;->H(Lcom/miui/powercenter/batteryhistory/d0;I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$i;->b:Lcom/miui/powercenter/batteryhistory/d0;

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/d0$i;->a:I

    invoke-static {p1, v0}, Lcom/miui/powercenter/batteryhistory/d0;->I(Lcom/miui/powercenter/batteryhistory/d0;I)V

    :cond_1
    :goto_0
    return-void
.end method
