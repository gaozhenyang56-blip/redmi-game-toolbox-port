.class public final enum Lu1/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu1/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lu1/b;

.field public static final enum c:Lu1/b;

.field public static final enum d:Lu1/b;

.field public static final enum e:Lu1/b;

.field public static final enum f:Lu1/b;

.field public static final enum g:Lu1/b;

.field public static final enum h:Lu1/b;

.field public static final enum i:Lu1/b;

.field public static final enum j:Lu1/b;

.field public static final enum k:Lu1/b;

.field public static final enum l:Lu1/b;

.field public static final enum m:Lu1/b;

.field public static final enum n:Lu1/b;

.field public static final enum o:Lu1/b;

.field public static final enum p:Lu1/b;

.field public static final enum q:Lu1/b;

.field private static final r:[Ljava/lang/String;

.field private static final s:[Lu1/b;

.field public static final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic u:[Lu1/b;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 51

    new-instance v0, Lu1/b;

    const-string v1, "DolbyHeadphoneVirtualizerControl"

    const/4 v2, 0x0

    const/16 v3, 0x65

    invoke-direct {v0, v1, v2, v3}, Lu1/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu1/b;->b:Lu1/b;

    new-instance v1, Lu1/b;

    const-string v3, "DolbyVirtualSpeakerVirtualizerControl"

    const/4 v4, 0x1

    const/16 v5, 0x66

    invoke-direct {v1, v3, v4, v5}, Lu1/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lu1/b;->c:Lu1/b;

    new-instance v3, Lu1/b;

    const-string v5, "DolbyVolumeLevelerEnable"

    const/4 v6, 0x2

    const/16 v7, 0x67

    invoke-direct {v3, v5, v6, v7}, Lu1/b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lu1/b;->d:Lu1/b;

    new-instance v5, Lu1/b;

    const-string v7, "IntelligentEqualizerPreset"

    const/4 v8, 0x3

    const/16 v9, 0x68

    invoke-direct {v5, v7, v8, v9}, Lu1/b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lu1/b;->e:Lu1/b;

    new-instance v7, Lu1/b;

    const-string v9, "DialogEnhancementEnable"

    const/4 v10, 0x4

    const/16 v11, 0x69

    invoke-direct {v7, v9, v10, v11}, Lu1/b;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lu1/b;->f:Lu1/b;

    new-instance v9, Lu1/b;

    const-string v11, "GraphicEqualizerEnable"

    const/4 v12, 0x5

    const/16 v13, 0x6a

    invoke-direct {v9, v11, v12, v13}, Lu1/b;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lu1/b;->g:Lu1/b;

    new-instance v11, Lu1/b;

    const-string v13, "IntelligentEqualizerAmount"

    const/4 v14, 0x6

    const/16 v15, 0x6b

    invoke-direct {v11, v13, v14, v15}, Lu1/b;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lu1/b;->h:Lu1/b;

    new-instance v13, Lu1/b;

    const-string v15, "DialogEnhancementAmount"

    const/4 v14, 0x7

    const/16 v12, 0x6c

    invoke-direct {v13, v15, v14, v12}, Lu1/b;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lu1/b;->i:Lu1/b;

    new-instance v12, Lu1/b;

    const-string v15, "DialogEnhancementDucking"

    const/16 v14, 0x8

    const/16 v10, 0x6d

    invoke-direct {v12, v15, v14, v10}, Lu1/b;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lu1/b;->j:Lu1/b;

    new-instance v10, Lu1/b;

    const-string v15, "GraphicEqualizerBandGains"

    const/16 v14, 0x9

    const/16 v8, 0x6e

    invoke-direct {v10, v15, v14, v8}, Lu1/b;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lu1/b;->k:Lu1/b;

    new-instance v8, Lu1/b;

    const-string v15, "BassEnable"

    const/16 v14, 0xa

    const/16 v6, 0x6f

    invoke-direct {v8, v15, v14, v6}, Lu1/b;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lu1/b;->l:Lu1/b;

    new-instance v6, Lu1/b;

    const-string v15, "VirtualBassEnable"

    const/16 v14, 0xb

    const/16 v4, 0x70

    invoke-direct {v6, v15, v14, v4}, Lu1/b;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lu1/b;->m:Lu1/b;

    new-instance v4, Lu1/b;

    const-string v15, "StereoWideningAmount"

    const/16 v14, 0xc

    const/16 v2, 0x71

    invoke-direct {v4, v15, v14, v2}, Lu1/b;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lu1/b;->n:Lu1/b;

    new-instance v2, Lu1/b;

    const-string v15, "ReverbReductionEnable"

    const/16 v14, 0xd

    move-object/from16 v29, v4

    const/16 v4, 0x72

    invoke-direct {v2, v15, v14, v4}, Lu1/b;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lu1/b;->o:Lu1/b;

    new-instance v4, Lu1/b;

    const-string v15, "ReverbReductionAmount"

    const/16 v14, 0xe

    move-object/from16 v31, v2

    const/16 v2, 0x73

    invoke-direct {v4, v15, v14, v2}, Lu1/b;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lu1/b;->p:Lu1/b;

    new-instance v2, Lu1/b;

    const-string v15, "DolbyVolumeLevelerAmount"

    const/16 v14, 0xf

    move-object/from16 v33, v4

    const/16 v4, 0x74

    invoke-direct {v2, v15, v14, v4}, Lu1/b;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lu1/b;->q:Lu1/b;

    const/16 v4, 0x10

    new-array v15, v4, [Lu1/b;

    const/16 v27, 0x0

    aput-object v0, v15, v27

    const/16 v25, 0x1

    aput-object v1, v15, v25

    const/16 v23, 0x2

    aput-object v3, v15, v23

    const/16 v21, 0x3

    aput-object v5, v15, v21

    const/16 v19, 0x4

    aput-object v7, v15, v19

    const/16 v17, 0x5

    aput-object v9, v15, v17

    const/16 v16, 0x6

    aput-object v11, v15, v16

    const/16 v18, 0x7

    aput-object v13, v15, v18

    const/16 v20, 0x8

    aput-object v12, v15, v20

    const/16 v22, 0x9

    aput-object v10, v15, v22

    const/16 v24, 0xa

    aput-object v8, v15, v24

    const/16 v26, 0xb

    aput-object v6, v15, v26

    const/16 v28, 0xc

    aput-object v29, v15, v28

    const/16 v30, 0xd

    aput-object v31, v15, v30

    const/16 v32, 0xe

    aput-object v33, v15, v32

    aput-object v2, v15, v14

    sput-object v15, Lu1/b;->u:[Lu1/b;

    const-string v34, "null"

    const-string v35, "vdhe"

    const-string v36, "vspe"

    const-string v37, "dvle"

    const-string v38, "ieid"

    const-string v39, "deon"

    const-string v40, "geon"

    const-string v41, "iea"

    const-string v42, "dea"

    const-string v43, "ded"

    const-string v44, "gebg"

    const-string v45, "beon"

    const-string v46, "vbon"

    const-string v47, "vssd"

    const-string v48, "rvse"

    const-string v49, "rvsa"

    const-string v50, "dvla"

    filled-new-array/range {v34 .. v50}, [Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lu1/b;->r:[Ljava/lang/String;

    new-array v4, v4, [Lu1/b;

    const/4 v15, 0x0

    aput-object v0, v4, v15

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

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v29, v4, v0

    const/16 v0, 0xd

    aput-object v31, v4, v0

    const/16 v0, 0xe

    aput-object v33, v4, v0

    aput-object v2, v4, v14

    sput-object v4, Lu1/b;->s:[Lu1/b;

    new-instance v0, Lu1/b$a;

    invoke-direct {v0}, Lu1/b$a;-><init>()V

    sput-object v0, Lu1/b;->t:Ljava/util/Map;

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

    iput p3, p0, Lu1/b;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu1/b;
    .locals 1

    const-class v0, Lu1/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu1/b;

    return-object p0
.end method

.method public static values()[Lu1/b;
    .locals 1

    sget-object v0, Lu1/b;->u:[Lu1/b;

    invoke-virtual {v0}, [Lu1/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu1/b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lu1/b;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lu1/b;->a:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/16 v2, 0x75

    if-ge v0, v2, :cond_0

    sget-object v2, Lu1/b;->r:[Ljava/lang/String;

    sub-int/2addr v0, v1

    aget-object v0, v2, v0

    goto :goto_0

    :cond_0
    const-string v0, "error"

    :goto_0
    return-object v0
.end method
