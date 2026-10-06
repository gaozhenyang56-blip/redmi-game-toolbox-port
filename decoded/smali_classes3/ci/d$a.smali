.class public final enum Lci/d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lci/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lci/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lci/d$a;

.field public static final enum B:Lci/d$a;

.field public static final enum C:Lci/d$a;

.field public static final enum D:Lci/d$a;

.field public static final enum E:Lci/d$a;

.field public static final enum F:Lci/d$a;

.field public static final enum G:Lci/d$a;

.field public static final enum H:Lci/d$a;

.field public static final enum I:Lci/d$a;

.field public static final enum J:Lci/d$a;

.field private static final synthetic K:[Lci/d$a;

.field public static final enum a:Lci/d$a;

.field public static final enum b:Lci/d$a;

.field public static final enum c:Lci/d$a;

.field public static final enum d:Lci/d$a;

.field public static final enum e:Lci/d$a;

.field public static final enum f:Lci/d$a;

.field public static final enum g:Lci/d$a;

.field public static final enum h:Lci/d$a;

.field public static final enum i:Lci/d$a;

.field public static final enum j:Lci/d$a;

.field public static final enum k:Lci/d$a;

.field public static final enum l:Lci/d$a;

.field public static final enum m:Lci/d$a;

.field public static final enum n:Lci/d$a;

.field public static final enum o:Lci/d$a;

.field public static final enum p:Lci/d$a;

.field public static final enum q:Lci/d$a;

.field public static final enum r:Lci/d$a;

.field public static final enum s:Lci/d$a;

.field public static final enum t:Lci/d$a;

.field public static final enum u:Lci/d$a;

.field public static final enum v:Lci/d$a;

.field public static final enum w:Lci/d$a;

.field public static final enum x:Lci/d$a;

.field public static final enum y:Lci/d$a;

.field public static final enum z:Lci/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 38

    new-instance v0, Lci/d$a;

    const-string v1, "LOCATION_TIME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lci/d$a;->a:Lci/d$a;

    new-instance v1, Lci/d$a;

    const-string v3, "LOCATION_LATITUDE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lci/d$a;->b:Lci/d$a;

    new-instance v3, Lci/d$a;

    const-string v5, "LOCATION_LONGITUDE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lci/d$a;->c:Lci/d$a;

    new-instance v5, Lci/d$a;

    const-string v7, "LOCATION_ALTITUDE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lci/d$a;->d:Lci/d$a;

    new-instance v7, Lci/d$a;

    const-string v9, "LOCATION_SPEED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lci/d$a;->e:Lci/d$a;

    new-instance v9, Lci/d$a;

    const-string v11, "LOCATION_BEARING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lci/d$a;->f:Lci/d$a;

    new-instance v11, Lci/d$a;

    const-string v13, "LOCATION_ACCURACY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lci/d$a;->g:Lci/d$a;

    new-instance v13, Lci/d$a;

    const-string v15, "FLP_STATUS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lci/d$a;->h:Lci/d$a;

    new-instance v15, Lci/d$a;

    const-string v14, "FLP_TIME_INTERVAL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lci/d$a;->i:Lci/d$a;

    new-instance v14, Lci/d$a;

    const-string v12, "FLP_DISTANCE_INTERVAL"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lci/d$a;->j:Lci/d$a;

    new-instance v12, Lci/d$a;

    const-string v10, "FLP_TRIP_DISTANCE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lci/d$a;->k:Lci/d$a;

    new-instance v10, Lci/d$a;

    const-string v8, "FLP_POWER_MODE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lci/d$a;->l:Lci/d$a;

    new-instance v8, Lci/d$a;

    const-string v6, "FLP_TBM_MILLIS"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lci/d$a;->m:Lci/d$a;

    new-instance v6, Lci/d$a;

    const-string v4, "GEO_RESPONSIVENESS"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lci/d$a;->n:Lci/d$a;

    new-instance v4, Lci/d$a;

    const-string v2, "GEO_RADIUS"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lci/d$a;->o:Lci/d$a;

    new-instance v2, Lci/d$a;

    const-string v6, "GEO_FIELDS_MASK"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lci/d$a;->p:Lci/d$a;

    new-instance v6, Lci/d$a;

    const-string v4, "GEO_EVENT"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lci/d$a;->q:Lci/d$a;

    new-instance v4, Lci/d$a;

    const-string v2, "GEO_REQUEST_TYPE"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lci/d$a;->r:Lci/d$a;

    new-instance v2, Lci/d$a;

    const-string v6, "GEO_ERROR_CODE"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lci/d$a;->s:Lci/d$a;

    new-instance v6, Lci/d$a;

    const-string v4, "GEO_ENGINE_STATUS"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lci/d$a;->t:Lci/d$a;

    new-instance v4, Lci/d$a;

    const-string v2, "GEO_DWELL_TIME"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lci/d$a;->u:Lci/d$a;

    new-instance v2, Lci/d$a;

    const-string v6, "WIFI_EXPIRE_DAYS"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lci/d$a;->v:Lci/d$a;

    new-instance v6, Lci/d$a;

    const-string v4, "WIFI_DAYS_VALID"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lci/d$a;->w:Lci/d$a;

    new-instance v2, Lci/d$a;

    const-string v4, "WIFI_MAC_ADDRESS"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lci/d$a;->x:Lci/d$a;

    new-instance v4, Lci/d$a;

    const-string v6, "WIFI_MAX_ANTENARANGE"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lci/d$a;->y:Lci/d$a;

    new-instance v2, Lci/d$a;

    const-string v6, "WIFI_RSSI"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lci/d$a;->z:Lci/d$a;

    new-instance v4, Lci/d$a;

    const-string v6, "WIFI_DELTA_TIME"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lci/d$a;->A:Lci/d$a;

    new-instance v2, Lci/d$a;

    const-string v6, "WIFI_CHANNEL_NUM"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lci/d$a;->B:Lci/d$a;

    new-instance v4, Lci/d$a;

    const-string v6, "WWAN_CELL_REGIONID1"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lci/d$a;->C:Lci/d$a;

    new-instance v2, Lci/d$a;

    const-string v6, "WWAN_CELL_REGIONID2_CDMA"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lci/d$a;->D:Lci/d$a;

    new-instance v4, Lci/d$a;

    const-string v6, "WWAN_CELL_REGIONID2_OTHERS"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lci/d$a;->E:Lci/d$a;

    new-instance v2, Lci/d$a;

    const-string v6, "WWAN_CELL_REGIONID3_CDMA_GSM"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lci/d$a;->F:Lci/d$a;

    new-instance v4, Lci/d$a;

    const-string v6, "WWAN_CELL_REGIONID3_WCDMA_LTE"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lci/d$a;->G:Lci/d$a;

    new-instance v2, Lci/d$a;

    const-string v6, "WWAN_CELL_REGIONID4_CDMA_GSM"

    move-object/from16 v35, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v4}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lci/d$a;->H:Lci/d$a;

    new-instance v4, Lci/d$a;

    const-string v6, "WWAN_CELL_REGIONID4_WCDMA_LTE"

    move-object/from16 v36, v2

    const/16 v2, 0x22

    invoke-direct {v4, v6, v2}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lci/d$a;->I:Lci/d$a;

    new-instance v2, Lci/d$a;

    const-string v6, "WWAN_HORIZONTAL_COV_RADIUS"

    move-object/from16 v37, v4

    const/16 v4, 0x23

    invoke-direct {v2, v6, v4}, Lci/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lci/d$a;->J:Lci/d$a;

    const/16 v4, 0x24

    new-array v4, v4, [Lci/d$a;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    aput-object v26, v4, v0

    const/16 v0, 0x18

    aput-object v27, v4, v0

    const/16 v0, 0x19

    aput-object v28, v4, v0

    const/16 v0, 0x1a

    aput-object v29, v4, v0

    const/16 v0, 0x1b

    aput-object v30, v4, v0

    const/16 v0, 0x1c

    aput-object v31, v4, v0

    const/16 v0, 0x1d

    aput-object v32, v4, v0

    const/16 v0, 0x1e

    aput-object v33, v4, v0

    const/16 v0, 0x1f

    aput-object v34, v4, v0

    const/16 v0, 0x20

    aput-object v35, v4, v0

    const/16 v0, 0x21

    aput-object v36, v4, v0

    const/16 v0, 0x22

    aput-object v37, v4, v0

    const/16 v0, 0x23

    aput-object v2, v4, v0

    sput-object v4, Lci/d$a;->K:[Lci/d$a;

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

.method public static valueOf(Ljava/lang/String;)Lci/d$a;
    .locals 1

    const-class v0, Lci/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lci/d$a;

    return-object p0
.end method

.method public static values()[Lci/d$a;
    .locals 1

    sget-object v0, Lci/d$a;->K:[Lci/d$a;

    invoke-virtual {v0}, [Lci/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lci/d$a;

    return-object v0
.end method
