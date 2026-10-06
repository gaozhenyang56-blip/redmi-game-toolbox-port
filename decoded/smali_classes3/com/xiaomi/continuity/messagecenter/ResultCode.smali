.class public final enum Lcom/xiaomi/continuity/messagecenter/ResultCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/continuity/messagecenter/ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/continuity/messagecenter/ResultCode;

.field public static final enum ERROR:Lcom/xiaomi/continuity/messagecenter/ResultCode;

.field public static final enum INVOKE_AUTH_FAILED:Lcom/xiaomi/continuity/messagecenter/ResultCode;

.field public static final enum NO_ONLINE_DEVICE:Lcom/xiaomi/continuity/messagecenter/ResultCode;

.field public static final enum PUBLISH_CONTENT_ERROR:Lcom/xiaomi/continuity/messagecenter/ResultCode;

.field public static final enum SEND_MESSAGE_RELIABLE_ARRIVE_CODE:Lcom/xiaomi/continuity/messagecenter/ResultCode;

.field public static final enum SEND_MESSAGE_UNRELIABLE_ARRIVE_CODE:Lcom/xiaomi/continuity/messagecenter/ResultCode;

.field public static final enum SUCCESS:Lcom/xiaomi/continuity/messagecenter/ResultCode;

.field public static final enum UNKNOWN:Lcom/xiaomi/continuity/messagecenter/ResultCode;


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mResultCode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/xiaomi/continuity/messagecenter/ResultCode;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/16 v3, -0x270f

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/continuity/messagecenter/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/continuity/messagecenter/ResultCode;->UNKNOWN:Lcom/xiaomi/continuity/messagecenter/ResultCode;

    new-instance v1, Lcom/xiaomi/continuity/messagecenter/ResultCode;

    const-string v3, "PUBLISH_CONTENT_ERROR"

    const/4 v4, 0x1

    const/4 v5, -0x4

    const-string v6, "Publish message error"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/xiaomi/continuity/messagecenter/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/xiaomi/continuity/messagecenter/ResultCode;->PUBLISH_CONTENT_ERROR:Lcom/xiaomi/continuity/messagecenter/ResultCode;

    new-instance v3, Lcom/xiaomi/continuity/messagecenter/ResultCode;

    const-string v5, "NO_ONLINE_DEVICE"

    const/4 v6, 0x2

    const/4 v7, -0x3

    const-string v8, "No online device"

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/xiaomi/continuity/messagecenter/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/xiaomi/continuity/messagecenter/ResultCode;->NO_ONLINE_DEVICE:Lcom/xiaomi/continuity/messagecenter/ResultCode;

    new-instance v5, Lcom/xiaomi/continuity/messagecenter/ResultCode;

    const-string v7, "INVOKE_AUTH_FAILED"

    const/4 v8, 0x3

    const/4 v9, -0x2

    const-string v10, "No permission to call this method"

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/xiaomi/continuity/messagecenter/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/xiaomi/continuity/messagecenter/ResultCode;->INVOKE_AUTH_FAILED:Lcom/xiaomi/continuity/messagecenter/ResultCode;

    new-instance v7, Lcom/xiaomi/continuity/messagecenter/ResultCode;

    const-string v9, "ERROR"

    const/4 v10, 0x4

    const/4 v11, -0x1

    const-string v12, "Error"

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/xiaomi/continuity/messagecenter/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/xiaomi/continuity/messagecenter/ResultCode;->ERROR:Lcom/xiaomi/continuity/messagecenter/ResultCode;

    new-instance v9, Lcom/xiaomi/continuity/messagecenter/ResultCode;

    const-string v11, "SUCCESS"

    const/4 v12, 0x5

    const-string v13, "Success"

    invoke-direct {v9, v11, v12, v2, v13}, Lcom/xiaomi/continuity/messagecenter/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/xiaomi/continuity/messagecenter/ResultCode;->SUCCESS:Lcom/xiaomi/continuity/messagecenter/ResultCode;

    new-instance v11, Lcom/xiaomi/continuity/messagecenter/ResultCode;

    const-string v13, "SEND_MESSAGE_RELIABLE_ARRIVE_CODE"

    const/4 v14, 0x6

    const-string v15, "Reliable arrive"

    invoke-direct {v11, v13, v14, v4, v15}, Lcom/xiaomi/continuity/messagecenter/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/xiaomi/continuity/messagecenter/ResultCode;->SEND_MESSAGE_RELIABLE_ARRIVE_CODE:Lcom/xiaomi/continuity/messagecenter/ResultCode;

    new-instance v13, Lcom/xiaomi/continuity/messagecenter/ResultCode;

    const-string v15, "SEND_MESSAGE_UNRELIABLE_ARRIVE_CODE"

    const/4 v14, 0x7

    const-string v12, "Already send\uff0cnot guaranteed whether the peer receives "

    invoke-direct {v13, v15, v14, v6, v12}, Lcom/xiaomi/continuity/messagecenter/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/xiaomi/continuity/messagecenter/ResultCode;->SEND_MESSAGE_UNRELIABLE_ARRIVE_CODE:Lcom/xiaomi/continuity/messagecenter/ResultCode;

    const/16 v12, 0x8

    new-array v12, v12, [Lcom/xiaomi/continuity/messagecenter/ResultCode;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    sput-object v12, Lcom/xiaomi/continuity/messagecenter/ResultCode;->$VALUES:[Lcom/xiaomi/continuity/messagecenter/ResultCode;

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

    iput p3, p0, Lcom/xiaomi/continuity/messagecenter/ResultCode;->mResultCode:I

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/continuity/messagecenter/ResultCode;->mMessage:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/continuity/messagecenter/ResultCode;->mResultCode:I

    iput-object p4, p0, Lcom/xiaomi/continuity/messagecenter/ResultCode;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public static fromInt(I)Lcom/xiaomi/continuity/messagecenter/ResultCode;
    .locals 5

    invoke-static {}, Lcom/xiaomi/continuity/messagecenter/ResultCode;->values()[Lcom/xiaomi/continuity/messagecenter/ResultCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/xiaomi/continuity/messagecenter/ResultCode;->mResultCode:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/xiaomi/continuity/messagecenter/ResultCode;->UNKNOWN:Lcom/xiaomi/continuity/messagecenter/ResultCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/continuity/messagecenter/ResultCode;
    .locals 1

    const-class v0, Lcom/xiaomi/continuity/messagecenter/ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/continuity/messagecenter/ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/continuity/messagecenter/ResultCode;
    .locals 1

    sget-object v0, Lcom/xiaomi/continuity/messagecenter/ResultCode;->$VALUES:[Lcom/xiaomi/continuity/messagecenter/ResultCode;

    invoke-virtual {v0}, [Lcom/xiaomi/continuity/messagecenter/ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/continuity/messagecenter/ResultCode;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/continuity/messagecenter/ResultCode;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/continuity/messagecenter/ResultCode;->mResultCode:I

    return v0
.end method
