.class Lcom/market/sdk/FloatService$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv1/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/FloatService;->b4(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/market/sdk/FloatService;


# direct methods
.method constructor <init>(Lcom/market/sdk/FloatService;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/FloatService$f;->b:Lcom/market/sdk/FloatService;

    iput-object p2, p0, Lcom/market/sdk/FloatService$f;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/market/sdk/FloatService$f;->b:Lcom/market/sdk/FloatService;

    invoke-static {v0}, Lcom/market/sdk/FloatService;->v8(Lcom/market/sdk/FloatService;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market/sdk/FloatService$f;->b:Lcom/market/sdk/FloatService;

    invoke-static {v0}, Lcom/market/sdk/FloatService;->v8(Lcom/market/sdk/FloatService;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/market/sdk/FloatService$f;->a:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/xiaomi/market/IAppDownloadManager;->b4(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const-string v0, "FloatService"

    const-string v1, "IAppDownloadManager is null"

    invoke-static {v0, v1}, Lcom/market/sdk/utils/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
