.class public final enum Ln6/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln6/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Ln6/e;

.field public static final enum c:Ln6/e;

.field public static final enum d:Ln6/e;

.field public static final enum e:Ln6/e;

.field private static final synthetic f:[Ln6/e;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Ln6/e;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "noType"

    invoke-direct {v0, v1, v2, v3}, Ln6/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ln6/e;->b:Ln6/e;

    new-instance v1, Ln6/e;

    const-string v3, "REDPOINT"

    const/4 v4, 0x1

    const-string v5, "newRedPointType"

    invoke-direct {v1, v3, v4, v5}, Ln6/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Ln6/e;->c:Ln6/e;

    new-instance v3, Ln6/e;

    const-string v5, "NEWFUNCTION"

    const/4 v6, 0x2

    const-string v7, "newLogoType"

    invoke-direct {v3, v5, v6, v7}, Ln6/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Ln6/e;->d:Ln6/e;

    new-instance v5, Ln6/e;

    const-string v7, "BUBBLETEXT"

    const/4 v8, 0x3

    const-string v9, "bubbleWritingType"

    invoke-direct {v5, v7, v8, v9}, Ln6/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Ln6/e;->e:Ln6/e;

    const/4 v7, 0x4

    new-array v7, v7, [Ln6/e;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Ln6/e;->f:[Ln6/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ln6/e;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ln6/e;
    .locals 1

    const-class v0, Ln6/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln6/e;

    return-object p0
.end method

.method public static values()[Ln6/e;
    .locals 1

    sget-object v0, Ln6/e;->f:[Ln6/e;

    invoke-virtual {v0}, [Ln6/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln6/e;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ln6/e;->a:Ljava/lang/String;

    return-object v0
.end method
