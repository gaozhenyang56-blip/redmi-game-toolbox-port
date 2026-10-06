.class Lc3/k$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc3/k;->k(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lc3/k;


# direct methods
.method constructor <init>(Lc3/k;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lc3/k$d;->e:Lc3/k;

    iput-object p2, p0, Lc3/k$d;->a:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

    iput-object p3, p0, Lc3/k$d;->b:Ljava/lang/String;

    iput-object p4, p0, Lc3/k$d;->c:Ljava/lang/String;

    iput-object p5, p0, Lc3/k$d;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    :try_start_0
    iget-object p1, p0, Lc3/k$d;->e:Lc3/k;

    invoke-static {p2}, Lcom/xiaomi/ad/feedback/IAdFeedbackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    move-result-object p2

    invoke-static {p1, p2}, Lc3/k;->b(Lc3/k;Lcom/xiaomi/ad/feedback/IAdFeedbackService;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    iget-object p1, p0, Lc3/k$d;->e:Lc3/k;

    invoke-static {p1}, Lc3/k;->d(Lc3/k;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc3/k$d;->e:Lc3/k;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lc3/k;->e(Lc3/k;Z)Z

    iget-object p1, p0, Lc3/k$d;->e:Lc3/k;

    invoke-static {p1}, Lc3/k;->a(Lc3/k;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    move-result-object p1

    iget-object p2, p0, Lc3/k$d;->a:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

    iget-object v0, p0, Lc3/k$d;->b:Ljava/lang/String;

    iget-object v1, p0, Lc3/k$d;->c:Ljava/lang/String;

    iget-object v2, p0, Lc3/k$d;->d:Ljava/util/List;

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/xiaomi/ad/feedback/IAdFeedbackService;->showFeedbackWindowAndTrackResultForMultiAds(Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lc3/k;->c()Ljava/lang/String;

    move-result-object p2

    const-string v0, "service connected exception"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lc3/k$d;->e:Lc3/k;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lc3/k;->b(Lc3/k;Lcom/xiaomi/ad/feedback/IAdFeedbackService;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    return-void
.end method
