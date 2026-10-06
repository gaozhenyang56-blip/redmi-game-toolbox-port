.class Lcom/miui/gamebooster/beauty/BeautyService$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/beauty/BeautyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/beauty/BeautyService;


# direct methods
.method private constructor <init>(Lcom/miui/gamebooster/beauty/BeautyService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyService$h;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gamebooster/beauty/BeautyService;Lcom/miui/gamebooster/beauty/BeautyService$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/beauty/BeautyService$h;-><init>(Lcom/miui/gamebooster/beauty/BeautyService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyService$h;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-static {p2}, Lcom/miui/gamebooster/service/IGameBoosterWindow$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/IGameBoosterWindow;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/gamebooster/beauty/BeautyService;->u:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    :try_start_0
    const-string p1, "BeautyService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected: mGameWindowBinder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyService$h;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    iget-object v1, v1, Lcom/miui/gamebooster/beauty/BeautyService;->u:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyService$h;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-static {p1}, Lcom/miui/gamebooster/beauty/BeautyService;->B(Lcom/miui/gamebooster/beauty/BeautyService;)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyService$h;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-static {p1}, Lcom/miui/gamebooster/beauty/BeautyService;->A(Lcom/miui/gamebooster/beauty/BeautyService;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyService$h;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/miui/gamebooster/beauty/BeautyService;->u:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/beauty/BeautyService;->z(Lcom/miui/gamebooster/beauty/BeautyService;Z)Z

    return-void
.end method
