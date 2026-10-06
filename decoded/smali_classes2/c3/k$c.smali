.class Lc3/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc3/k;->j(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lc3/k;


# direct methods
.method constructor <init>(Lc3/k;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc3/k$c;->e:Lc3/k;

    iput-object p2, p0, Lc3/k$c;->a:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

    iput-object p3, p0, Lc3/k$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lc3/k$c;->c:Ljava/lang/String;

    iput-object p5, p0, Lc3/k$c;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    :try_start_0
    iget-object p1, p0, Lc3/k$c;->e:Lc3/k;

    invoke-static {p2}, Lcom/xiaomi/ad/feedback/IAdFeedbackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    move-result-object p2

    invoke-static {p1, p2}, Lc3/k;->b(Lc3/k;Lcom/xiaomi/ad/feedback/IAdFeedbackService;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    iget-object p1, p0, Lc3/k$c;->e:Lc3/k;

    invoke-static {p1}, Lc3/k;->a(Lc3/k;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    move-result-object p1

    iget-object p2, p0, Lc3/k$c;->a:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

    iget-object v0, p0, Lc3/k$c;->b:Ljava/lang/String;

    iget-object v1, p0, Lc3/k$c;->c:Ljava/lang/String;

    iget-object v2, p0, Lc3/k$c;->d:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/xiaomi/ad/feedback/IAdFeedbackService;->showFeedbackWindowAndTrackResult(Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    iget-object p1, p0, Lc3/k$c;->e:Lc3/k;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lc3/k;->b(Lc3/k;Lcom/xiaomi/ad/feedback/IAdFeedbackService;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    return-void
.end method
