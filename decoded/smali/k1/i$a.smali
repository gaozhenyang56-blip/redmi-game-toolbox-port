.class public final enum Lk1/i$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk1/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lk1/i$a;

.field public static final enum c:Lk1/i$a;

.field private static final synthetic d:[Lk1/i$a;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lk1/i$a;

    const-string v1, "STAR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lk1/i$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk1/i$a;->b:Lk1/i$a;

    new-instance v1, Lk1/i$a;

    const-string v4, "POLYGON"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lk1/i$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lk1/i$a;->c:Lk1/i$a;

    new-array v4, v5, [Lk1/i$a;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lk1/i$a;->d:[Lk1/i$a;

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

    iput p3, p0, Lk1/i$a;->a:I

    return-void
.end method

.method public static a(I)Lk1/i$a;
    .locals 5

    invoke-static {}, Lk1/i$a;->values()[Lk1/i$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lk1/i$a;->a:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lk1/i$a;
    .locals 1

    const-class v0, Lk1/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk1/i$a;

    return-object p0
.end method

.method public static values()[Lk1/i$a;
    .locals 1

    sget-object v0, Lk1/i$a;->d:[Lk1/i$a;

    invoke-virtual {v0}, [Lk1/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk1/i$a;

    return-object v0
.end method
