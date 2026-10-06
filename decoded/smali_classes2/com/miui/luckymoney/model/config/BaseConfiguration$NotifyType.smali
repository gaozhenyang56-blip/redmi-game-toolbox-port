.class public final enum Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/luckymoney/model/config/BaseConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotifyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

.field public static final enum NONE:Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

.field public static final enum NOTIFICATION:Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;->NONE:Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    new-instance v1, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    const-string v3, "NOTIFICATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;->NOTIFICATION:Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;->$VALUES:[Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;
    .locals 1

    const-class v0, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    return-object p0
.end method

.method public static values()[Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;
    .locals 1

    sget-object v0, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;->$VALUES:[Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    invoke-virtual {v0}, [Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    return-object v0
.end method
