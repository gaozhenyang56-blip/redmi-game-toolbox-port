.class public final enum Lzf/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzf/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lzf/b;

.field public static final enum b:Lzf/b;

.field public static final enum c:Lzf/b;

.field public static final enum d:Lzf/b;

.field public static final enum e:Lzf/b;

.field private static final synthetic f:[Lzf/b;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lzf/b;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzf/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzf/b;->a:Lzf/b;

    new-instance v1, Lzf/b;

    const-string v3, "SCANNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzf/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzf/b;->b:Lzf/b;

    new-instance v3, Lzf/b;

    const-string v5, "SCANNED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzf/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzf/b;->c:Lzf/b;

    new-instance v5, Lzf/b;

    const-string v7, "PREDICT_SCANNING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lzf/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lzf/b;->d:Lzf/b;

    new-instance v7, Lzf/b;

    const-string v9, "PREDICT_SCANNED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lzf/b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lzf/b;->e:Lzf/b;

    const/4 v9, 0x5

    new-array v9, v9, [Lzf/b;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lzf/b;->f:[Lzf/b;

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

.method public static valueOf(Ljava/lang/String;)Lzf/b;
    .locals 1

    const-class v0, Lzf/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzf/b;

    return-object p0
.end method

.method public static values()[Lzf/b;
    .locals 1

    sget-object v0, Lzf/b;->f:[Lzf/b;

    invoke-virtual {v0}, [Lzf/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzf/b;

    return-object v0
.end method
