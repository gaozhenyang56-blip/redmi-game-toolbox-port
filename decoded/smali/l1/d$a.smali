.class public final enum Ll1/d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ll1/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ll1/d$a;

.field public static final enum b:Ll1/d$a;

.field public static final enum c:Ll1/d$a;

.field public static final enum d:Ll1/d$a;

.field public static final enum e:Ll1/d$a;

.field public static final enum f:Ll1/d$a;

.field public static final enum g:Ll1/d$a;

.field private static final synthetic h:[Ll1/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Ll1/d$a;

    const-string v1, "PRE_COMP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ll1/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll1/d$a;->a:Ll1/d$a;

    new-instance v1, Ll1/d$a;

    const-string v3, "SOLID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ll1/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ll1/d$a;->b:Ll1/d$a;

    new-instance v3, Ll1/d$a;

    const-string v5, "IMAGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ll1/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ll1/d$a;->c:Ll1/d$a;

    new-instance v5, Ll1/d$a;

    const-string v7, "NULL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ll1/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ll1/d$a;->d:Ll1/d$a;

    new-instance v7, Ll1/d$a;

    const-string v9, "SHAPE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ll1/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ll1/d$a;->e:Ll1/d$a;

    new-instance v9, Ll1/d$a;

    const-string v11, "TEXT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ll1/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ll1/d$a;->f:Ll1/d$a;

    new-instance v11, Ll1/d$a;

    const-string v13, "UNKNOWN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ll1/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ll1/d$a;->g:Ll1/d$a;

    const/4 v13, 0x7

    new-array v13, v13, [Ll1/d$a;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Ll1/d$a;->h:[Ll1/d$a;

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

.method public static valueOf(Ljava/lang/String;)Ll1/d$a;
    .locals 1

    const-class v0, Ll1/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll1/d$a;

    return-object p0
.end method

.method public static values()[Ll1/d$a;
    .locals 1

    sget-object v0, Ll1/d$a;->h:[Ll1/d$a;

    invoke-virtual {v0}, [Ll1/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll1/d$a;

    return-object v0
.end method
