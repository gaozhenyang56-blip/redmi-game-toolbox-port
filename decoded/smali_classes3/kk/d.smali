.class public final enum Lkk/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkk/d;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.6"
.end annotation

.annotation build Lkotlin/WasExperimental;
    markerClass = {
        Lkotlin/time/ExperimentalTime;
    }
.end annotation


# static fields
.field public static final enum b:Lkk/d;

.field public static final enum c:Lkk/d;

.field public static final enum d:Lkk/d;

.field public static final enum e:Lkk/d;

.field public static final enum f:Lkk/d;

.field public static final enum g:Lkk/d;

.field public static final enum h:Lkk/d;

.field private static final synthetic i:[Lkk/d;


# instance fields
.field private final a:Ljava/util/concurrent/TimeUnit;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkk/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "NANOSECONDS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lkk/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lkk/d;->b:Lkk/d;

    new-instance v0, Lkk/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "MICROSECONDS"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lkk/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lkk/d;->c:Lkk/d;

    new-instance v0, Lkk/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "MILLISECONDS"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lkk/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lkk/d;->d:Lkk/d;

    new-instance v0, Lkk/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "SECONDS"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lkk/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lkk/d;->e:Lkk/d;

    new-instance v0, Lkk/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v2, "MINUTES"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lkk/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lkk/d;->f:Lkk/d;

    new-instance v0, Lkk/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "HOURS"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lkk/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lkk/d;->g:Lkk/d;

    new-instance v0, Lkk/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "DAYS"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lkk/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lkk/d;->h:Lkk/d;

    invoke-static {}, Lkk/d;->a()[Lkk/d;

    move-result-object v0

    sput-object v0, Lkk/d;->i:[Lkk/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lkk/d;->a:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method private static final synthetic a()[Lkk/d;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lkk/d;

    sget-object v1, Lkk/d;->b:Lkk/d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkk/d;->c:Lkk/d;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lkk/d;->d:Lkk/d;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lkk/d;->e:Lkk/d;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lkk/d;->f:Lkk/d;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lkk/d;->g:Lkk/d;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lkk/d;->h:Lkk/d;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkk/d;
    .locals 1

    const-class v0, Lkk/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkk/d;

    return-object p0
.end method

.method public static values()[Lkk/d;
    .locals 1

    sget-object v0, Lkk/d;->i:[Lkk/d;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkk/d;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/util/concurrent/TimeUnit;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkk/d;->a:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method
