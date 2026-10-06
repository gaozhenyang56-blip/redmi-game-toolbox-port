.class Lcom/miui/powercenter/batteryhistory/y$l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/y$l;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/y$l;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/y$l;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/y$l$b;->a:Lcom/miui/powercenter/batteryhistory/y$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y$l$b;->a:Lcom/miui/powercenter/batteryhistory/y$l;

    iget-object v0, v0, Lcom/miui/powercenter/batteryhistory/y$l;->a:Lcom/miui/powercenter/batteryhistory/y;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/y;->q(Lcom/miui/powercenter/batteryhistory/y;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/w;->P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y$l$b;->a:Lcom/miui/powercenter/batteryhistory/y$l;

    iget-object v0, v0, Lcom/miui/powercenter/batteryhistory/y$l;->a:Lcom/miui/powercenter/batteryhistory/y;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/y;->e(Lcom/miui/powercenter/batteryhistory/y;)I

    move-result v0

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/y;->r()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y$l$b;->a:Lcom/miui/powercenter/batteryhistory/y$l;

    iget-object v0, v0, Lcom/miui/powercenter/batteryhistory/y$l;->a:Lcom/miui/powercenter/batteryhistory/y;

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/y;->r()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/powercenter/batteryhistory/y;->g(Lcom/miui/powercenter/batteryhistory/y;I)I

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y$l$b;->a:Lcom/miui/powercenter/batteryhistory/y$l;

    iget-object v0, v0, Lcom/miui/powercenter/batteryhistory/y$l;->a:Lcom/miui/powercenter/batteryhistory/y;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/y;->o(Lcom/miui/powercenter/batteryhistory/y;)Lmiuix/appcompat/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/y$l$b;->a:Lcom/miui/powercenter/batteryhistory/y$l;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/y$l;->a:Lcom/miui/powercenter/batteryhistory/y;

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/y;->r()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/powercenter/batteryhistory/y;->n(Lcom/miui/powercenter/batteryhistory/y;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y$l$b;->a:Lcom/miui/powercenter/batteryhistory/y$l;

    iget-object v0, v0, Lcom/miui/powercenter/batteryhistory/y$l;->a:Lcom/miui/powercenter/batteryhistory/y;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/y;->l(Lcom/miui/powercenter/batteryhistory/y;)V

    :cond_1
    :goto_0
    return-void
.end method
