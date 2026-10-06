.class public final enum Lzf/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzf/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lzf/g;

.field public static final enum b:Lzf/g;

.field public static final enum c:Lzf/g;

.field public static final enum d:Lzf/g;

.field private static final synthetic e:[Lzf/g;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lzf/g;

    const-string v1, "PREDICT_MANUAL_ITEM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzf/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzf/g;->a:Lzf/g;

    new-instance v1, Lzf/g;

    const-string v3, "PREDICT_AUTO_ITEM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzf/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzf/g;->b:Lzf/g;

    new-instance v3, Lzf/g;

    const-string v5, "PREDICT_SYSTEM_APP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzf/g;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzf/g;->c:Lzf/g;

    new-instance v5, Lzf/g;

    const-string v7, "PREDICT_MEMORY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lzf/g;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lzf/g;->d:Lzf/g;

    const/4 v7, 0x4

    new-array v7, v7, [Lzf/g;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lzf/g;->e:[Lzf/g;

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

.method public static valueOf(Ljava/lang/String;)Lzf/g;
    .locals 1

    const-class v0, Lzf/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzf/g;

    return-object p0
.end method

.method public static values()[Lzf/g;
    .locals 1

    sget-object v0, Lzf/g;->e:[Lzf/g;

    invoke-virtual {v0}, [Lzf/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzf/g;

    return-object v0
.end method
