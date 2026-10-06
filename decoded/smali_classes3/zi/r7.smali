.class public final enum Lzi/r7;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzi/r7;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lzi/r7;

.field public static final enum c:Lzi/r7;

.field private static final synthetic d:[Lzi/r7;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lzi/r7;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lzi/r7;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lzi/r7;->b:Lzi/r7;

    new-instance v1, Lzi/r7;

    const-string v3, "BIND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lzi/r7;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lzi/r7;->c:Lzi/r7;

    const/4 v3, 0x2

    new-array v3, v3, [Lzi/r7;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lzi/r7;->d:[Lzi/r7;

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

    iput p3, p0, Lzi/r7;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzi/r7;
    .locals 1

    const-class v0, Lzi/r7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzi/r7;

    return-object p0
.end method

.method public static values()[Lzi/r7;
    .locals 1

    sget-object v0, Lzi/r7;->d:[Lzi/r7;

    invoke-virtual {v0}, [Lzi/r7;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzi/r7;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lzi/r7;->a:I

    return v0
.end method
