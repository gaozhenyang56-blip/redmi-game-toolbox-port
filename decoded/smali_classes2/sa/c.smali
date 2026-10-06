.class public final enum Lsa/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsa/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lsa/c;

.field public static final enum d:Lsa/c;

.field public static final enum e:Lsa/c;

.field public static final enum f:Lsa/c;

.field public static final enum g:Lsa/c;

.field public static final enum h:Lsa/c;

.field public static final enum i:Lsa/c;

.field public static final enum j:Lsa/c;

.field public static final enum k:Lsa/c;

.field public static final enum l:Lsa/c;

.field public static final enum m:Lsa/c;

.field private static final synthetic n:[Lsa/c;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lsa/c;

    const-string v1, "HEADER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lsa/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsa/c;->c:Lsa/c;

    new-instance v1, Lsa/c;

    const-string v3, "TOTAL_SIZE"

    const/4 v4, 0x1

    const v5, 0x7f121830

    invoke-direct {v1, v3, v4, v4, v5}, Lsa/c;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lsa/c;->d:Lsa/c;

    new-instance v3, Lsa/c;

    const-string v5, "APP_SIZE"

    const/4 v6, 0x2

    const v7, 0x7f12182e

    invoke-direct {v3, v5, v6, v4, v7}, Lsa/c;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lsa/c;->e:Lsa/c;

    new-instance v5, Lsa/c;

    const-string v7, "CACHE_SIZE"

    const/4 v8, 0x3

    const v9, 0x7f121822

    invoke-direct {v5, v7, v8, v4, v9}, Lsa/c;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lsa/c;->f:Lsa/c;

    new-instance v7, Lsa/c;

    const-string v9, "USER_DATA_SIZE"

    const/4 v10, 0x4

    const v11, 0x7f12182d

    invoke-direct {v7, v9, v10, v4, v11}, Lsa/c;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lsa/c;->g:Lsa/c;

    new-instance v9, Lsa/c;

    const-string v11, "APP_CLEANER"

    const/4 v12, 0x5

    const v13, 0x7f121835

    invoke-direct {v9, v11, v12, v4, v13}, Lsa/c;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lsa/c;->h:Lsa/c;

    new-instance v11, Lsa/c;

    const-string v13, "APP_WECHAT_CLEANER"

    const/4 v14, 0x6

    const v15, 0x7f121836

    invoke-direct {v11, v13, v14, v4, v15}, Lsa/c;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lsa/c;->i:Lsa/c;

    new-instance v13, Lsa/c;

    const-string v15, "CLEAR_ALL_DATA"

    const/4 v14, 0x7

    const v12, 0x7f121823

    invoke-direct {v13, v15, v14, v4, v12}, Lsa/c;-><init>(Ljava/lang/String;III)V

    sput-object v13, Lsa/c;->j:Lsa/c;

    new-instance v12, Lsa/c;

    const-string v15, "CLEAR_CACHE"

    const/16 v14, 0x8

    const v10, 0x7f121826

    invoke-direct {v12, v15, v14, v4, v10}, Lsa/c;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lsa/c;->k:Lsa/c;

    new-instance v10, Lsa/c;

    const-string v15, "MANAGER_STORAGE_SELF"

    const/16 v14, 0x9

    const v8, 0x7f12182a

    invoke-direct {v10, v15, v14, v4, v8}, Lsa/c;-><init>(Ljava/lang/String;III)V

    sput-object v10, Lsa/c;->l:Lsa/c;

    new-instance v8, Lsa/c;

    const-string v15, "LINE"

    const/16 v14, 0xa

    invoke-direct {v8, v15, v14, v6}, Lsa/c;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lsa/c;->m:Lsa/c;

    const/16 v15, 0xb

    new-array v15, v15, [Lsa/c;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    const/4 v0, 0x3

    aput-object v5, v15, v0

    const/4 v0, 0x4

    aput-object v7, v15, v0

    const/4 v0, 0x5

    aput-object v9, v15, v0

    const/4 v0, 0x6

    aput-object v11, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v12, v15, v0

    const/16 v0, 0x9

    aput-object v10, v15, v0

    aput-object v8, v15, v14

    sput-object v15, Lsa/c;->n:[Lsa/c;

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

    iput p3, p0, Lsa/c;->a:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lsa/c;->a:I

    iput p4, p0, Lsa/c;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsa/c;
    .locals 1

    const-class v0, Lsa/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsa/c;

    return-object p0
.end method

.method public static values()[Lsa/c;
    .locals 1

    sget-object v0, Lsa/c;->n:[Lsa/c;

    invoke-virtual {v0}, [Lsa/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsa/c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lsa/c;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lsa/c;->a:I

    return v0
.end method
