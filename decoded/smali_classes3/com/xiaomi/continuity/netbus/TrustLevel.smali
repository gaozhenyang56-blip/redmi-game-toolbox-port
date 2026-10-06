.class public final enum Lcom/xiaomi/continuity/netbus/TrustLevel;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/continuity/netbus/Type;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/continuity/netbus/TrustLevel;",
        ">;",
        "Lcom/xiaomi/continuity/netbus/Type;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/continuity/netbus/TrustLevel;

.field public static final enum EVERY_ONE:Lcom/xiaomi/continuity/netbus/TrustLevel;

.field public static final enum RAW:Lcom/xiaomi/continuity/netbus/TrustLevel;

.field public static final enum SAME_ACCOUNT:Lcom/xiaomi/continuity/netbus/TrustLevel;

.field public static final enum TRUST_GROUP:Lcom/xiaomi/continuity/netbus/TrustLevel;

.field public static final enum UNKNOWN:Lcom/xiaomi/continuity/netbus/TrustLevel;


# instance fields
.field private final mType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/xiaomi/continuity/netbus/TrustLevel;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/continuity/netbus/TrustLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/continuity/netbus/TrustLevel;->UNKNOWN:Lcom/xiaomi/continuity/netbus/TrustLevel;

    new-instance v1, Lcom/xiaomi/continuity/netbus/TrustLevel;

    const-string v3, "SAME_ACCOUNT"

    const/4 v4, 0x1

    const/16 v5, 0x10

    invoke-direct {v1, v3, v4, v5}, Lcom/xiaomi/continuity/netbus/TrustLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaomi/continuity/netbus/TrustLevel;->SAME_ACCOUNT:Lcom/xiaomi/continuity/netbus/TrustLevel;

    new-instance v3, Lcom/xiaomi/continuity/netbus/TrustLevel;

    const-string v5, "TRUST_GROUP"

    const/4 v6, 0x2

    const/16 v7, 0x20

    invoke-direct {v3, v5, v6, v7}, Lcom/xiaomi/continuity/netbus/TrustLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/xiaomi/continuity/netbus/TrustLevel;->TRUST_GROUP:Lcom/xiaomi/continuity/netbus/TrustLevel;

    new-instance v5, Lcom/xiaomi/continuity/netbus/TrustLevel;

    const-string v7, "EVERY_ONE"

    const/4 v8, 0x3

    const/16 v9, 0x30

    invoke-direct {v5, v7, v8, v9}, Lcom/xiaomi/continuity/netbus/TrustLevel;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/xiaomi/continuity/netbus/TrustLevel;->EVERY_ONE:Lcom/xiaomi/continuity/netbus/TrustLevel;

    new-instance v7, Lcom/xiaomi/continuity/netbus/TrustLevel;

    const-string v9, "RAW"

    const/4 v10, 0x4

    const/16 v11, 0x40

    invoke-direct {v7, v9, v10, v11}, Lcom/xiaomi/continuity/netbus/TrustLevel;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/xiaomi/continuity/netbus/TrustLevel;->RAW:Lcom/xiaomi/continuity/netbus/TrustLevel;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/xiaomi/continuity/netbus/TrustLevel;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/xiaomi/continuity/netbus/TrustLevel;->$VALUES:[Lcom/xiaomi/continuity/netbus/TrustLevel;

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

    iput p3, p0, Lcom/xiaomi/continuity/netbus/TrustLevel;->mType:I

    return-void
.end method

.method public static valueOf(I)Lcom/xiaomi/continuity/netbus/TrustLevel;
    .locals 1

    invoke-static {}, Lcom/xiaomi/continuity/netbus/TrustLevel;->values()[Lcom/xiaomi/continuity/netbus/TrustLevel;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/xiaomi/continuity/netbus/b3;->b([Lcom/xiaomi/continuity/netbus/Type;I)Lcom/xiaomi/continuity/netbus/Type;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/continuity/netbus/TrustLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/continuity/netbus/TrustLevel;
    .locals 1

    const-class v0, Lcom/xiaomi/continuity/netbus/TrustLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/continuity/netbus/TrustLevel;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/continuity/netbus/TrustLevel;
    .locals 1

    sget-object v0, Lcom/xiaomi/continuity/netbus/TrustLevel;->$VALUES:[Lcom/xiaomi/continuity/netbus/TrustLevel;

    invoke-virtual {v0}, [Lcom/xiaomi/continuity/netbus/TrustLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/continuity/netbus/TrustLevel;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/continuity/netbus/TrustLevel;->mType:I

    return v0
.end method
