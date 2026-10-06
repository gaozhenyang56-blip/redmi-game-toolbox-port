.class Lcom/miui/powercenter/batteryhistory/d0$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/d0;->M(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/miui/powercenter/batteryhistory/d0;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/d0;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$f;->b:Lcom/miui/powercenter/batteryhistory/d0;

    iput-boolean p2, p0, Lcom/miui/powercenter/batteryhistory/d0$f;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0$f;->b:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/d0;->j(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/powercenter/batteryhistory/d0$f;->a:Z

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lme/w;->A0(Landroid/content/Context;ZZ)V

    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/d0$f;->a:Z

    invoke-static {v0}, Lhd/a;->X0(Z)V

    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/d0$f;->a:Z

    const-string v1, "power_main_page_click"

    invoke-static {v0, v1}, Lhd/a;->W0(ZLjava/lang/String;)V

    return-void
.end method
