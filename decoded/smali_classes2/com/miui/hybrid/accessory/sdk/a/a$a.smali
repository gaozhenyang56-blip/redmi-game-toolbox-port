.class public final enum Lcom/miui/hybrid/accessory/sdk/a/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/hybrid/accessory/sdk/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/hybrid/accessory/sdk/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum B:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum C:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum D:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field private static final E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/hybrid/accessory/sdk/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic H:[Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum a:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum b:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum c:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum d:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum e:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum f:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum g:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum h:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum i:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum j:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum k:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum l:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum m:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum n:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum o:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum p:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum q:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum r:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum s:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum t:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum u:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum v:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum w:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum x:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum y:Lcom/miui/hybrid/accessory/sdk/a/a$a;

.field public static final enum z:Lcom/miui/hybrid/accessory/sdk/a/a$a;


# instance fields
.field private final F:S

.field private final G:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 34

    new-instance v0, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v1, "APP_ID"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "appId"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a$a;->a:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v2, "APP_NAME"

    const/4 v4, 0x2

    const-string v5, "appName"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;->b:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v2, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v5, "APP_SECRET"

    const/4 v6, 0x3

    const-string v7, "appSecret"

    invoke-direct {v2, v5, v4, v6, v7}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v2, Lcom/miui/hybrid/accessory/sdk/a/a$a;->c:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v5, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v7, "APP_KEY"

    const/4 v8, 0x4

    const-string v9, "appKey"

    invoke-direct {v5, v7, v6, v8, v9}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v5, Lcom/miui/hybrid/accessory/sdk/a/a$a;->d:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v7, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v9, "APP_VERSION_CODE"

    const/4 v10, 0x5

    const-string v11, "appVersionCode"

    invoke-direct {v7, v9, v8, v10, v11}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v7, Lcom/miui/hybrid/accessory/sdk/a/a$a;->e:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v9, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v11, "SDK_VERSION_CODE"

    const/4 v12, 0x6

    const-string v13, "sdkVersionCode"

    invoke-direct {v9, v11, v10, v12, v13}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v9, Lcom/miui/hybrid/accessory/sdk/a/a$a;->f:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v11, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v13, "PACKAGE_NAME"

    const/4 v14, 0x7

    const-string v15, "packageName"

    invoke-direct {v11, v13, v12, v14, v15}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v11, Lcom/miui/hybrid/accessory/sdk/a/a$a;->g:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v13, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v15, "ICON"

    const/16 v12, 0x8

    const-string v10, "icon"

    invoke-direct {v13, v15, v14, v12, v10}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v13, Lcom/miui/hybrid/accessory/sdk/a/a$a;->h:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v10, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v15, "DESCRIPTION"

    const/16 v14, 0x9

    const-string v8, "description"

    invoke-direct {v10, v15, v12, v14, v8}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v10, Lcom/miui/hybrid/accessory/sdk/a/a$a;->i:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v8, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v15, "DOWNLOAD_URL"

    const/16 v12, 0xa

    const-string v6, "downloadUrl"

    invoke-direct {v8, v15, v14, v12, v6}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v8, Lcom/miui/hybrid/accessory/sdk/a/a$a;->j:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v6, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v15, "STATUS"

    const/16 v14, 0xb

    const-string v4, "status"

    invoke-direct {v6, v15, v12, v14, v4}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v6, Lcom/miui/hybrid/accessory/sdk/a/a$a;->k:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v4, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v15, "CATEGORIES"

    const/16 v12, 0xc

    const-string v3, "categories"

    invoke-direct {v4, v15, v14, v12, v3}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v4, Lcom/miui/hybrid/accessory/sdk/a/a$a;->l:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v3, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v15, "KEYWORDS"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "keywords"

    invoke-direct {v3, v15, v12, v14, v4}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v3, Lcom/miui/hybrid/accessory/sdk/a/a$a;->m:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v4, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v15, "CREATE_TIME"

    const/16 v12, 0xe

    move-object/from16 v17, v3

    const-string v3, "createTime"

    invoke-direct {v4, v15, v14, v12, v3}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v4, Lcom/miui/hybrid/accessory/sdk/a/a$a;->n:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v3, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v15, "LAST_UPDATE_TIME"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "lastUpdateTime"

    invoke-direct {v3, v15, v12, v14, v4}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v3, Lcom/miui/hybrid/accessory/sdk/a/a$a;->o:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v4, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v15, "POPULARITY"

    const/16 v12, 0x10

    move-object/from16 v19, v3

    const-string v3, "popularity"

    invoke-direct {v4, v15, v14, v12, v3}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v4, Lcom/miui/hybrid/accessory/sdk/a/a$a;->p:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v3, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v15, "DEVELOPER_ID"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "developerId"

    invoke-direct {v3, v15, v12, v14, v4}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v3, Lcom/miui/hybrid/accessory/sdk/a/a$a;->q:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v4, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v15, "COMPANY"

    const/16 v12, 0x12

    move-object/from16 v21, v3

    const-string v3, "company"

    invoke-direct {v4, v15, v14, v12, v3}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v4, Lcom/miui/hybrid/accessory/sdk/a/a$a;->r:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v3, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v15, "MODELS"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string v4, "models"

    invoke-direct {v3, v15, v12, v14, v4}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v3, Lcom/miui/hybrid/accessory/sdk/a/a$a;->s:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v4, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v15, "LOCALES"

    const/16 v12, 0x14

    move-object/from16 v23, v3

    const-string v3, "locales"

    invoke-direct {v4, v15, v14, v12, v3}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v4, Lcom/miui/hybrid/accessory/sdk/a/a$a;->t:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v3, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v15, "REGIONS"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const-string v4, "regions"

    invoke-direct {v3, v15, v12, v14, v4}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v3, Lcom/miui/hybrid/accessory/sdk/a/a$a;->u:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v4, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v15, "DEFAULT_PAGE_NAME"

    const/16 v12, 0x16

    move-object/from16 v25, v3

    const-string v3, "defaultPageName"

    invoke-direct {v4, v15, v14, v12, v3}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v4, Lcom/miui/hybrid/accessory/sdk/a/a$a;->v:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v3, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v15, "PAGES"

    const/16 v14, 0x17

    move-object/from16 v26, v4

    const-string v4, "pages"

    invoke-direct {v3, v15, v12, v14, v4}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v3, Lcom/miui/hybrid/accessory/sdk/a/a$a;->w:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v4, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v14, "NATIVE_PACKAGE_NAMES"

    const/16 v15, 0x17

    const/16 v12, 0x18

    move-object/from16 v27, v3

    const-string v3, "nativePackageNames"

    invoke-direct {v4, v14, v15, v12, v3}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v4, Lcom/miui/hybrid/accessory/sdk/a/a$a;->x:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v3, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v12, "SIZE"

    const/16 v14, 0x18

    const/16 v15, 0x19

    move-object/from16 v28, v4

    const-string v4, "size"

    invoke-direct {v3, v12, v14, v15, v4}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v3, Lcom/miui/hybrid/accessory/sdk/a/a$a;->y:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v4, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v12, "DOMAINS"

    const/16 v14, 0x19

    const/16 v15, 0x1a

    move-object/from16 v29, v3

    const-string v3, "domains"

    invoke-direct {v4, v12, v14, v15, v3}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v4, Lcom/miui/hybrid/accessory/sdk/a/a$a;->z:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v3, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v12, "CHANGE_LOG"

    const/16 v14, 0x1a

    const/16 v15, 0x1c

    move-object/from16 v30, v4

    const-string v4, "changeLog"

    invoke-direct {v3, v12, v14, v15, v4}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v3, Lcom/miui/hybrid/accessory/sdk/a/a$a;->A:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v4, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v12, "INTRODUCTION"

    const/16 v14, 0x1b

    const/16 v15, 0x1d

    move-object/from16 v31, v3

    const-string v3, "introduction"

    invoke-direct {v4, v12, v14, v15, v3}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v4, Lcom/miui/hybrid/accessory/sdk/a/a$a;->B:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v3, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v12, "MIN_MINA_VERSION_CODE"

    const/16 v14, 0x1c

    const/16 v15, 0x1e

    move-object/from16 v32, v4

    const-string v4, "minMinaVersionCode"

    invoke-direct {v3, v12, v14, v15, v4}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v3, Lcom/miui/hybrid/accessory/sdk/a/a$a;->C:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v4, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const-string v12, "APP_VERSION_NAME"

    const/16 v14, 0x1d

    const/16 v15, 0x21

    move-object/from16 v33, v3

    const-string v3, "appVersionName"

    invoke-direct {v4, v12, v14, v15, v3}, Lcom/miui/hybrid/accessory/sdk/a/a$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v4, Lcom/miui/hybrid/accessory/sdk/a/a$a;->D:Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const/16 v3, 0x1e

    new-array v3, v3, [Lcom/miui/hybrid/accessory/sdk/a/a$a;

    const/4 v12, 0x0

    aput-object v0, v3, v12

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object v5, v3, v0

    const/4 v0, 0x4

    aput-object v7, v3, v0

    const/4 v0, 0x5

    aput-object v9, v3, v0

    const/4 v0, 0x6

    aput-object v11, v3, v0

    const/4 v0, 0x7

    aput-object v13, v3, v0

    const/16 v0, 0x8

    aput-object v10, v3, v0

    const/16 v0, 0x9

    aput-object v8, v3, v0

    const/16 v0, 0xa

    aput-object v6, v3, v0

    const/16 v0, 0xb

    aput-object v16, v3, v0

    const/16 v0, 0xc

    aput-object v17, v3, v0

    const/16 v0, 0xd

    aput-object v18, v3, v0

    const/16 v0, 0xe

    aput-object v19, v3, v0

    const/16 v0, 0xf

    aput-object v20, v3, v0

    const/16 v0, 0x10

    aput-object v21, v3, v0

    const/16 v0, 0x11

    aput-object v22, v3, v0

    const/16 v0, 0x12

    aput-object v23, v3, v0

    const/16 v0, 0x13

    aput-object v24, v3, v0

    const/16 v0, 0x14

    aput-object v25, v3, v0

    const/16 v0, 0x15

    aput-object v26, v3, v0

    const/16 v0, 0x16

    aput-object v27, v3, v0

    const/16 v0, 0x17

    aput-object v28, v3, v0

    const/16 v0, 0x18

    aput-object v29, v3, v0

    const/16 v0, 0x19

    aput-object v30, v3, v0

    const/16 v0, 0x1a

    aput-object v31, v3, v0

    const/16 v0, 0x1b

    aput-object v32, v3, v0

    const/16 v0, 0x1c

    aput-object v33, v3, v0

    const/16 v0, 0x1d

    aput-object v4, v3, v0

    sput-object v3, Lcom/miui/hybrid/accessory/sdk/a/a$a;->H:[Lcom/miui/hybrid/accessory/sdk/a/a$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/a$a;->E:Ljava/util/Map;

    const-class v0, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    sget-object v2, Lcom/miui/hybrid/accessory/sdk/a/a$a;->E:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/miui/hybrid/accessory/sdk/a/a$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lcom/miui/hybrid/accessory/sdk/a/a$a;->F:S

    iput-object p4, p0, Lcom/miui/hybrid/accessory/sdk/a/a$a;->G:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/hybrid/accessory/sdk/a/a$a;
    .locals 1

    const-class v0, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/hybrid/accessory/sdk/a/a$a;

    return-object p0
.end method

.method public static values()[Lcom/miui/hybrid/accessory/sdk/a/a$a;
    .locals 1

    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/a$a;->H:[Lcom/miui/hybrid/accessory/sdk/a/a$a;

    invoke-virtual {v0}, [Lcom/miui/hybrid/accessory/sdk/a/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/hybrid/accessory/sdk/a/a$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/a$a;->G:Ljava/lang/String;

    return-object v0
.end method
