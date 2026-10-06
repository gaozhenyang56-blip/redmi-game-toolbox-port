.class public final enum Lzi/x7;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzi/x7;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lzi/x7;

.field public static final enum c:Lzi/x7;

.field public static final enum d:Lzi/x7;

.field public static final enum e:Lzi/x7;

.field private static final synthetic f:[Lzi/x7;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lzi/x7;

    const-string v1, "INT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lzi/x7;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lzi/x7;->b:Lzi/x7;

    new-instance v1, Lzi/x7;

    const-string v4, "LONG"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lzi/x7;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lzi/x7;->c:Lzi/x7;

    new-instance v4, Lzi/x7;

    const-string v6, "STRING"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lzi/x7;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lzi/x7;->d:Lzi/x7;

    new-instance v6, Lzi/x7;

    const-string v8, "BOOLEAN"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lzi/x7;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lzi/x7;->e:Lzi/x7;

    new-array v8, v9, [Lzi/x7;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lzi/x7;->f:[Lzi/x7;

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

    iput p3, p0, Lzi/x7;->a:I

    return-void
.end method

.method public static a(I)Lzi/x7;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lzi/x7;->e:Lzi/x7;

    return-object p0

    :cond_1
    sget-object p0, Lzi/x7;->d:Lzi/x7;

    return-object p0

    :cond_2
    sget-object p0, Lzi/x7;->c:Lzi/x7;

    return-object p0

    :cond_3
    sget-object p0, Lzi/x7;->b:Lzi/x7;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lzi/x7;
    .locals 1

    const-class v0, Lzi/x7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzi/x7;

    return-object p0
.end method

.method public static values()[Lzi/x7;
    .locals 1

    sget-object v0, Lzi/x7;->f:[Lzi/x7;

    invoke-virtual {v0}, [Lzi/x7;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzi/x7;

    return-object v0
.end method
