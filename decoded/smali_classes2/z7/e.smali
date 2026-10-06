.class public final enum Lz7/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz7/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lz7/e;

.field public static final enum c:Lz7/e;

.field public static final enum d:Lz7/e;

.field public static final enum e:Lz7/e;

.field public static final enum f:Lz7/e;

.field private static final synthetic g:[Lz7/e;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lz7/e;

    const-string v1, "TOUCH_MODE0"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lz7/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lz7/e;->b:Lz7/e;

    new-instance v1, Lz7/e;

    const-string v4, "TOUCH_MODE1"

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-direct {v1, v4, v5, v6}, Lz7/e;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lz7/e;->c:Lz7/e;

    new-instance v4, Lz7/e;

    const-string v7, "TOUCH_MODE2"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v6, v8}, Lz7/e;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lz7/e;->d:Lz7/e;

    new-instance v7, Lz7/e;

    const-string v9, "TOUCH_MODE3"

    const/4 v10, 0x5

    invoke-direct {v7, v9, v3, v10}, Lz7/e;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lz7/e;->e:Lz7/e;

    new-instance v9, Lz7/e;

    const-string v11, "TOUCH_MODE_PRO"

    const/4 v12, 0x6

    invoke-direct {v9, v11, v8, v12}, Lz7/e;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lz7/e;->f:Lz7/e;

    new-array v10, v10, [Lz7/e;

    aput-object v0, v10, v2

    aput-object v1, v10, v5

    aput-object v4, v10, v6

    aput-object v7, v10, v3

    aput-object v9, v10, v8

    sput-object v10, Lz7/e;->g:[Lz7/e;

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

    iput p3, p0, Lz7/e;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz7/e;
    .locals 1

    const-class v0, Lz7/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz7/e;

    return-object p0
.end method

.method public static values()[Lz7/e;
    .locals 1

    sget-object v0, Lz7/e;->g:[Lz7/e;

    invoke-virtual {v0}, [Lz7/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz7/e;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lz7/e;->a:I

    return v0
.end method
