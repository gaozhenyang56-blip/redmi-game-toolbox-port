.class public final enum Lw2/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw2/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lw2/r;

.field public static final enum c:Lw2/r;

.field public static final enum d:Lw2/r;

.field public static final enum e:Lw2/r;

.field private static final synthetic f:[Lw2/r;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lw2/r;

    const-string v1, "SAFE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lw2/r;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lw2/r;->b:Lw2/r;

    new-instance v1, Lw2/r;

    const-string v3, "RISK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lw2/r;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lw2/r;->c:Lw2/r;

    new-instance v3, Lw2/r;

    const-string v5, "DANGER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lw2/r;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lw2/r;->d:Lw2/r;

    new-instance v5, Lw2/r;

    const-string v7, "INTERRUPT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lw2/r;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lw2/r;->e:Lw2/r;

    const/4 v7, 0x4

    new-array v7, v7, [Lw2/r;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lw2/r;->f:[Lw2/r;

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

    iput p3, p0, Lw2/r;->a:I

    return-void
.end method

.method public static a(I)Lw2/r;
    .locals 5

    invoke-static {}, Lw2/r;->values()[Lw2/r;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lw2/r;->c()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lw2/r;->b()Lw2/r;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lw2/r;
    .locals 5

    invoke-static {}, Lw2/r;->values()[Lw2/r;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lw2/r;->c()I

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lw2/r;
    .locals 1

    const-class v0, Lw2/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw2/r;

    return-object p0
.end method

.method public static values()[Lw2/r;
    .locals 1

    sget-object v0, Lw2/r;->f:[Lw2/r;

    invoke-virtual {v0}, [Lw2/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw2/r;

    return-object v0
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, Lw2/r;->a:I

    return v0
.end method
