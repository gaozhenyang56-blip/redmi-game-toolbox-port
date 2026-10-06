.class public final enum Lcom/miui/warningcenter/disasterwarning/model/EventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/warningcenter/disasterwarning/model/EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum ColdWave:Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum Disaster:Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum Earthquake:Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum FlashFlood:Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum Flood:Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum Fog:Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum ForestFire:Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum ForestFireWithinTerritory:Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum FrozenRoad:Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum GrasslandFireWithinTerritory:Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum Hailstone:Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum Haze:Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum Hot:Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum Hurricane:Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum LandSlide:Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum Mudslide:Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum Other:Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum Pollution:Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum Rainstorm:Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum Snowstorm:Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum Thunderstorm:Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum Typhoon:Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum WaterLogging:Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum Wave:Lcom/miui/warningcenter/disasterwarning/model/EventType;

.field public static final enum WindStorm:Lcom/miui/warningcenter/disasterwarning/model/EventType;


# instance fields
.field private final code:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final iconRes:I

.field private final nameRes:I


# direct methods
.method private static final synthetic $values()[Lcom/miui/warningcenter/disasterwarning/model/EventType;
    .locals 3

    const/16 v0, 0x19

    new-array v0, v0, [Lcom/miui/warningcenter/disasterwarning/model/EventType;

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Typhoon:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Rainstorm:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Snowstorm:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->ColdWave:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Hailstone:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Hurricane:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Hot:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Fog:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Haze:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->FrozenRoad:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Pollution:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Wave:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Earthquake:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->WindStorm:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Thunderstorm:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->ForestFire:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Disaster:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Flood:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->WaterLogging:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->FlashFlood:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->LandSlide:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Mudslide:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->ForestFireWithinTerritory:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->GrasslandFireWithinTerritory:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Other:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 23

    new-instance v6, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v1, "Typhoon"

    const/4 v2, 0x0

    const-string v3, "11B01"

    const v4, 0x7f121c25

    const v5, 0x7f0810f7

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v6, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Typhoon:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v8, "Rainstorm"

    const/4 v9, 0x1

    const-string v10, "11B03"

    const v11, 0x7f121be3

    const v12, 0x7f0810e1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Rainstorm:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v2, "Snowstorm"

    const/4 v3, 0x2

    const-string v4, "11B04"

    const v5, 0x7f121be2

    const v6, 0x7f0810e0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Snowstorm:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v8, "ColdWave"

    const/4 v9, 0x3

    const-string v10, "11B05"

    const v11, 0x7f121bf2

    const v12, 0x7f0810ec

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->ColdWave:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v2, "Hailstone"

    const/4 v3, 0x4

    const-string v4, "11B15"

    const v5, 0x7f121be4

    const v6, 0x7f0810e2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Hailstone:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v8, "Hurricane"

    const/4 v9, 0x5

    const-string v10, "11B06"

    const v11, 0x7f121be7

    const v12, 0x7f0810e4

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Hurricane:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v2, "Hot"

    const/4 v3, 0x6

    const-string v4, "11B09"

    const v5, 0x7f121bef

    const v6, 0x7f0810e8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Hot:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v8, "Fog"

    const/4 v9, 0x7

    const-string v10, "11B17"

    const v11, 0x7f121be9

    const v12, 0x7f0810f8

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Fog:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v2, "Haze"

    const/16 v3, 0x8

    const-string v4, "11B19"

    const v5, 0x7f121c03

    const v6, 0x7f0810f1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Haze:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v8, "FrozenRoad"

    const/16 v9, 0x9

    const-string v10, "11B21"

    const v11, 0x7f121be8

    const v12, 0x7f0810e5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->FrozenRoad:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v2, "Pollution"

    const/16 v3, 0xa

    const-string v4, "11B29"

    const v5, 0x7f121c2c

    const v6, 0x7f0810f9

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Pollution:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v8, "Wave"

    const/16 v9, 0xb

    const-string v10, "11E06"

    const v11, 0x7f121bf1

    const v12, 0x7f0810eb

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Wave:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v2, "Earthquake"

    const/16 v3, 0xc

    const-string v4, "11C02"

    const v5, 0x7f121bec

    const v6, 0x7f0810e6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Earthquake:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v8, "WindStorm"

    const/16 v9, 0xd

    const-string v10, "11E02"

    const v11, 0x7f121bee

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;IIILbk/g;)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->WindStorm:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v16, "Thunderstorm"

    const/16 v17, 0xe

    const-string v18, "11B20"

    const v19, 0x7f121bf9

    const/16 v20, 0x0

    const/16 v21, 0x4

    const/16 v22, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v22}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;IIILbk/g;)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Thunderstorm:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v2, "ForestFire"

    const/16 v3, 0xf

    const-string v4, "11B25"

    const v5, 0x7f121c20

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;IIILbk/g;)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->ForestFire:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v10, "Disaster"

    const/16 v11, 0x10

    const-string v12, "11B37"

    const v13, 0x7f121bed

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;IIILbk/g;)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Disaster:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v2, "Flood"

    const/16 v3, 0x11

    const-string v4, "11A01"

    const v5, 0x7f121bf3

    const v6, 0x7f0810ed

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Flood:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v8, "WaterLogging"

    const/16 v9, 0x12

    const-string v10, "11A02"

    const v11, 0x7f121c04

    const v12, 0x7f0810f0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->WaterLogging:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v2, "FlashFlood"

    const/16 v3, 0x13

    const-string v4, "11A51"

    const v5, 0x7f121c23

    const v6, 0x7f0810f6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->FlashFlood:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v8, "LandSlide"

    const/16 v9, 0x14

    const-string v10, "11D01"

    const v11, 0x7f121bf4

    const v12, 0x7f0810ee

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->LandSlide:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v2, "Mudslide"

    const/16 v3, 0x15

    const-string v4, "11D02"

    const v5, 0x7f121c05

    const v6, 0x7f0810f3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Mudslide:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v8, "ForestFireWithinTerritory"

    const/16 v9, 0x16

    const-string v10, "11G01"

    const v11, 0x7f121c21

    const v12, 0x7f0810ef

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->ForestFireWithinTerritory:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v2, "GrasslandFireWithinTerritory"

    const/16 v3, 0x17

    const-string v4, "11G05"

    const v5, 0x7f121be6

    const v6, 0x7f0810ef

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->GrasslandFireWithinTerritory:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    const-string v8, "Other"

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x7

    const/4 v14, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;IIILbk/g;)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Other:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/model/EventType;->$values()[Lcom/miui/warningcenter/disasterwarning/model/EventType;

    move-result-object v0

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->$VALUES:[Lcom/miui/warningcenter/disasterwarning/model/EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->code:Ljava/lang/String;

    iput p4, p0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->nameRes:I

    iput p5, p0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->iconRes:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;IIILbk/g;)V
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const-string p3, ""

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x2

    if-eqz p3, :cond_1

    const p4, 0x7f121c09

    :cond_1
    move v4, p4

    and-int/lit8 p3, p6, 0x4

    if-eqz p3, :cond_2

    const p5, 0x7f0810f4

    :cond_2
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/warningcenter/disasterwarning/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/warningcenter/disasterwarning/model/EventType;
    .locals 1

    const-class v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/warningcenter/disasterwarning/model/EventType;

    return-object p0
.end method

.method public static values()[Lcom/miui/warningcenter/disasterwarning/model/EventType;
    .locals 1

    sget-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->$VALUES:[Lcom/miui/warningcenter/disasterwarning/model/EventType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/warningcenter/disasterwarning/model/EventType;

    return-object v0
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getIconRes()I
    .locals 1

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->iconRes:I

    return v0
.end method

.method public final getNameRes()I
    .locals 1

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->nameRes:I

    return v0
.end method
