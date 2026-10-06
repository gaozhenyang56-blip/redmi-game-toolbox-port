.class public final enum Ln6/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln6/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ln6/b;

.field public static final enum b:Ln6/b;

.field public static final enum c:Ln6/b;

.field private static final synthetic d:[Ln6/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ln6/b;

    const-string v1, "GAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln6/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln6/b;->a:Ln6/b;

    new-instance v1, Ln6/b;

    const-string v3, "VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ln6/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ln6/b;->b:Ln6/b;

    new-instance v3, Ln6/b;

    const-string v5, "VIDEO_ALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ln6/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ln6/b;->c:Ln6/b;

    const/4 v5, 0x3

    new-array v5, v5, [Ln6/b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Ln6/b;->d:[Ln6/b;

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

.method public static valueOf(Ljava/lang/String;)Ln6/b;
    .locals 1

    const-class v0, Ln6/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln6/b;

    return-object p0
.end method

.method public static values()[Ln6/b;
    .locals 1

    sget-object v0, Ln6/b;->d:[Ln6/b;

    invoke-virtual {v0}, [Ln6/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln6/b;

    return-object v0
.end method
