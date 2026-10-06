.class public final enum Lcom/miui/gamebooster/model/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/gamebooster/model/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/gamebooster/model/r;

.field public static final enum b:Lcom/miui/gamebooster/model/r;

.field private static final synthetic c:[Lcom/miui/gamebooster/model/r;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/miui/gamebooster/model/r;

    const-string v1, "ENABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/gamebooster/model/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gamebooster/model/r;->a:Lcom/miui/gamebooster/model/r;

    new-instance v1, Lcom/miui/gamebooster/model/r;

    const-string v3, "DISABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/gamebooster/model/r;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/gamebooster/model/r;->b:Lcom/miui/gamebooster/model/r;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/miui/gamebooster/model/r;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/miui/gamebooster/model/r;->c:[Lcom/miui/gamebooster/model/r;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gamebooster/model/r;
    .locals 1

    const-class v0, Lcom/miui/gamebooster/model/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/gamebooster/model/r;

    return-object p0
.end method

.method public static values()[Lcom/miui/gamebooster/model/r;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/model/r;->c:[Lcom/miui/gamebooster/model/r;

    invoke-virtual {v0}, [Lcom/miui/gamebooster/model/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gamebooster/model/r;

    return-object v0
.end method
