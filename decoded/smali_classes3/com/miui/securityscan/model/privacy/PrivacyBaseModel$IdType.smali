.class public final enum Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

.field public static final enum ID_TYPE_FIREBASE:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

.field public static final enum ID_TYPE_GAID:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

.field public static final enum ID_TYPE_MI_ACCOUNT:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

.field public static final enum ID_TYPE_MI_STAT:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

.field public static final enum ID_TYPE_SENSORS:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

.field public static final enum ID_TYPE_UUID:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    const-string v1, "ID_TYPE_UUID"

    const/4 v2, 0x0

    const-string v3, "1_0"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;->ID_TYPE_UUID:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    new-instance v1, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    const-string v3, "ID_TYPE_MI_STAT"

    const/4 v4, 0x1

    const-string v5, "2_0"

    invoke-direct {v1, v3, v4, v5}, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;->ID_TYPE_MI_STAT:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    new-instance v3, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    const-string v5, "ID_TYPE_GAID"

    const/4 v6, 0x2

    const-string v7, "3_0"

    invoke-direct {v3, v5, v6, v7}, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;->ID_TYPE_GAID:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    new-instance v5, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    const-string v7, "ID_TYPE_MI_ACCOUNT"

    const/4 v8, 0x3

    const-string v9, "4_0"

    invoke-direct {v5, v7, v8, v9}, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;->ID_TYPE_MI_ACCOUNT:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    new-instance v7, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    const-string v9, "ID_TYPE_FIREBASE"

    const/4 v10, 0x4

    const-string v11, "5_0"

    invoke-direct {v7, v9, v10, v11}, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;->ID_TYPE_FIREBASE:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    new-instance v9, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    const-string v11, "ID_TYPE_SENSORS"

    const/4 v12, 0x5

    const-string v13, "6_0"

    invoke-direct {v9, v11, v12, v13}, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;->ID_TYPE_SENSORS:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;->$VALUES:[Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

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

    iput-object p3, p0, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;
    .locals 1

    const-class v0, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    return-object p0
.end method

.method public static values()[Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;->$VALUES:[Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    invoke-virtual {v0}, [Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;->type:Ljava/lang/String;

    return-object v0
.end method
