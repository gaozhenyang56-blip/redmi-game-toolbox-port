.class public final enum Lw0/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw0/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lw0/b;

.field public static final enum b:Lw0/b;

.field private static final synthetic c:[Lw0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lw0/b;

    const-string v1, "ASC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw0/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw0/b;->a:Lw0/b;

    new-instance v1, Lw0/b;

    const-string v3, "DESC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lw0/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw0/b;->b:Lw0/b;

    const/4 v3, 0x2

    new-array v3, v3, [Lw0/b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lw0/b;->c:[Lw0/b;

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

.method public static valueOf(Ljava/lang/String;)Lw0/b;
    .locals 1

    const-class v0, Lw0/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw0/b;

    return-object p0
.end method

.method public static values()[Lw0/b;
    .locals 1

    sget-object v0, Lw0/b;->c:[Lw0/b;

    invoke-virtual {v0}, [Lw0/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw0/b;

    return-object v0
.end method
