.class Lcom/miui/powercenter/batteryhistory/y$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/y;->u(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/miui/powercenter/batteryhistory/y;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/y;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/y$g;->b:Lcom/miui/powercenter/batteryhistory/y;

    iput-boolean p2, p0, Lcom/miui/powercenter/batteryhistory/y$g;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y$g;->b:Lcom/miui/powercenter/batteryhistory/y;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/y;->q(Lcom/miui/powercenter/batteryhistory/y;)Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/powercenter/batteryhistory/y$g;->a:Z

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lme/w;->A0(Landroid/content/Context;ZZ)V

    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/y$g;->a:Z

    invoke-static {v0}, Lhd/a;->X0(Z)V

    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/y$g;->a:Z

    const-string v1, "power_main_page_click"

    invoke-static {v0, v1}, Lhd/a;->W0(ZLjava/lang/String;)V

    return-void
.end method
