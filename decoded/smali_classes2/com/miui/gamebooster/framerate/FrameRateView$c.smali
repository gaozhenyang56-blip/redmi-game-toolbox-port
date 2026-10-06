.class public final enum Lcom/miui/gamebooster/framerate/FrameRateView$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/framerate/FrameRateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/gamebooster/framerate/FrameRateView$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/gamebooster/framerate/FrameRateView$c;

.field public static final enum b:Lcom/miui/gamebooster/framerate/FrameRateView$c;

.field private static final synthetic c:[Lcom/miui/gamebooster/framerate/FrameRateView$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/miui/gamebooster/framerate/FrameRateView$c;

    const-string v1, "BALANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/gamebooster/framerate/FrameRateView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/framerate/FrameRateView$c;->a:Lcom/miui/gamebooster/framerate/FrameRateView$c;

    new-instance v0, Lcom/miui/gamebooster/framerate/FrameRateView$c;

    const-string v1, "WILD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/miui/gamebooster/framerate/FrameRateView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/framerate/FrameRateView$c;->b:Lcom/miui/gamebooster/framerate/FrameRateView$c;

    invoke-static {}, Lcom/miui/gamebooster/framerate/FrameRateView$c;->a()[Lcom/miui/gamebooster/framerate/FrameRateView$c;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/framerate/FrameRateView$c;->c:[Lcom/miui/gamebooster/framerate/FrameRateView$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic a()[Lcom/miui/gamebooster/framerate/FrameRateView$c;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/gamebooster/framerate/FrameRateView$c;

    sget-object v1, Lcom/miui/gamebooster/framerate/FrameRateView$c;->a:Lcom/miui/gamebooster/framerate/FrameRateView$c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gamebooster/framerate/FrameRateView$c;->b:Lcom/miui/gamebooster/framerate/FrameRateView$c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gamebooster/framerate/FrameRateView$c;
    .locals 1

    const-class v0, Lcom/miui/gamebooster/framerate/FrameRateView$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/gamebooster/framerate/FrameRateView$c;

    return-object p0
.end method

.method public static values()[Lcom/miui/gamebooster/framerate/FrameRateView$c;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/framerate/FrameRateView$c;->c:[Lcom/miui/gamebooster/framerate/FrameRateView$c;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gamebooster/framerate/FrameRateView$c;

    return-object v0
.end method
