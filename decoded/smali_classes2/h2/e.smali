.class public final enum Lh2/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lh2/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lh2/e;

.field public static final enum e:Lh2/e;

.field public static final enum f:Lh2/e;

.field public static final enum g:Lh2/e;

.field public static final enum h:Lh2/e;

.field public static final enum i:Lh2/e;

.field public static final enum j:Lh2/e;

.field public static final enum k:Lh2/e;

.field public static final enum l:Lh2/e;

.field public static final enum m:Lh2/e;

.field public static final enum n:Lh2/e;

.field public static final enum o:Lh2/e;

.field public static final enum p:Lh2/e;

.field public static final enum q:Lh2/e;

.field public static final enum r:Lh2/e;

.field public static final enum s:Lh2/e;

.field public static final enum t:Lh2/e;

.field public static final enum u:Lh2/e;

.field public static final enum v:Lh2/e;

.field public static final enum w:Lh2/e;

.field private static final synthetic x:[Lh2/e;


# instance fields
.field public a:I

.field public b:Ljava/lang/Class;

.field public c:Lh2/d;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    new-instance v6, Lh2/e;

    const-class v4, Lcom/miui/antispam/policy/EmptyNumberPolicy;

    sget-object v13, Lh2/d;->a:Lh2/d;

    const-string v1, "EMPTY_NUMBER_POLICY"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lh2/e;-><init>(Ljava/lang/String;IILjava/lang/Class;Lh2/d;)V

    sput-object v6, Lh2/e;->d:Lh2/e;

    new-instance v0, Lh2/e;

    const-class v11, Lcom/miui/antispam/policy/StrongCloudWhiteListPolicy;

    sget-object v1, Lh2/d;->c:Lh2/d;

    const-string v8, "STRONG_CLOUD_WHITELIST_POLICY"

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v7, v0

    move-object v12, v1

    invoke-direct/range {v7 .. v12}, Lh2/e;-><init>(Ljava/lang/String;IILjava/lang/Class;Lh2/d;)V

    sput-object v0, Lh2/e;->e:Lh2/e;

    new-instance v2, Lh2/e;

    const-class v18, Lcom/miui/antispam/policy/StrongCloudBlackListPolicy;

    const-string v15, "STRONG_CLOUD_BLACKLIST_POLICY"

    const/16 v16, 0x2

    const/16 v17, 0x2

    move-object v14, v2

    move-object/from16 v19, v1

    invoke-direct/range {v14 .. v19}, Lh2/e;-><init>(Ljava/lang/String;IILjava/lang/Class;Lh2/d;)V

    sput-object v2, Lh2/e;->f:Lh2/e;

    new-instance v3, Lh2/e;

    const-class v18, Lcom/miui/antispam/policy/WhiteListPolicy;

    const-string v15, "WHITELIST_POLICY"

    const/16 v16, 0x3

    const/16 v17, 0x3

    move-object v14, v3

    invoke-direct/range {v14 .. v19}, Lh2/e;-><init>(Ljava/lang/String;IILjava/lang/Class;Lh2/d;)V

    sput-object v3, Lh2/e;->g:Lh2/e;

    new-instance v4, Lh2/e;

    const-class v18, Lcom/miui/antispam/policy/BlackListPolicy;

    const-string v15, "BLACKLIST_POLICY"

    const/16 v16, 0x4

    const/16 v17, 0x4

    move-object v14, v4

    invoke-direct/range {v14 .. v19}, Lh2/e;-><init>(Ljava/lang/String;IILjava/lang/Class;Lh2/d;)V

    sput-object v4, Lh2/e;->h:Lh2/e;

    new-instance v5, Lh2/e;

    const-class v18, Lcom/miui/antispam/policy/BlackPrefixPolicy;

    const-string v15, "BLACK_PREFIX_POLICY"

    const/16 v16, 0x5

    const/16 v17, 0x6

    move-object v14, v5

    invoke-direct/range {v14 .. v19}, Lh2/e;-><init>(Ljava/lang/String;IILjava/lang/Class;Lh2/d;)V

    sput-object v5, Lh2/e;->i:Lh2/e;

    new-instance v20, Lh2/e;

    const-class v18, Lcom/miui/antispam/policy/ContactsPolicy;

    const-string v15, "CONTACTS_POLICY"

    const/16 v16, 0x6

    const/16 v17, 0x7

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lh2/e;-><init>(Ljava/lang/String;IILjava/lang/Class;Lh2/d;)V

    sput-object v20, Lh2/e;->j:Lh2/e;

    new-instance v21, Lh2/e;

    const-class v18, Lcom/miui/antispam/policy/BlackAddressPolicy;

    const-string v15, "BLACK_ADDRESS_POLICY"

    const/16 v16, 0x7

    const/16 v17, 0x8

    move-object/from16 v14, v21

    invoke-direct/range {v14 .. v19}, Lh2/e;-><init>(Ljava/lang/String;IILjava/lang/Class;Lh2/d;)V

    sput-object v21, Lh2/e;->k:Lh2/e;

    new-instance v22, Lh2/e;

    const-class v11, Lcom/miui/antispam/policy/ServiceSmsPolicy;

    sget-object v23, Lh2/d;->b:Lh2/d;

    const-string v8, "SERVICE_SMS_POLICY"

    const/16 v9, 0x8

    const/16 v10, 0x9

    move-object/from16 v7, v22

    move-object/from16 v12, v23

    invoke-direct/range {v7 .. v12}, Lh2/e;-><init>(Ljava/lang/String;IILjava/lang/Class;Lh2/d;)V

    sput-object v22, Lh2/e;->l:Lh2/e;

    new-instance v24, Lh2/e;

    const-class v18, Lcom/miui/antispam/policy/KeywordsWhiteListPolicy;

    const-string v15, "KEYWORDS_WHITELIST_POLICY"

    const/16 v16, 0x9

    const/16 v17, 0xa

    move-object/from16 v14, v24

    move-object/from16 v19, v23

    invoke-direct/range {v14 .. v19}, Lh2/e;-><init>(Ljava/lang/String;IILjava/lang/Class;Lh2/d;)V

    sput-object v24, Lh2/e;->m:Lh2/e;

    new-instance v25, Lh2/e;

    const-class v18, Lcom/miui/antispam/policy/CloudWhiteListPolicy;

    const-string v15, "CLOUD_WHITELIST_POLICY"

    const/16 v16, 0xa

    const/16 v17, 0xb

    move-object/from16 v14, v25

    move-object/from16 v19, v1

    invoke-direct/range {v14 .. v19}, Lh2/e;-><init>(Ljava/lang/String;IILjava/lang/Class;Lh2/d;)V

    sput-object v25, Lh2/e;->n:Lh2/e;

    new-instance v26, Lh2/e;

    const-class v18, Lcom/miui/antispam/policy/StrangerPolicy;

    const-string v15, "STRANGER_POLICY"

    const/16 v16, 0xb

    const/16 v17, 0xc

    move-object/from16 v14, v26

    invoke-direct/range {v14 .. v19}, Lh2/e;-><init>(Ljava/lang/String;IILjava/lang/Class;Lh2/d;)V

    sput-object v26, Lh2/e;->o:Lh2/e;

    new-instance v27, Lh2/e;

    const-class v11, Lcom/miui/antispam/policy/OverseaPolicy;

    const-string v8, "OVERSEA_POLICY"

    const/16 v9, 0xc

    const/16 v10, 0xd

    move-object/from16 v7, v27

    move-object v12, v13

    invoke-direct/range {v7 .. v12}, Lh2/e;-><init>(Ljava/lang/String;IILjava/lang/Class;Lh2/d;)V

    sput-object v27, Lh2/e;->p:Lh2/e;

    new-instance v28, Lh2/e;

    const-class v18, Lcom/miui/antispam/policy/KeywordsBlackListPolicy;

    const-string v15, "KEYWORDS_BLACKLIST_POLICY"

    const/16 v16, 0xd

    const/16 v17, 0xe

    move-object/from16 v14, v28

    move-object/from16 v19, v23

    invoke-direct/range {v14 .. v19}, Lh2/e;-><init>(Ljava/lang/String;IILjava/lang/Class;Lh2/d;)V

    sput-object v28, Lh2/e;->q:Lh2/e;

    new-instance v29, Lh2/e;

    const-class v18, Lcom/miui/antispam/policy/CloudBlackListPolicy;

    const-string v15, "CLOUD_BLACKLIST_POLICY"

    const/16 v16, 0xe

    const/16 v17, 0xf

    move-object/from16 v14, v29

    move-object/from16 v19, v1

    invoke-direct/range {v14 .. v19}, Lh2/e;-><init>(Ljava/lang/String;IILjava/lang/Class;Lh2/d;)V

    sput-object v29, Lh2/e;->r:Lh2/e;

    new-instance v1, Lh2/e;

    const-class v18, Lcom/miui/antispam/policy/CloudWhiteKeywordsPolicy;

    const-string v15, "CLOUD_WHITE_KEYWORDS_POLICY"

    const/16 v16, 0xf

    const/16 v17, 0x10

    move-object v14, v1

    move-object/from16 v19, v23

    invoke-direct/range {v14 .. v19}, Lh2/e;-><init>(Ljava/lang/String;IILjava/lang/Class;Lh2/d;)V

    sput-object v1, Lh2/e;->s:Lh2/e;

    new-instance v30, Lh2/e;

    const-class v18, Lcom/miui/antispam/policy/CloudBlackKeywordsPolicy;

    const-string v15, "CLOUD_BLACK_KEYWORDS_POLICY"

    const/16 v16, 0x10

    const/16 v17, 0x11

    move-object/from16 v14, v30

    invoke-direct/range {v14 .. v19}, Lh2/e;-><init>(Ljava/lang/String;IILjava/lang/Class;Lh2/d;)V

    sput-object v30, Lh2/e;->t:Lh2/e;

    new-instance v31, Lh2/e;

    const-class v18, Lcom/miui/antispam/policy/SmartSmsFilterPolicy;

    const-string v15, "SMART_SMS_FILTER_POLICY"

    const/16 v16, 0x11

    const/16 v17, 0x12

    move-object/from16 v14, v31

    invoke-direct/range {v14 .. v19}, Lh2/e;-><init>(Ljava/lang/String;IILjava/lang/Class;Lh2/d;)V

    sput-object v31, Lh2/e;->u:Lh2/e;

    new-instance v14, Lh2/e;

    const-class v11, Lcom/miui/antispam/policy/CallTransferPolicy;

    const-string v8, "CALL_TRANSFER_POLICY"

    const/16 v9, 0x12

    const/16 v10, 0x13

    move-object v7, v14

    invoke-direct/range {v7 .. v12}, Lh2/e;-><init>(Ljava/lang/String;IILjava/lang/Class;Lh2/d;)V

    sput-object v14, Lh2/e;->v:Lh2/e;

    new-instance v15, Lh2/e;

    const-class v11, Lcom/miui/antispam/policy/ReportedNumberPolicy;

    const-string v8, "REPORTED_NUMBER_POLICY"

    const/16 v9, 0x13

    const/16 v10, 0x14

    move-object v7, v15

    invoke-direct/range {v7 .. v12}, Lh2/e;-><init>(Ljava/lang/String;IILjava/lang/Class;Lh2/d;)V

    sput-object v15, Lh2/e;->w:Lh2/e;

    const/16 v7, 0x14

    new-array v7, v7, [Lh2/e;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v6, 0x1

    aput-object v0, v7, v6

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    const/4 v0, 0x6

    aput-object v20, v7, v0

    const/4 v0, 0x7

    aput-object v21, v7, v0

    const/16 v0, 0x8

    aput-object v22, v7, v0

    const/16 v0, 0x9

    aput-object v24, v7, v0

    const/16 v0, 0xa

    aput-object v25, v7, v0

    const/16 v0, 0xb

    aput-object v26, v7, v0

    const/16 v0, 0xc

    aput-object v27, v7, v0

    const/16 v0, 0xd

    aput-object v28, v7, v0

    const/16 v0, 0xe

    aput-object v29, v7, v0

    const/16 v0, 0xf

    aput-object v1, v7, v0

    const/16 v0, 0x10

    aput-object v30, v7, v0

    const/16 v0, 0x11

    aput-object v31, v7, v0

    const/16 v0, 0x12

    aput-object v14, v7, v0

    const/16 v0, 0x13

    aput-object v15, v7, v0

    sput-object v7, Lh2/e;->x:[Lh2/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;Lh2/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class;",
            "Lh2/d;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lh2/e;->a:I

    iput-object p4, p0, Lh2/e;->b:Ljava/lang/Class;

    iput-object p5, p0, Lh2/e;->c:Lh2/d;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lh2/e;
    .locals 1

    const-class v0, Lh2/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh2/e;

    return-object p0
.end method

.method public static values()[Lh2/e;
    .locals 1

    sget-object v0, Lh2/e;->x:[Lh2/e;

    invoke-virtual {v0}, [Lh2/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh2/e;

    return-object v0
.end method
