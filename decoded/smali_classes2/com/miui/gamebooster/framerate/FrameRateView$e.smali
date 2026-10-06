.class final Lcom/miui/gamebooster/framerate/FrameRateView$e;
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
        "Landroid/graphics/Paint;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/miui/gamebooster/framerate/FrameRateView$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/framerate/FrameRateView$e;

    invoke-direct {v0}, Lcom/miui/gamebooster/framerate/FrameRateView$e;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/framerate/FrameRateView$e;->a:Lcom/miui/gamebooster/framerate/FrameRateView$e;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Paint;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/framerate/FrameRateView$e;->a()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method
