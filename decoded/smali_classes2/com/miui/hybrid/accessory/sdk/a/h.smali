.class public final enum Lcom/miui/hybrid/accessory/sdk/a/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/hybrid/accessory/sdk/a/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/hybrid/accessory/sdk/a/h;

.field public static final enum b:Lcom/miui/hybrid/accessory/sdk/a/h;

.field public static final enum c:Lcom/miui/hybrid/accessory/sdk/a/h;

.field public static final enum d:Lcom/miui/hybrid/accessory/sdk/a/h;

.field public static final enum e:Lcom/miui/hybrid/accessory/sdk/a/h;

.field public static final enum f:Lcom/miui/hybrid/accessory/sdk/a/h;

.field private static final synthetic h:[Lcom/miui/hybrid/accessory/sdk/a/h;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/miui/hybrid/accessory/sdk/a/h;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/miui/hybrid/accessory/sdk/a/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/h;->a:Lcom/miui/hybrid/accessory/sdk/a/h;

    new-instance v1, Lcom/miui/hybrid/accessory/sdk/a/h;

    const-string v3, "NO_UPDATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/miui/hybrid/accessory/sdk/a/h;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/miui/hybrid/accessory/sdk/a/h;->b:Lcom/miui/hybrid/accessory/sdk/a/h;

    new-instance v3, Lcom/miui/hybrid/accessory/sdk/a/h;

    const-string v5, "NO_AVAILABLE_PACKAGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/miui/hybrid/accessory/sdk/a/h;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/miui/hybrid/accessory/sdk/a/h;->c:Lcom/miui/hybrid/accessory/sdk/a/h;

    new-instance v5, Lcom/miui/hybrid/accessory/sdk/a/h;

    const-string v7, "NO_ANY_PACKAGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/miui/hybrid/accessory/sdk/a/h;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/miui/hybrid/accessory/sdk/a/h;->d:Lcom/miui/hybrid/accessory/sdk/a/h;

    new-instance v7, Lcom/miui/hybrid/accessory/sdk/a/h;

    const-string v9, "NEED_CHECK_UPDATE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/miui/hybrid/accessory/sdk/a/h;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/miui/hybrid/accessory/sdk/a/h;->e:Lcom/miui/hybrid/accessory/sdk/a/h;

    new-instance v9, Lcom/miui/hybrid/accessory/sdk/a/h;

    const-string v11, "OFFLINE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/miui/hybrid/accessory/sdk/a/h;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/miui/hybrid/accessory/sdk/a/h;->f:Lcom/miui/hybrid/accessory/sdk/a/h;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/miui/hybrid/accessory/sdk/a/h;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/miui/hybrid/accessory/sdk/a/h;->h:[Lcom/miui/hybrid/accessory/sdk/a/h;

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

    iput p3, p0, Lcom/miui/hybrid/accessory/sdk/a/h;->g:I

    return-void
.end method

.method public static a(I)Lcom/miui/hybrid/accessory/sdk/a/h;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/miui/hybrid/accessory/sdk/a/h;->f:Lcom/miui/hybrid/accessory/sdk/a/h;

    return-object p0

    :cond_1
    sget-object p0, Lcom/miui/hybrid/accessory/sdk/a/h;->e:Lcom/miui/hybrid/accessory/sdk/a/h;

    return-object p0

    :cond_2
    sget-object p0, Lcom/miui/hybrid/accessory/sdk/a/h;->d:Lcom/miui/hybrid/accessory/sdk/a/h;

    return-object p0

    :cond_3
    sget-object p0, Lcom/miui/hybrid/accessory/sdk/a/h;->c:Lcom/miui/hybrid/accessory/sdk/a/h;

    return-object p0

    :cond_4
    sget-object p0, Lcom/miui/hybrid/accessory/sdk/a/h;->b:Lcom/miui/hybrid/accessory/sdk/a/h;

    return-object p0

    :cond_5
    sget-object p0, Lcom/miui/hybrid/accessory/sdk/a/h;->a:Lcom/miui/hybrid/accessory/sdk/a/h;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/hybrid/accessory/sdk/a/h;
    .locals 1

    const-class v0, Lcom/miui/hybrid/accessory/sdk/a/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/hybrid/accessory/sdk/a/h;

    return-object p0
.end method

.method public static values()[Lcom/miui/hybrid/accessory/sdk/a/h;
    .locals 1

    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/h;->h:[Lcom/miui/hybrid/accessory/sdk/a/h;

    invoke-virtual {v0}, [Lcom/miui/hybrid/accessory/sdk/a/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/hybrid/accessory/sdk/a/h;

    return-object v0
.end method
