.class final Lcom/miui/gamebooster/framerate/FrameRateView$f;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/framerate/FrameRateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/framerate/FrameRateView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/framerate/FrameRateView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateView$f;->a:Lcom/miui/gamebooster/framerate/FrameRateView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView$f;->a:Lcom/miui/gamebooster/framerate/FrameRateView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/framerate/FrameRateView$f;->a:Lcom/miui/gamebooster/framerate/FrameRateView;

    invoke-static {v1}, Lcom/miui/gamebooster/framerate/FrameRateView;->c(Lcom/miui/gamebooster/framerate/FrameRateView;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/framerate/FrameRateView$f;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
