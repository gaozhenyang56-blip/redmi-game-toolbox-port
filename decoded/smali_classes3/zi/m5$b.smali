.class public final enum Lzi/m5$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzi/m5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzi/m5$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lzi/m5$b;

.field public static final enum c:Lzi/m5$b;

.field public static final enum d:Lzi/m5$b;

.field private static final synthetic e:[Lzi/m5$b;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lzi/m5$b;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lzi/m5$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lzi/m5$b;->b:Lzi/m5$b;

    new-instance v1, Lzi/m5$b;

    const-string v3, "ALLOWED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lzi/m5$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lzi/m5$b;->c:Lzi/m5$b;

    new-instance v3, Lzi/m5$b;

    const-string v5, "NOT_ALLOWED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lzi/m5$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lzi/m5$b;->d:Lzi/m5$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lzi/m5$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lzi/m5$b;->e:[Lzi/m5$b;

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

    iput p3, p0, Lzi/m5$b;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzi/m5$b;
    .locals 1

    const-class v0, Lzi/m5$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzi/m5$b;

    return-object p0
.end method

.method public static values()[Lzi/m5$b;
    .locals 1

    sget-object v0, Lzi/m5$b;->e:[Lzi/m5$b;

    invoke-virtual {v0}, [Lzi/m5$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzi/m5$b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lzi/m5$b;->a:I

    return v0
.end method
