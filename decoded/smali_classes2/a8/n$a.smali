.class public final enum La8/n$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La8/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La8/n$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La8/n$a;

.field public static final enum b:La8/n$a;

.field public static final enum c:La8/n$a;

.field private static final synthetic d:[La8/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, La8/n$a;

    const-string v1, "TABLE_GAME_INFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La8/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La8/n$a;->a:La8/n$a;

    new-instance v1, La8/n$a;

    const-string v3, "TABLE_GAME_INFO_VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, La8/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, La8/n$a;->b:La8/n$a;

    new-instance v3, La8/n$a;

    const-string v5, "TABLE_OP_TRACE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, La8/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, La8/n$a;->c:La8/n$a;

    const/4 v5, 0x3

    new-array v5, v5, [La8/n$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, La8/n$a;->d:[La8/n$a;

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

.method public static valueOf(Ljava/lang/String;)La8/n$a;
    .locals 1

    const-class v0, La8/n$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La8/n$a;

    return-object p0
.end method

.method public static values()[La8/n$a;
    .locals 1

    sget-object v0, La8/n$a;->d:[La8/n$a;

    invoke-virtual {v0}, [La8/n$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La8/n$a;

    return-object v0
.end method
