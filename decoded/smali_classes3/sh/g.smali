.class public final enum Lsh/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsh/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lsh/g;

.field public static final enum b:Lsh/g;

.field private static final synthetic c:[Lsh/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lsh/g;

    const-string v1, "FIFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsh/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsh/g;->a:Lsh/g;

    new-instance v1, Lsh/g;

    const-string v3, "LIFO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lsh/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lsh/g;->b:Lsh/g;

    const/4 v3, 0x2

    new-array v3, v3, [Lsh/g;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lsh/g;->c:[Lsh/g;

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

.method public static valueOf(Ljava/lang/String;)Lsh/g;
    .locals 1

    const-class v0, Lsh/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsh/g;

    return-object p0
.end method

.method public static values()[Lsh/g;
    .locals 1

    sget-object v0, Lsh/g;->c:[Lsh/g;

    invoke-virtual {v0}, [Lsh/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsh/g;

    return-object v0
.end method
