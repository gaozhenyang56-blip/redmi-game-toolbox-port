.class public final enum Lk1/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk1/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lk1/f;

.field public static final enum b:Lk1/f;

.field private static final synthetic c:[Lk1/f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lk1/f;

    const-string v1, "LINEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lk1/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk1/f;->a:Lk1/f;

    new-instance v1, Lk1/f;

    const-string v3, "RADIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lk1/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lk1/f;->b:Lk1/f;

    const/4 v3, 0x2

    new-array v3, v3, [Lk1/f;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lk1/f;->c:[Lk1/f;

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

.method public static valueOf(Ljava/lang/String;)Lk1/f;
    .locals 1

    const-class v0, Lk1/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk1/f;

    return-object p0
.end method

.method public static values()[Lk1/f;
    .locals 1

    sget-object v0, Lk1/f;->c:[Lk1/f;

    invoke-virtual {v0}, [Lk1/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk1/f;

    return-object v0
.end method
