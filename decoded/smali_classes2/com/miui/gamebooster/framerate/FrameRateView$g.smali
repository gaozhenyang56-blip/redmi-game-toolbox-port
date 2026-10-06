.class final Lcom/miui/gamebooster/framerate/FrameRateView$g;
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
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/framerate/FrameRateView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/framerate/FrameRateView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateView$g;->a:Lcom/miui/gamebooster/framerate/FrameRateView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()[I
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/miui/gamebooster/framerate/FrameRateView$g;->a:Lcom/miui/gamebooster/framerate/FrameRateView;

    invoke-static {v1}, Lcom/miui/gamebooster/framerate/FrameRateView;->b(Lcom/miui/gamebooster/framerate/FrameRateView;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/miui/gamebooster/framerate/FrameRateView$g;->a:Lcom/miui/gamebooster/framerate/FrameRateView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    iget-object v3, p0, Lcom/miui/gamebooster/framerate/FrameRateView$g;->a:Lcom/miui/gamebooster/framerate/FrameRateView;

    invoke-static {v3}, Lcom/miui/gamebooster/framerate/FrameRateView;->b(Lcom/miui/gamebooster/framerate/FrameRateView;)I

    move-result v3

    div-int/2addr v3, v2

    add-int/2addr v1, v3

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/miui/gamebooster/framerate/FrameRateView$g;->a:Lcom/miui/gamebooster/framerate/FrameRateView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    aput v1, v0, v2

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/framerate/FrameRateView$g;->a()[I

    move-result-object v0

    return-object v0
.end method
