.class public final enum Lcom/miui/gamebooster/framerate/FrameRateView$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/framerate/FrameRateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/gamebooster/framerate/FrameRateView$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/miui/gamebooster/framerate/FrameRateView$b;

.field public static final enum c:Lcom/miui/gamebooster/framerate/FrameRateView$b;

.field public static final enum d:Lcom/miui/gamebooster/framerate/FrameRateView$b;

.field public static final enum e:Lcom/miui/gamebooster/framerate/FrameRateView$b;

.field private static final synthetic f:[Lcom/miui/gamebooster/framerate/FrameRateView$b;


# instance fields
.field private final a:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/miui/gamebooster/framerate/FrameRateView$b;

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const-string v3, "MAX60"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/miui/gamebooster/framerate/FrameRateView$b;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/miui/gamebooster/framerate/FrameRateView$b;->b:Lcom/miui/gamebooster/framerate/FrameRateView$b;

    new-instance v0, Lcom/miui/gamebooster/framerate/FrameRateView$b;

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const-string v3, "MAX90"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v2}, Lcom/miui/gamebooster/framerate/FrameRateView$b;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/miui/gamebooster/framerate/FrameRateView$b;->c:Lcom/miui/gamebooster/framerate/FrameRateView$b;

    new-instance v0, Lcom/miui/gamebooster/framerate/FrameRateView$b;

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const-string v3, "MAX120"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v2}, Lcom/miui/gamebooster/framerate/FrameRateView$b;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/miui/gamebooster/framerate/FrameRateView$b;->d:Lcom/miui/gamebooster/framerate/FrameRateView$b;

    new-instance v0, Lcom/miui/gamebooster/framerate/FrameRateView$b;

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const-string v3, "MAX144"

    invoke-direct {v0, v3, v1, v2}, Lcom/miui/gamebooster/framerate/FrameRateView$b;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/miui/gamebooster/framerate/FrameRateView$b;->e:Lcom/miui/gamebooster/framerate/FrameRateView$b;

    invoke-static {}, Lcom/miui/gamebooster/framerate/FrameRateView$b;->a()[Lcom/miui/gamebooster/framerate/FrameRateView$b;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/framerate/FrameRateView$b;->f:[Lcom/miui/gamebooster/framerate/FrameRateView$b;

    return-void

    nop

    :array_0
    .array-data 4
        0x3c
        0x1e
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x5a
        0x3c
        0x1e
    .end array-data

    :array_2
    .array-data 4
        0x78
        0x5a
        0x3c
    .end array-data

    :array_3
    .array-data 4
        0x90
        0x78
        0x5a
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/miui/gamebooster/framerate/FrameRateView$b;->a:[I

    return-void
.end method

.method private static final synthetic a()[Lcom/miui/gamebooster/framerate/FrameRateView$b;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/gamebooster/framerate/FrameRateView$b;

    sget-object v1, Lcom/miui/gamebooster/framerate/FrameRateView$b;->b:Lcom/miui/gamebooster/framerate/FrameRateView$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gamebooster/framerate/FrameRateView$b;->c:Lcom/miui/gamebooster/framerate/FrameRateView$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gamebooster/framerate/FrameRateView$b;->d:Lcom/miui/gamebooster/framerate/FrameRateView$b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gamebooster/framerate/FrameRateView$b;->e:Lcom/miui/gamebooster/framerate/FrameRateView$b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gamebooster/framerate/FrameRateView$b;
    .locals 1

    const-class v0, Lcom/miui/gamebooster/framerate/FrameRateView$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/gamebooster/framerate/FrameRateView$b;

    return-object p0
.end method

.method public static values()[Lcom/miui/gamebooster/framerate/FrameRateView$b;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/framerate/FrameRateView$b;->f:[Lcom/miui/gamebooster/framerate/FrameRateView$b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gamebooster/framerate/FrameRateView$b;

    return-object v0
.end method


# virtual methods
.method public final b()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView$b;->a:[I

    return-object v0
.end method
