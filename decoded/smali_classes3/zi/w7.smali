.class public final enum Lzi/w7;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzi/w7;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lzi/w7;

.field public static final enum c:Lzi/w7;

.field private static final synthetic d:[Lzi/w7;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lzi/w7;

    const-string v1, "MISC_CONFIG"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lzi/w7;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lzi/w7;->b:Lzi/w7;

    new-instance v1, Lzi/w7;

    const-string v4, "PLUGIN_CONFIG"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lzi/w7;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lzi/w7;->c:Lzi/w7;

    new-array v4, v5, [Lzi/w7;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lzi/w7;->d:[Lzi/w7;

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

    iput p3, p0, Lzi/w7;->a:I

    return-void
.end method

.method public static b(I)Lzi/w7;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lzi/w7;->c:Lzi/w7;

    return-object p0

    :cond_1
    sget-object p0, Lzi/w7;->b:Lzi/w7;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lzi/w7;
    .locals 1

    const-class v0, Lzi/w7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzi/w7;

    return-object p0
.end method

.method public static values()[Lzi/w7;
    .locals 1

    sget-object v0, Lzi/w7;->d:[Lzi/w7;

    invoke-virtual {v0}, [Lzi/w7;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzi/w7;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lzi/w7;->a:I

    return v0
.end method
