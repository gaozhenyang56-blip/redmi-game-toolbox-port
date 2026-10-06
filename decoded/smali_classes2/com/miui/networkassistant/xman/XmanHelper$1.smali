.class Lcom/miui/networkassistant/xman/XmanHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/xman/XmanHelper;->checkXmanCloudDataAsync(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/xman/XmanHelper$1;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "Xman"

    invoke-static {v0}, Lcom/miui/networkassistant/xman/XmanHelper;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/xman/XmanResult;

    invoke-direct {v1, v0}, Lcom/miui/networkassistant/xman/XmanResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/networkassistant/xman/XmanResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/xman/XmanHelper$1;->val$appContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/xman/XmanResult;->isXmanCloudDisable(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/xman/XmanHelper;->access$100(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "xman_share"

    const-string v1, "XmanHelper - xmanResult.isSuccess(): false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
