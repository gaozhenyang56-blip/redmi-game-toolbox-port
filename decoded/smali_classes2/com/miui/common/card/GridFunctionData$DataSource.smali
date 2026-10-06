.class public final enum Lcom/miui/common/card/GridFunctionData$DataSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/GridFunctionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/common/card/GridFunctionData$DataSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/common/card/GridFunctionData$DataSource;

.field public static final enum RANDOM_RECOMMENDATION:Lcom/miui/common/card/GridFunctionData$DataSource;

.field public static final enum RECENT_USED:Lcom/miui/common/card/GridFunctionData$DataSource;

.field public static final enum SERVER_CONFIGURATION:Lcom/miui/common/card/GridFunctionData$DataSource;

.field public static final enum USER_SET:Lcom/miui/common/card/GridFunctionData$DataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/miui/common/card/GridFunctionData$DataSource;

    const-string v1, "USER_SET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/common/card/GridFunctionData$DataSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/common/card/GridFunctionData$DataSource;->USER_SET:Lcom/miui/common/card/GridFunctionData$DataSource;

    new-instance v1, Lcom/miui/common/card/GridFunctionData$DataSource;

    const-string v3, "SERVER_CONFIGURATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/common/card/GridFunctionData$DataSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/common/card/GridFunctionData$DataSource;->SERVER_CONFIGURATION:Lcom/miui/common/card/GridFunctionData$DataSource;

    new-instance v3, Lcom/miui/common/card/GridFunctionData$DataSource;

    const-string v5, "RECENT_USED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/common/card/GridFunctionData$DataSource;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/common/card/GridFunctionData$DataSource;->RECENT_USED:Lcom/miui/common/card/GridFunctionData$DataSource;

    new-instance v5, Lcom/miui/common/card/GridFunctionData$DataSource;

    const-string v7, "RANDOM_RECOMMENDATION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/miui/common/card/GridFunctionData$DataSource;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/miui/common/card/GridFunctionData$DataSource;->RANDOM_RECOMMENDATION:Lcom/miui/common/card/GridFunctionData$DataSource;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/miui/common/card/GridFunctionData$DataSource;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/miui/common/card/GridFunctionData$DataSource;->$VALUES:[Lcom/miui/common/card/GridFunctionData$DataSource;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/common/card/GridFunctionData$DataSource;
    .locals 1

    const-class v0, Lcom/miui/common/card/GridFunctionData$DataSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/common/card/GridFunctionData$DataSource;

    return-object p0
.end method

.method public static values()[Lcom/miui/common/card/GridFunctionData$DataSource;
    .locals 1

    sget-object v0, Lcom/miui/common/card/GridFunctionData$DataSource;->$VALUES:[Lcom/miui/common/card/GridFunctionData$DataSource;

    invoke-virtual {v0}, [Lcom/miui/common/card/GridFunctionData$DataSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/common/card/GridFunctionData$DataSource;

    return-object v0
.end method
