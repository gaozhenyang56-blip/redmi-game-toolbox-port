.class Lcom/miui/powercenter/provider/PowerSaveService$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/provider/PowerSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/provider/PowerSaveService;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/provider/PowerSaveService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/provider/PowerSaveService$c;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$c;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v0}, Lcom/miui/powercenter/provider/PowerSaveService;->p(Lcom/miui/powercenter/provider/PowerSaveService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$c;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v0}, Lcom/miui/powercenter/provider/PowerSaveService;->q(Lcom/miui/powercenter/provider/PowerSaveService;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$c;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v0}, Lpg/c;->p(Landroid/content/Context;)Lpg/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpg/c;->y(Z)V

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object v0

    invoke-virtual {v0}, Lde/i;->d0()V

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$c;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-static {v0, v1}, Lxd/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
