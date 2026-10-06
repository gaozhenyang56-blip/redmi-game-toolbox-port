.class Lcom/market/sdk/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/b;->b(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/market/IAppDownloadManager;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/market/sdk/b;


# direct methods
.method constructor <init>(Lcom/market/sdk/b;Lcom/xiaomi/market/IAppDownloadManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/b$c;->c:Lcom/market/sdk/b;

    iput-object p2, p0, Lcom/market/sdk/b$c;->a:Lcom/xiaomi/market/IAppDownloadManager;

    iput-object p3, p0, Lcom/market/sdk/b$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/market/sdk/b$c;->a:Lcom/xiaomi/market/IAppDownloadManager;

    iget-object v1, p0, Lcom/market/sdk/b$c;->b:Ljava/lang/String;

    invoke-static {}, Lcom/market/sdk/utils/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/market/IAppDownloadManager;->J7(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
