.class Lc3/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc3/k;->i(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

.field final synthetic b:Lc3/k;


# direct methods
.method constructor <init>(Lc3/k;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;)V
    .locals 0

    iput-object p1, p0, Lc3/k$b;->b:Lc3/k;

    iput-object p2, p0, Lc3/k$b;->a:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lc3/k$b;->b:Lc3/k;

    invoke-static {p2}, Lcom/xiaomi/ad/feedback/IAdFeedbackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    move-result-object p2

    invoke-static {p1, p2}, Lc3/k;->b(Lc3/k;Lcom/xiaomi/ad/feedback/IAdFeedbackService;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    iget-object p1, p0, Lc3/k$b;->b:Lc3/k;

    invoke-static {p1}, Lc3/k;->a(Lc3/k;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    move-result-object p1

    iget-object p2, p0, Lc3/k$b;->a:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

    invoke-interface {p1, p2}, Lcom/xiaomi/ad/feedback/IAdFeedbackService;->showFeedbackWindow(Lcom/xiaomi/ad/feedback/IAdFeedbackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lc3/k;->c()Ljava/lang/String;

    move-result-object p2

    const-string v0, "service connected exception"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lc3/k$b;->b:Lc3/k;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lc3/k;->b(Lc3/k;Lcom/xiaomi/ad/feedback/IAdFeedbackService;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    return-void
.end method
