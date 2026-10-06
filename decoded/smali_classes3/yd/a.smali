.class public final enum Lyd/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyd/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lyd/a;

.field public static final enum b:Lyd/a;

.field public static final enum c:Lyd/a;

.field public static final enum d:Lyd/a;

.field public static final enum e:Lyd/a;

.field private static final synthetic f:[Lyd/a;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lyd/a;

    const-string v1, "APP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyd/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyd/a;->a:Lyd/a;

    new-instance v1, Lyd/a;

    const-string v3, "ABNORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lyd/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyd/a;->b:Lyd/a;

    new-instance v3, Lyd/a;

    const-string v5, "SYSTEM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lyd/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lyd/a;->c:Lyd/a;

    new-instance v5, Lyd/a;

    const-string v7, "DETAILS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lyd/a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lyd/a;->d:Lyd/a;

    new-instance v7, Lyd/a;

    const-string v9, "BLANK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lyd/a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lyd/a;->e:Lyd/a;

    const/4 v9, 0x5

    new-array v9, v9, [Lyd/a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lyd/a;->f:[Lyd/a;

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

.method public static valueOf(Ljava/lang/String;)Lyd/a;
    .locals 1

    const-class v0, Lyd/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyd/a;

    return-object p0
.end method

.method public static values()[Lyd/a;
    .locals 1

    sget-object v0, Lyd/a;->f:[Lyd/a;

    invoke-virtual {v0}, [Lyd/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyd/a;

    return-object v0
.end method
