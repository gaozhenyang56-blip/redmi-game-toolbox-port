.class public final enum Lbi/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbi/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lbi/g;

.field public static final enum c:Lbi/g;

.field public static final enum d:Lbi/g;

.field public static final enum e:Lbi/g;

.field public static final enum f:Lbi/g;

.field public static final enum g:Lbi/g;

.field public static final enum h:Lbi/g;

.field public static final enum i:Lbi/g;

.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lbi/g;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic k:[Lbi/g;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lbi/g;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbi/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbi/g;->b:Lbi/g;

    new-instance v1, Lbi/g;

    const-string v3, "GPS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lbi/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbi/g;->c:Lbi/g;

    new-instance v3, Lbi/g;

    const-string v5, "SBAS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lbi/g;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lbi/g;->d:Lbi/g;

    new-instance v5, Lbi/g;

    const-string v7, "GLONASS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lbi/g;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lbi/g;->e:Lbi/g;

    new-instance v7, Lbi/g;

    const-string v9, "QZSS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lbi/g;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lbi/g;->f:Lbi/g;

    new-instance v9, Lbi/g;

    const-string v11, "BEIDOU"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lbi/g;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lbi/g;->g:Lbi/g;

    new-instance v11, Lbi/g;

    const-string v13, "GALILEO"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lbi/g;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lbi/g;->h:Lbi/g;

    new-instance v13, Lbi/g;

    const-string v15, "NAVIC"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lbi/g;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lbi/g;->i:Lbi/g;

    const/16 v15, 0x8

    new-array v15, v15, [Lbi/g;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lbi/g;->k:[Lbi/g;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbi/g;->j:Ljava/util/Map;

    invoke-static {}, Lbi/g;->values()[Lbi/g;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lbi/g;->j:Ljava/util/Map;

    iget v5, v3, Lbi/g;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
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

    iput p3, p0, Lbi/g;->a:I

    return-void
.end method

.method protected static a(I)Lbi/g;
    .locals 1

    sget-object v0, Lbi/g;->j:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbi/g;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lbi/g;
    .locals 1

    const-class v0, Lbi/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbi/g;

    return-object p0
.end method

.method public static values()[Lbi/g;
    .locals 1

    sget-object v0, Lbi/g;->k:[Lbi/g;

    invoke-virtual {v0}, [Lbi/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbi/g;

    return-object v0
.end method
