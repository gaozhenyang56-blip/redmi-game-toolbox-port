.class final Lcom/miui/gamebooster/gbservices/FrameRateDataService$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gameturbo/active/IFrameRateDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/gbservices/FrameRateDataService$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "p=$(dumpsys activity activities|sed -n \'s/.*mResumedActivity:.* \\([^/ ]*\\)\\/.*/\\1/p\'|head -1);[ -z \"$p\" ]&&p=$(dumpsys window|sed -n \'s/.*mCurrentFocus=.* \\([^/ ]*\\)\\/.*/\\1/p\'|head -1);l=$(dumpsys SurfaceFlinger --list|grep -F \"$p\"|grep -m1 SurfaceView);[ -z \"$l\" ]&&l=$(dumpsys SurfaceFlinger --list|grep -F \"$p\"|head -1);[ -z \"$l\" ]&&l=$(dumpsys SurfaceFlinger --list|grep -m1 SurfaceView);[ -n \"$l\" ]&&dumpsys SurfaceFlinger --latency \"$l\""
    }
.end annotation


# instance fields
.field private a:Lcom/miui/gameturbo/active/IFrameRateDataCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gameturbo/active/IFrameRateDataCallback;)V
    .locals 0
    .param p1    # Lcom/miui/gameturbo/active/IFrameRateDataCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService$c$a;->a:Lcom/miui/gameturbo/active/IFrameRateDataCallback;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService$c$a;->a:Lcom/miui/gameturbo/active/IFrameRateDataCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService$c$a;->a:Lcom/miui/gameturbo/active/IFrameRateDataCallback;

    const-string v2, "FrameRateDataService"

    const-string v3, "ui process is dead, release the callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method public p3(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService$c$a;->a:Lcom/miui/gameturbo/active/IFrameRateDataCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/gameturbo/active/IFrameRateDataCallback;->p3(I)V

    sget-object p1, Loj/t;->a:Loj/t;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService$c$a;->a:Lcom/miui/gameturbo/active/IFrameRateDataCallback;

    const-string v0, "FrameRateDataService"

    const-string v1, "ui process is dead, release the callback"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public r4([I)V
    .locals 2
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService$c$a;->a:Lcom/miui/gameturbo/active/IFrameRateDataCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/gameturbo/active/IFrameRateDataCallback;->r4([I)V

    sget-object p1, Loj/t;->a:Loj/t;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService$c$a;->a:Lcom/miui/gameturbo/active/IFrameRateDataCallback;

    const-string v0, "FrameRateDataService"

    const-string v1, "ui process is dead, release the callback"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
