.class public final Lcom/miui/gamebooster/gbservices/FrameRateDataService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/gbservices/FrameRateDataService$a;,
        Lcom/miui/gamebooster/gbservices/FrameRateDataService$b;,
        Lcom/miui/gamebooster/gbservices/FrameRateDataService$c;
    }
.end annotation


# static fields
.field public static final d:Lcom/miui/gamebooster/gbservices/FrameRateDataService$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private portEpoch:I
.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/gamebooster/gbservices/FrameRateDataService$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gamebooster/gbservices/FrameRateDataService$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/gamebooster/gbservices/FrameRateDataService;->d:Lcom/miui/gamebooster/gbservices/FrameRateDataService$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/miui/gamebooster/gbservices/FrameRateDataService$e;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gbservices/FrameRateDataService$e;-><init>(Lcom/miui/gamebooster/gbservices/FrameRateDataService;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService;->b:Loj/f;

    new-instance v0, Lcom/miui/gamebooster/gbservices/FrameRateDataService$d;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gbservices/FrameRateDataService$d;-><init>(Lcom/miui/gamebooster/gbservices/FrameRateDataService;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService;->c:Loj/f;

    return-void
.end method

.method public static final synthetic a(Lcom/miui/gamebooster/gbservices/FrameRateDataService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private final b()I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private final c()Lcom/miui/gamebooster/gbservices/FrameRateDataService$c;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService;->c:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gbservices/FrameRateDataService$c;

    return-object v0
.end method

.method private final d()Lcom/miui/gamebooster/gbservices/FrameRateDataService$b;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService;->b:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gbservices/FrameRateDataService$b;

    return-object v0
.end method


# virtual methods
.method public final e()V
    .locals 5

    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->fpsEpoch()I
    move-result v0
    iget v1, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService;->portEpoch:I
    if-eq v0, v1, :port_same_session
    iput v0, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService;->portEpoch:I
    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :port_same_session

    invoke-static {}, La8/w;->a()F

    move-result v0

    float-to-int v0, v0
    if-gez v0, :port_sample_valid
    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/FrameRateDataService;->c()Lcom/miui/gamebooster/gbservices/FrameRateDataService$c;
    move-result-object v1
    invoke-virtual {v1}, Lcom/miui/gamebooster/gbservices/FrameRateDataService$c;->o8()Lcom/miui/gameturbo/active/IFrameRateDataCallback;
    move-result-object v1
    if-eqz v1, :port_missing_done
    invoke-interface {v1, v0}, Lcom/miui/gameturbo/active/IFrameRateDataCallback;->p3(I)V
    :port_missing_done
    return-void
    :port_sample_valid


    move v2, v0
    move v1, v0

    sget-boolean v3, Luf/a;->a:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", fr: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameRateDataService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/FrameRateDataService;->c()Lcom/miui/gamebooster/gbservices/FrameRateDataService$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/gbservices/FrameRateDataService$c;->o8()Lcom/miui/gameturbo/active/IFrameRateDataCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Lcom/miui/gameturbo/active/IFrameRateDataCallback;->p3(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/16 v1, 0xf0

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/FrameRateDataService;->c()Lcom/miui/gamebooster/gbservices/FrameRateDataService$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gameturbo/active/IFrameRateDataService$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind(intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FrameRateDataService"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/FrameRateDataService;->d()Lcom/miui/gamebooster/gbservices/FrameRateDataService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/gbservices/FrameRateDataService$b;->b()Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/FrameRateDataService;->d()Lcom/miui/gamebooster/gbservices/FrameRateDataService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/gbservices/FrameRateDataService$b;->a()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartCommand(intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameRateDataService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
