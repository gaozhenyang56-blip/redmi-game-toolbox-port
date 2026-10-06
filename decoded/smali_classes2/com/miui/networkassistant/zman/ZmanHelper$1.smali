.class Lcom/miui/networkassistant/zman/ZmanHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/zman/ZmanHelper;->checkZmanCloudDataAsync(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/miui/networkassistant/zman/ZmanHelper$1;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/miui/networkassistant/zman/ZmanHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/zman/ZmanResult;

    invoke-direct {v1, v0}, Lcom/miui/networkassistant/zman/ZmanResult;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessSecurityShareModuleByPOST - result(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "zman_share_sec"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/miui/networkassistant/zman/ZmanResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/zman/ZmanHelper$1;->val$appContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/zman/ZmanResult;->isSecurityShareCloudDisable(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/miui/networkassistant/zman/ZmanHelper;->setSecurityShareCloudDisable(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/zman/ZmanHelper$1;->val$appContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/zman/ZmanResult;->isShareTailDisable(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/zman/ZmanHelper;->setShareTailCloudDisable(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const-string v0, "accessSecurityShareModuleByPOST - isSuccess(): false"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
