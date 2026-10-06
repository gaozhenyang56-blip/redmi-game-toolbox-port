.class public final enum Loj/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Loj/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Loj/j;

.field public static final enum b:Loj/j;

.field public static final enum c:Loj/j;

.field private static final synthetic d:[Loj/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Loj/j;

    const-string v1, "SYNCHRONIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Loj/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Loj/j;->a:Loj/j;

    new-instance v0, Loj/j;

    const-string v1, "PUBLICATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Loj/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Loj/j;->b:Loj/j;

    new-instance v0, Loj/j;

    const-string v1, "NONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Loj/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Loj/j;->c:Loj/j;

    invoke-static {}, Loj/j;->a()[Loj/j;

    move-result-object v0

    sput-object v0, Loj/j;->d:[Loj/j;

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

.method private static final synthetic a()[Loj/j;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Loj/j;

    sget-object v1, Loj/j;->a:Loj/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Loj/j;->b:Loj/j;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Loj/j;->c:Loj/j;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Loj/j;
    .locals 1

    const-class v0, Loj/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Loj/j;

    return-object p0
.end method

.method public static values()[Loj/j;
    .locals 1

    sget-object v0, Loj/j;->d:[Loj/j;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Loj/j;

    return-object v0
.end method
