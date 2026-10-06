.class Lcom/miui/apppredict/service/AppPredictService$i;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/apppredict/service/AppPredictService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/apppredict/service/AppPredictService;


# direct methods
.method private constructor <init>(Lcom/miui/apppredict/service/AppPredictService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/apppredict/service/AppPredictService$i;->a:Lcom/miui/apppredict/service/AppPredictService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/apppredict/service/AppPredictService;Lcom/miui/apppredict/service/AppPredictService$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/service/AppPredictService$i;-><init>(Lcom/miui/apppredict/service/AppPredictService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "miui.gallery.action.WALLPAPER_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.UPDATE_DESKTOP_VIDEO_WALLPAPER"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "AppPredictService"

    const-string p2, "AppPredictService::onReceive::Wallpaper changed."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/apppredict/service/AppPredictService$i;->a:Lcom/miui/apppredict/service/AppPredictService;

    invoke-static {p1}, Lcom/miui/apppredict/service/AppPredictService;->b(Lcom/miui/apppredict/service/AppPredictService;)Lcom/miui/apppredict/service/AppPredictService$d;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/apppredict/service/AppPredictService$i;->a:Lcom/miui/apppredict/service/AppPredictService;

    invoke-static {p2}, Lcom/miui/apppredict/service/AppPredictService;->b(Lcom/miui/apppredict/service/AppPredictService;)Lcom/miui/apppredict/service/AppPredictService$d;

    move-result-object p2

    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method
