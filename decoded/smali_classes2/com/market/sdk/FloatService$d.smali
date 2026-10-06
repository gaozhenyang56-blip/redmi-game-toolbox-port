.class Lcom/market/sdk/FloatService$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv1/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/FloatService;->N2(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lw1/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/market/sdk/FloatService;


# direct methods
.method constructor <init>(Lcom/market/sdk/FloatService;Lw1/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/FloatService$d;->d:Lcom/market/sdk/FloatService;

    iput-object p2, p0, Lcom/market/sdk/FloatService$d;->a:Lw1/a;

    iput-object p3, p0, Lcom/market/sdk/FloatService$d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/market/sdk/FloatService$d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/market/sdk/FloatService$d;->d:Lcom/market/sdk/FloatService;

    invoke-static {v0}, Lcom/market/sdk/FloatService;->v8(Lcom/market/sdk/FloatService;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market/sdk/FloatService$d;->a:Lw1/a;

    iget-object v1, p0, Lcom/market/sdk/FloatService$d;->d:Lcom/market/sdk/FloatService;

    invoke-static {v1}, Lcom/market/sdk/FloatService;->v8(Lcom/market/sdk/FloatService;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/market/sdk/FloatService$d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/market/sdk/FloatService$d;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/xiaomi/market/IAppDownloadManager;->N2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw1/a;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "FloatService"

    const-string v1, "IAppDownloadManager is null"

    invoke-static {v0, v1}, Lcom/market/sdk/utils/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
