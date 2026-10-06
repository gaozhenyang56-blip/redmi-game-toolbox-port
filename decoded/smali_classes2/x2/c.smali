.class public final enum Lx2/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lx2/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lx2/c;

.field public static final enum b:Lx2/c;

.field private static final synthetic c:[Lx2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lx2/c;

    const-string v1, "RISK_APP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lx2/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx2/c;->a:Lx2/c;

    new-instance v1, Lx2/c;

    const-string v3, "TROJAN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lx2/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lx2/c;->b:Lx2/c;

    const/4 v3, 0x2

    new-array v3, v3, [Lx2/c;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lx2/c;->c:[Lx2/c;

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

.method public static valueOf(Ljava/lang/String;)Lx2/c;
    .locals 1

    const-class v0, Lx2/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lx2/c;

    return-object p0
.end method

.method public static values()[Lx2/c;
    .locals 1

    sget-object v0, Lx2/c;->c:[Lx2/c;

    invoke-virtual {v0}, [Lx2/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx2/c;

    return-object v0
.end method
