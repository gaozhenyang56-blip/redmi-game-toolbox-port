.class Lcom/miui/powercenter/provider/PowerSaveService$e;
.super Landroid/database/ContentObserver;
.source "SourceFile"


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
.method constructor <init>(Lcom/miui/powercenter/provider/PowerSaveService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/provider/PowerSaveService$e;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string p1, "PowerSaveService"

    const-string v0, "5G dialog is popped"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/powercenter/provider/PowerSaveService$e;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {p1}, Lcom/miui/powercenter/provider/PowerSaveService;->r(Lcom/miui/powercenter/provider/PowerSaveService;)Ltd/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/provider/PowerSaveService$e;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {p1}, Lcom/miui/powercenter/provider/PowerSaveService;->t(Lcom/miui/powercenter/provider/PowerSaveService;)Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "is_pc_5g_dialog_popped"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/provider/PowerSaveService$e;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {p1}, Lcom/miui/powercenter/provider/PowerSaveService;->r(Lcom/miui/powercenter/provider/PowerSaveService;)Ltd/a;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$e;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-virtual {p1, v0}, Ltd/a;->e(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
