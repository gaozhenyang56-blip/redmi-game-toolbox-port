.class Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender$1;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/xiaomi/micloudsdk/sync/a;

.field final synthetic val$waiter:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/xiaomi/micloudsdk/sync/a;Landroid/os/Handler;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p3, p0, Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender$1;->val$waiter:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender$1;->val$waiter:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
