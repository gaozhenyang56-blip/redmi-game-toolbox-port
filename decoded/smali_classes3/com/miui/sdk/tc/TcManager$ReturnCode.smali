.class public final enum Lcom/miui/sdk/tc/TcManager$ReturnCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/sdk/tc/TcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReturnCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/sdk/tc/TcManager$ReturnCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/sdk/tc/TcManager$ReturnCode;

.field public static final enum Error:Lcom/miui/sdk/tc/TcManager$ReturnCode;

.field public static final enum ErrorCreateFileFailed:Lcom/miui/sdk/tc/TcManager$ReturnCode;

.field public static final enum ErrorInvalidPackageName:Lcom/miui/sdk/tc/TcManager$ReturnCode;

.field public static final enum ErrorInvalidParams:Lcom/miui/sdk/tc/TcManager$ReturnCode;

.field public static final enum ErrorInvalidSlotNum:Lcom/miui/sdk/tc/TcManager$ReturnCode;

.field public static final enum ErrorJavaException:Lcom/miui/sdk/tc/TcManager$ReturnCode;

.field public static final enum ErrorNotInited:Lcom/miui/sdk/tc/TcManager$ReturnCode;

.field public static final enum ErrorParseError:Lcom/miui/sdk/tc/TcManager$ReturnCode;

.field public static final enum ErrorUpdateFailed:Lcom/miui/sdk/tc/TcManager$ReturnCode;

.field public static final enum ErrorUpdating:Lcom/miui/sdk/tc/TcManager$ReturnCode;

.field public static final enum OK:Lcom/miui/sdk/tc/TcManager$ReturnCode;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/miui/sdk/tc/TcManager$ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->OK:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    new-instance v1, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const-string v3, "ErrorInvalidParams"

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-direct {v1, v3, v4, v5}, Lcom/miui/sdk/tc/TcManager$ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorInvalidParams:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    new-instance v3, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const-string v5, "ErrorInvalidPackageName"

    const/4 v6, 0x2

    const/4 v7, -0x2

    invoke-direct {v3, v5, v6, v7}, Lcom/miui/sdk/tc/TcManager$ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorInvalidPackageName:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    new-instance v5, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const-string v7, "ErrorInvalidSlotNum"

    const/4 v8, 0x3

    const/4 v9, -0x3

    invoke-direct {v5, v7, v8, v9}, Lcom/miui/sdk/tc/TcManager$ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorInvalidSlotNum:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    new-instance v7, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const-string v9, "ErrorCreateFileFailed"

    const/4 v10, 0x4

    const/4 v11, -0x4

    invoke-direct {v7, v9, v10, v11}, Lcom/miui/sdk/tc/TcManager$ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorCreateFileFailed:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    new-instance v9, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const-string v11, "ErrorNotInited"

    const/4 v12, 0x5

    const/4 v13, -0x5

    invoke-direct {v9, v11, v12, v13}, Lcom/miui/sdk/tc/TcManager$ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorNotInited:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    new-instance v11, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const-string v13, "ErrorUpdating"

    const/4 v14, 0x6

    const/4 v15, -0x6

    invoke-direct {v11, v13, v14, v15}, Lcom/miui/sdk/tc/TcManager$ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorUpdating:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    new-instance v13, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const-string v15, "ErrorUpdateFailed"

    const/4 v14, 0x7

    const/4 v12, -0x7

    invoke-direct {v13, v15, v14, v12}, Lcom/miui/sdk/tc/TcManager$ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorUpdateFailed:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    new-instance v12, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const-string v15, "ErrorJavaException"

    const/16 v14, 0x8

    const/4 v10, -0x8

    invoke-direct {v12, v15, v14, v10}, Lcom/miui/sdk/tc/TcManager$ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorJavaException:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    new-instance v10, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const-string v15, "ErrorParseError"

    const/16 v14, 0x9

    const/16 v8, -0x9

    invoke-direct {v10, v15, v14, v8}, Lcom/miui/sdk/tc/TcManager$ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorParseError:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    new-instance v8, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const-string v15, "Error"

    const/16 v14, 0xa

    invoke-direct {v8, v15, v14}, Lcom/miui/sdk/tc/TcManager$ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/miui/sdk/tc/TcManager$ReturnCode;->Error:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const/16 v15, 0xb

    new-array v15, v15, [Lcom/miui/sdk/tc/TcManager$ReturnCode;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    const/4 v0, 0x3

    aput-object v5, v15, v0

    const/4 v0, 0x4

    aput-object v7, v15, v0

    const/4 v0, 0x5

    aput-object v9, v15, v0

    const/4 v0, 0x6

    aput-object v11, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v12, v15, v0

    const/16 v0, 0x9

    aput-object v10, v15, v0

    aput-object v8, v15, v14

    sput-object v15, Lcom/miui/sdk/tc/TcManager$ReturnCode;->$VALUES:[Lcom/miui/sdk/tc/TcManager$ReturnCode;

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

    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->mValue:I

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

    iput p3, p0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->mValue:I

    return-void
.end method

.method public static parse(I)Lcom/miui/sdk/tc/TcManager$ReturnCode;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->Error:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->OK:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorInvalidParams:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorInvalidPackageName:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorInvalidSlotNum:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorCreateFileFailed:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorNotInited:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorUpdating:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorUpdateFailed:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorJavaException:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorParseError:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object p0

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/sdk/tc/TcManager$ReturnCode;
    .locals 1

    const-class v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object p0
.end method

.method public static values()[Lcom/miui/sdk/tc/TcManager$ReturnCode;
    .locals 1

    sget-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->$VALUES:[Lcom/miui/sdk/tc/TcManager$ReturnCode;

    invoke-virtual {v0}, [Lcom/miui/sdk/tc/TcManager$ReturnCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->mValue:I

    return v0
.end method
