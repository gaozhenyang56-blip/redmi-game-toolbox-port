.class final enum Lbi/k$s;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbi/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbi/k$s;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lbi/k$s;

.field public static final enum c:Lbi/k$s;

.field public static final enum d:Lbi/k$s;

.field private static final synthetic e:[Lbi/k$s;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lbi/k$s;

    const-string v1, "NOTIFICATION_WHEN_BUFFER_IS_FULL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lbi/k$s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbi/k$s;->b:Lbi/k$s;

    new-instance v1, Lbi/k$s;

    const-string v4, "NOTIFICATION_ON_EVERY_LOCATION_FIX"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lbi/k$s;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbi/k$s;->c:Lbi/k$s;

    new-instance v4, Lbi/k$s;

    const-string v6, "NOTIFICATION_WHEN_TRIP_IS_COMPLETED"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lbi/k$s;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lbi/k$s;->d:Lbi/k$s;

    new-array v6, v7, [Lbi/k$s;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lbi/k$s;->e:[Lbi/k$s;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lbi/k$s;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbi/k$s;
    .locals 1

    const-class v0, Lbi/k$s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbi/k$s;

    return-object p0
.end method

.method public static values()[Lbi/k$s;
    .locals 1

    sget-object v0, Lbi/k$s;->e:[Lbi/k$s;

    invoke-virtual {v0}, [Lbi/k$s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbi/k$s;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbi/k$s;->a:I

    return v0
.end method
