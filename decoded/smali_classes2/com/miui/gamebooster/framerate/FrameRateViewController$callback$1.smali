.class public final Lcom/miui/gamebooster/framerate/FrameRateViewController$callback$1;
.super Lcom/miui/gameturbo/active/IFrameRateDataCallback$Stub;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController$callback$1;->a:Lcom/miui/gamebooster/framerate/FrameRateViewController;

    invoke-direct {p0}, Lcom/miui/gameturbo/active/IFrameRateDataCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public p3(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController$callback$1;->a:Lcom/miui/gamebooster/framerate/FrameRateViewController;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {v0, v1}, Lcom/miui/gamebooster/framerate/FrameRateViewController;->a(Lcom/miui/gamebooster/framerate/FrameRateViewController;[I)V

    return-void
.end method

.method public r4([I)V
    .locals 2
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInit(frameRateHistorySize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameRateViewController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController$callback$1;->a:Lcom/miui/gamebooster/framerate/FrameRateViewController;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/gamebooster/framerate/FrameRateViewController;->a(Lcom/miui/gamebooster/framerate/FrameRateViewController;[I)V

    :cond_1
    return-void
.end method
