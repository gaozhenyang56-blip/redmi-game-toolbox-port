.class final Lcom/miui/gamebooster/gbservices/FrameRateDataService$c;
.super Lcom/miui/gameturbo/active/IFrameRateDataService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/gbservices/FrameRateDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/gbservices/FrameRateDataService$c$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/gamebooster/gbservices/FrameRateDataService;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private k:Lcom/miui/gameturbo/active/IFrameRateDataCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/gbservices/FrameRateDataService;)V
    .locals 1
    .param p1    # Lcom/miui/gamebooster/gbservices/FrameRateDataService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "frameRateDataService"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/gameturbo/active/IFrameRateDataService$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public H6(Lcom/miui/gameturbo/active/IFrameRateDataCallback;)V
    .locals 2
    .param p1    # Lcom/miui/gameturbo/active/IFrameRateDataCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/miui/gamebooster/gbservices/FrameRateDataService$c$a;

    invoke-direct {v0, p1}, Lcom/miui/gamebooster/gbservices/FrameRateDataService$c$a;-><init>(Lcom/miui/gameturbo/active/IFrameRateDataCallback;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService$c;->k:Lcom/miui/gameturbo/active/IFrameRateDataCallback;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gbservices/FrameRateDataService;

    if-eqz v0, :cond_0

    const-string v1, "get()"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/gamebooster/gbservices/FrameRateDataService;->a(Lcom/miui/gamebooster/gbservices/FrameRateDataService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lqj/l;->P(Ljava/util/Collection;)[I

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    :cond_1
    invoke-interface {p1, v0}, Lcom/miui/gameturbo/active/IFrameRateDataCallback;->r4([I)V

    :cond_2
    return-void
.end method

.method public final o8()Lcom/miui/gameturbo/active/IFrameRateDataCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService$c;->k:Lcom/miui/gameturbo/active/IFrameRateDataCallback;

    return-object v0
.end method
