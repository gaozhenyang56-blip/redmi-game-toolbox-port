.class public final Lcom/miui/gamebooster/framerate/FrameRateViewController$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/framerate/FrameRateViewController;-><init>(Lcom/miui/gamebooster/framerate/FrameRateView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/framerate/FrameRateViewController;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/framerate/FrameRateViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController$c;->a:Lcom/miui/gamebooster/framerate/FrameRateViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected(componentName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FrameRateViewController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController$c;->a:Lcom/miui/gamebooster/framerate/FrameRateViewController;

    invoke-static {p2}, Lcom/miui/gameturbo/active/IFrameRateDataService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gameturbo/active/IFrameRateDataService;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController$c;->a:Lcom/miui/gamebooster/framerate/FrameRateViewController;

    invoke-static {v0}, Lcom/miui/gamebooster/framerate/FrameRateViewController;->b(Lcom/miui/gamebooster/framerate/FrameRateViewController;)Lcom/miui/gamebooster/framerate/FrameRateViewController$callback$1;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/miui/gameturbo/active/IFrameRateDataService;->H6(Lcom/miui/gameturbo/active/IFrameRateDataCallback;)V

    const-string v0, "asInterface(service).app\u2026k(callback)\n            }"

    invoke-static {p2, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/miui/gamebooster/framerate/FrameRateViewController;->d(Lcom/miui/gamebooster/framerate/FrameRateViewController;Lcom/miui/gameturbo/active/IFrameRateDataService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected(componentName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FrameRateViewController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
