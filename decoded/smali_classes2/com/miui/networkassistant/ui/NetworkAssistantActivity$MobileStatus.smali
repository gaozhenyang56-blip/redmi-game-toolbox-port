.class final enum Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/NetworkAssistantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MobileStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field public static final enum Init:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field public static final enum NoOperatorSet:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field public static final enum NoSimCardInfo:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field public static final enum NoTotalPackage:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field public static final enum Normal:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field public static final enum NormalRoaming:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field public static final enum Oversea:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field public static final enum OverseaRoaming:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field public static final enum TrafficCtrlClosed:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field public static final enum UnLimitedCard:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

.field public static final enum VirtualCard:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const-string v1, "Init"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->Init:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    new-instance v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const-string v3, "NoSimCardInfo"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->NoSimCardInfo:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    new-instance v3, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const-string v5, "Oversea"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->Oversea:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    new-instance v5, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const-string v7, "OverseaRoaming"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->OverseaRoaming:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    new-instance v7, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const-string v9, "NormalRoaming"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->NormalRoaming:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    new-instance v9, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const-string v11, "NoTotalPackage"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->NoTotalPackage:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    new-instance v11, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const-string v13, "NoOperatorSet"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->NoOperatorSet:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    new-instance v13, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const-string v15, "Normal"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->Normal:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    new-instance v15, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const-string v14, "TrafficCtrlClosed"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->TrafficCtrlClosed:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    new-instance v14, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const-string v12, "VirtualCard"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->VirtualCard:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    new-instance v12, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const-string v10, "UnLimitedCard"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->UnLimitedCard:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->$VALUES:[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;
    .locals 1

    const-class v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    return-object p0
.end method

.method public static values()[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->$VALUES:[Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    invoke-virtual {v0}, [Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MobileStatus;

    return-object v0
.end method
