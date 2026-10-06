.class final Lcom/miui/gamebooster/gbservices/FrameRateDataService$e;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/gbservices/FrameRateDataService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Lcom/miui/gamebooster/gbservices/FrameRateDataService$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/gbservices/FrameRateDataService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/FrameRateDataService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService$e;->a:Lcom/miui/gamebooster/gbservices/FrameRateDataService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/miui/gamebooster/gbservices/FrameRateDataService$b;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService$e;->a:Lcom/miui/gamebooster/gbservices/FrameRateDataService;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "FrameRateDataServiceThread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "HandlerThread(\"FrameRate\u2026rt()\n            }.looper"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/miui/gamebooster/gbservices/FrameRateDataService$b;

    invoke-direct {v2, v0, v1}, Lcom/miui/gamebooster/gbservices/FrameRateDataService$b;-><init>(Lcom/miui/gamebooster/gbservices/FrameRateDataService;Landroid/os/Looper;)V

    return-object v2
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/gbservices/FrameRateDataService$e;->a()Lcom/miui/gamebooster/gbservices/FrameRateDataService$b;

    move-result-object v0

    return-object v0
.end method
