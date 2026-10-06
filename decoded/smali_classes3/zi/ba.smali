.class public final enum Lzi/ba;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzi/ba;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lzi/ba;

.field public static final enum b:Lzi/ba;

.field public static final enum c:Lzi/ba;

.field public static final enum d:Lzi/ba;

.field public static final enum e:Lzi/ba;

.field private static final synthetic f:[Lzi/ba;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lzi/ba;

    const-string v1, "China"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzi/ba;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzi/ba;->a:Lzi/ba;

    new-instance v1, Lzi/ba;

    const-string v3, "Global"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzi/ba;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzi/ba;->b:Lzi/ba;

    new-instance v3, Lzi/ba;

    const-string v5, "Europe"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzi/ba;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzi/ba;->c:Lzi/ba;

    new-instance v5, Lzi/ba;

    const-string v7, "Russia"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lzi/ba;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lzi/ba;->d:Lzi/ba;

    new-instance v7, Lzi/ba;

    const-string v9, "India"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lzi/ba;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lzi/ba;->e:Lzi/ba;

    const/4 v9, 0x5

    new-array v9, v9, [Lzi/ba;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lzi/ba;->f:[Lzi/ba;

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

.method public static valueOf(Ljava/lang/String;)Lzi/ba;
    .locals 1

    const-class v0, Lzi/ba;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzi/ba;

    return-object p0
.end method

.method public static values()[Lzi/ba;
    .locals 1

    sget-object v0, Lzi/ba;->f:[Lzi/ba;

    invoke-virtual {v0}, [Lzi/ba;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzi/ba;

    return-object v0
.end method
