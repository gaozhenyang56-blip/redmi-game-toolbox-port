.class public final enum Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/service/DeviceInfoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

.field public static final enum b:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

.field public static final enum c:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

.field public static final enum d:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

.field public static final enum e:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

.field public static final enum f:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

.field public static final enum g:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

.field private static final synthetic h:[Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

    const-string v1, "ERROR_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;->a:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

    new-instance v1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

    const-string v3, "ERROR_NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;->b:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

    new-instance v3, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

    const-string v5, "ERROR_APP_PERMISSION_FORBIDDEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;->c:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

    new-instance v5, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

    const-string v7, "ERROR_TIME_OUT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;->d:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

    new-instance v7, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

    const-string v9, "ERROR_NOT_SUPPORTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;->e:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

    new-instance v9, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

    const-string v11, "ERROR_EXECUTION_EXCEPTION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;->f:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

    new-instance v11, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

    const-string v13, "ERROR_QUERY_TOO_FREQUENTLY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;->g:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;->h:[Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;->h:[Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/service/DeviceInfoResult$c;

    return-object v0
.end method
