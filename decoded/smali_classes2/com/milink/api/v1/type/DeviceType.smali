.class public final enum Lcom/milink/api/v1/type/DeviceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/milink/api/v1/type/DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/milink/api/v1/type/DeviceType;

.field public static final AIRKAN:Ljava/lang/String; = "airkan"

.field public static final AIRPLAY:Ljava/lang/String; = "airplay"

.field public static final AIRTUNES:Ljava/lang/String; = "airtunes"

.field public static final BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final enum Bluetooth:Lcom/milink/api/v1/type/DeviceType;

.field public static final DLNA_SPEAKER:Ljava/lang/String; = "dlna.speaker"

.field public static final DLNA_TV:Ljava/lang/String; = "dlna.tv"

.field public static final LELINK:Ljava/lang/String; = "lelink"

.field public static final enum Lelink:Lcom/milink/api/v1/type/DeviceType;

.field public static final MIPLAY:Ljava/lang/String; = "miplay"

.field public static final MIRACAST:Ljava/lang/String; = "miracast"

.field public static final enum MiPlay:Lcom/milink/api/v1/type/DeviceType;

.field public static final enum Miracast:Lcom/milink/api/v1/type/DeviceType;

.field public static final enum Speaker:Lcom/milink/api/v1/type/DeviceType;

.field public static final enum TV:Lcom/milink/api/v1/type/DeviceType;

.field public static final enum Unknown:Lcom/milink/api/v1/type/DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/milink/api/v1/type/DeviceType;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/milink/api/v1/type/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/DeviceType;->Unknown:Lcom/milink/api/v1/type/DeviceType;

    new-instance v1, Lcom/milink/api/v1/type/DeviceType;

    const-string v3, "TV"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/milink/api/v1/type/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/milink/api/v1/type/DeviceType;->TV:Lcom/milink/api/v1/type/DeviceType;

    new-instance v3, Lcom/milink/api/v1/type/DeviceType;

    const-string v5, "Speaker"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/milink/api/v1/type/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/milink/api/v1/type/DeviceType;->Speaker:Lcom/milink/api/v1/type/DeviceType;

    new-instance v5, Lcom/milink/api/v1/type/DeviceType;

    const-string v7, "Miracast"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/milink/api/v1/type/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/milink/api/v1/type/DeviceType;->Miracast:Lcom/milink/api/v1/type/DeviceType;

    new-instance v7, Lcom/milink/api/v1/type/DeviceType;

    const-string v9, "Lelink"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/milink/api/v1/type/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/milink/api/v1/type/DeviceType;->Lelink:Lcom/milink/api/v1/type/DeviceType;

    new-instance v9, Lcom/milink/api/v1/type/DeviceType;

    const-string v11, "Bluetooth"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/milink/api/v1/type/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/milink/api/v1/type/DeviceType;->Bluetooth:Lcom/milink/api/v1/type/DeviceType;

    new-instance v11, Lcom/milink/api/v1/type/DeviceType;

    const-string v13, "MiPlay"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/milink/api/v1/type/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/milink/api/v1/type/DeviceType;->MiPlay:Lcom/milink/api/v1/type/DeviceType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/milink/api/v1/type/DeviceType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/milink/api/v1/type/DeviceType;->$VALUES:[Lcom/milink/api/v1/type/DeviceType;

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

.method public static create(Ljava/lang/String;)Lcom/milink/api/v1/type/DeviceType;
    .locals 1

    const-string v0, "airkan"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/milink/api/v1/type/DeviceType;->TV:Lcom/milink/api/v1/type/DeviceType;

    return-object p0

    :cond_0
    const-string v0, "airplay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/milink/api/v1/type/DeviceType;->TV:Lcom/milink/api/v1/type/DeviceType;

    return-object p0

    :cond_1
    const-string v0, "airtunes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/milink/api/v1/type/DeviceType;->Speaker:Lcom/milink/api/v1/type/DeviceType;

    return-object p0

    :cond_2
    const-string v0, "dlna.tv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/milink/api/v1/type/DeviceType;->TV:Lcom/milink/api/v1/type/DeviceType;

    return-object p0

    :cond_3
    const-string v0, "dlna.speaker"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/milink/api/v1/type/DeviceType;->Speaker:Lcom/milink/api/v1/type/DeviceType;

    return-object p0

    :cond_4
    const-string v0, "miracast"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lcom/milink/api/v1/type/DeviceType;->Miracast:Lcom/milink/api/v1/type/DeviceType;

    return-object p0

    :cond_5
    const-string v0, "lelink"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lcom/milink/api/v1/type/DeviceType;->Lelink:Lcom/milink/api/v1/type/DeviceType;

    return-object p0

    :cond_6
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Lcom/milink/api/v1/type/DeviceType;->Bluetooth:Lcom/milink/api/v1/type/DeviceType;

    return-object p0

    :cond_7
    const-string v0, "miplay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/milink/api/v1/type/DeviceType;->MiPlay:Lcom/milink/api/v1/type/DeviceType;

    return-object p0

    :cond_8
    sget-object p0, Lcom/milink/api/v1/type/DeviceType;->Unknown:Lcom/milink/api/v1/type/DeviceType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/milink/api/v1/type/DeviceType;
    .locals 1

    const-class v0, Lcom/milink/api/v1/type/DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/milink/api/v1/type/DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/milink/api/v1/type/DeviceType;
    .locals 1

    sget-object v0, Lcom/milink/api/v1/type/DeviceType;->$VALUES:[Lcom/milink/api/v1/type/DeviceType;

    invoke-virtual {v0}, [Lcom/milink/api/v1/type/DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/milink/api/v1/type/DeviceType;

    return-object v0
.end method
