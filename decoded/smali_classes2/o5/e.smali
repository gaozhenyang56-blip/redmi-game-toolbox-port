.class public final enum Lo5/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo5/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lo5/e;

.field public static final enum c:Lo5/e;

.field public static final enum d:Lo5/e;

.field public static final enum e:Lo5/e;

.field public static final enum f:Lo5/e;

.field private static final synthetic g:[Lo5/e;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lo5/e;

    const-string v1, "PERFORMANCE"

    const/4 v2, 0x0

    const v3, 0x7f1208a8

    invoke-direct {v0, v1, v2, v3}, Lo5/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo5/e;->b:Lo5/e;

    new-instance v1, Lo5/e;

    const-string v3, "INTERNET"

    const/4 v4, 0x1

    const v5, 0x7f1208a9

    invoke-direct {v1, v3, v4, v5}, Lo5/e;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lo5/e;->c:Lo5/e;

    new-instance v3, Lo5/e;

    const-string v5, "OPERATION"

    const/4 v6, 0x2

    const v7, 0x7f1208aa

    invoke-direct {v3, v5, v6, v7}, Lo5/e;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lo5/e;->d:Lo5/e;

    new-instance v5, Lo5/e;

    const-string v7, "CONSUME_POWER"

    const/4 v8, 0x3

    const v9, 0x7f1208ab

    invoke-direct {v5, v7, v8, v9}, Lo5/e;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lo5/e;->e:Lo5/e;

    new-instance v7, Lo5/e;

    const-string v9, "OTHER"

    const/4 v10, 0x4

    const v11, 0x7f1208ac

    invoke-direct {v7, v9, v10, v11}, Lo5/e;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lo5/e;->f:Lo5/e;

    const/4 v9, 0x5

    new-array v9, v9, [Lo5/e;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lo5/e;->g:[Lo5/e;

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

    iput p3, p0, Lo5/e;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo5/e;
    .locals 1

    const-class v0, Lo5/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo5/e;

    return-object p0
.end method

.method public static values()[Lo5/e;
    .locals 1

    sget-object v0, Lo5/e;->g:[Lo5/e;

    invoke-virtual {v0}, [Lo5/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo5/e;

    return-object v0
.end method
