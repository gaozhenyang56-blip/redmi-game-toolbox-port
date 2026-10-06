.class public final enum Lni/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lni/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lni/i;

.field public static final enum b:Lni/i;

.field public static final enum c:Lni/i;

.field public static final enum d:Lni/i;

.field public static final enum e:Lni/i;

.field private static final synthetic f:[Lni/i;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lni/i;

    const-string v1, "WIFI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lni/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lni/i;->a:Lni/i;

    new-instance v1, Lni/i;

    const-string v3, "MN2G"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lni/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lni/i;->b:Lni/i;

    new-instance v3, Lni/i;

    const-string v5, "MN3G"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lni/i;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lni/i;->c:Lni/i;

    new-instance v5, Lni/i;

    const-string v7, "MN4G"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lni/i;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lni/i;->d:Lni/i;

    new-instance v7, Lni/i;

    const-string v9, "NONE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lni/i;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lni/i;->e:Lni/i;

    const/4 v9, 0x5

    new-array v9, v9, [Lni/i;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lni/i;->f:[Lni/i;

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

.method public static valueOf(Ljava/lang/String;)Lni/i;
    .locals 1

    const-class v0, Lni/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lni/i;

    return-object p0
.end method

.method public static values()[Lni/i;
    .locals 1

    sget-object v0, Lni/i;->f:[Lni/i;

    invoke-virtual {v0}, [Lni/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lni/i;

    return-object v0
.end method
