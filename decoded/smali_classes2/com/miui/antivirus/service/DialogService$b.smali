.class Lcom/miui/antivirus/service/DialogService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/service/DialogService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/wifi/WifiInfo;

.field final synthetic b:Lcom/miui/antivirus/service/DialogService;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/DialogService;Landroid/net/wifi/WifiInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/DialogService$b;->b:Lcom/miui/antivirus/service/DialogService;

    iput-object p2, p0, Lcom/miui/antivirus/service/DialogService$b;->a:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/service/DialogService$b;->b:Lcom/miui/antivirus/service/DialogService;

    invoke-static {v0}, Lcom/miui/antivirus/ui/i;->e(Landroid/content/Context;)Lcom/miui/antivirus/ui/i;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/service/DialogService$b;->a:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/i;->f(Landroid/net/wifi/WifiInfo;)V

    return-void
.end method
