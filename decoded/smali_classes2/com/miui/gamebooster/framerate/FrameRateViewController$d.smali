.class final Lcom/miui/gamebooster/framerate/FrameRateViewController$d;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/framerate/FrameRateViewController;-><init>(Lcom/miui/gamebooster/framerate/FrameRateView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Lcom/miui/gamebooster/framerate/FrameRateViewController$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/framerate/FrameRateViewController;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/framerate/FrameRateViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController$d;->a:Lcom/miui/gamebooster/framerate/FrameRateViewController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/miui/gamebooster/framerate/FrameRateViewController$b;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/miui/gamebooster/framerate/FrameRateViewController$b;

    iget-object v1, p0, Lcom/miui/gamebooster/framerate/FrameRateViewController$d;->a:Lcom/miui/gamebooster/framerate/FrameRateViewController;

    invoke-static {v1}, Lcom/miui/gamebooster/framerate/FrameRateViewController;->c(Lcom/miui/gamebooster/framerate/FrameRateViewController;)Lcom/miui/gamebooster/framerate/FrameRateView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gamebooster/framerate/FrameRateViewController$b;-><init>(Lcom/miui/gamebooster/framerate/FrameRateView;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/framerate/FrameRateViewController$d;->a()Lcom/miui/gamebooster/framerate/FrameRateViewController$b;

    move-result-object v0

    return-object v0
.end method
