.class public final enum Ljb/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljb/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ljb/j;

.field public static final enum b:Ljb/j;

.field public static final enum c:Ljb/j;

.field private static final synthetic d:[Ljb/j;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljb/j;

    const-string v1, "THIRD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljb/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljb/j;->a:Ljb/j;

    new-instance v1, Ljb/j;

    const-string v3, "SYSTEM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljb/j;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljb/j;->b:Ljb/j;

    new-instance v3, Ljb/j;

    const-string v5, "LOCKED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljb/j;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljb/j;->c:Ljb/j;

    const/4 v5, 0x3

    new-array v5, v5, [Ljb/j;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Ljb/j;->d:[Ljb/j;

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

.method public static valueOf(Ljava/lang/String;)Ljb/j;
    .locals 1

    const-class v0, Ljb/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljb/j;

    return-object p0
.end method

.method public static values()[Ljb/j;
    .locals 1

    sget-object v0, Ljb/j;->d:[Ljb/j;

    invoke-virtual {v0}, [Ljb/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljb/j;

    return-object v0
.end method
