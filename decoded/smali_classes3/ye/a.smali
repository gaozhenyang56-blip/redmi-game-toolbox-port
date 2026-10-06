.class public final enum Lye/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lye/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lye/a;

.field public static final enum b:Lye/a;

.field public static final enum c:Lye/a;

.field private static final synthetic d:[Lye/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lye/a;

    const-string v1, "CN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lye/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lye/a;->a:Lye/a;

    new-instance v1, Lye/a;

    const-string v3, "GLOBAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lye/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lye/a;->b:Lye/a;

    new-instance v3, Lye/a;

    const-string v5, "ALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lye/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lye/a;->c:Lye/a;

    const/4 v5, 0x3

    new-array v5, v5, [Lye/a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lye/a;->d:[Lye/a;

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

.method public static valueOf(Ljava/lang/String;)Lye/a;
    .locals 1

    const-class v0, Lye/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lye/a;

    return-object p0
.end method

.method public static values()[Lye/a;
    .locals 1

    sget-object v0, Lye/a;->d:[Lye/a;

    invoke-virtual {v0}, [Lye/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lye/a;

    return-object v0
.end method
