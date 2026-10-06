.class public final enum Lra/j0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lra/j0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lra/j0;

.field public static final enum c:Lra/j0;

.field public static final enum d:Lra/j0;

.field public static final enum e:Lra/j0;

.field public static final enum f:Lra/j0;

.field public static final enum g:Lra/j0;

.field public static final enum h:Lra/j0;

.field public static final enum i:Lra/j0;

.field public static final enum j:Lra/j0;

.field private static final synthetic k:[Lra/j0;


# instance fields
.field private a:Lcom/miui/optimizecenter/storage/model/StorageItemInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lra/j0;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->b(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object v2

    const-string v3, "OTHER"

    invoke-direct {v0, v3, v1, v2}, Lra/j0;-><init>(Ljava/lang/String;ILcom/miui/optimizecenter/storage/model/StorageItemInfo;)V

    sput-object v0, Lra/j0;->b:Lra/j0;

    new-instance v2, Lra/j0;

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->b(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object v4

    const-string v5, "APP_DATA"

    invoke-direct {v2, v5, v3, v4}, Lra/j0;-><init>(Ljava/lang/String;ILcom/miui/optimizecenter/storage/model/StorageItemInfo;)V

    sput-object v2, Lra/j0;->c:Lra/j0;

    new-instance v4, Lra/j0;

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->b(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object v6

    const-string v7, "APP_SDCARD_DATA"

    invoke-direct {v4, v7, v5, v6}, Lra/j0;-><init>(Ljava/lang/String;ILcom/miui/optimizecenter/storage/model/StorageItemInfo;)V

    sput-object v4, Lra/j0;->d:Lra/j0;

    new-instance v6, Lra/j0;

    const/4 v7, 0x3

    invoke-static {v7}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->b(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object v8

    const-string v9, "PICTURE"

    invoke-direct {v6, v9, v7, v8}, Lra/j0;-><init>(Ljava/lang/String;ILcom/miui/optimizecenter/storage/model/StorageItemInfo;)V

    sput-object v6, Lra/j0;->e:Lra/j0;

    new-instance v8, Lra/j0;

    const/4 v9, 0x4

    invoke-static {v9}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->b(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object v10

    const-string v11, "AUDIO"

    invoke-direct {v8, v11, v9, v10}, Lra/j0;-><init>(Ljava/lang/String;ILcom/miui/optimizecenter/storage/model/StorageItemInfo;)V

    sput-object v8, Lra/j0;->f:Lra/j0;

    new-instance v10, Lra/j0;

    const/4 v11, 0x5

    invoke-static {v11}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->b(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object v12

    const-string v13, "VIDEO"

    invoke-direct {v10, v13, v11, v12}, Lra/j0;-><init>(Ljava/lang/String;ILcom/miui/optimizecenter/storage/model/StorageItemInfo;)V

    sput-object v10, Lra/j0;->g:Lra/j0;

    new-instance v12, Lra/j0;

    const/4 v13, 0x6

    invoke-static {v13}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->b(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object v14

    const-string v15, "APK"

    invoke-direct {v12, v15, v13, v14}, Lra/j0;-><init>(Ljava/lang/String;ILcom/miui/optimizecenter/storage/model/StorageItemInfo;)V

    sput-object v12, Lra/j0;->h:Lra/j0;

    new-instance v14, Lra/j0;

    const/4 v15, 0x7

    invoke-static {v15}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->b(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object v13

    const-string v11, "DOC"

    invoke-direct {v14, v11, v15, v13}, Lra/j0;-><init>(Ljava/lang/String;ILcom/miui/optimizecenter/storage/model/StorageItemInfo;)V

    sput-object v14, Lra/j0;->i:Lra/j0;

    new-instance v11, Lra/j0;

    const/16 v13, 0x8

    invoke-static {v13}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->b(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object v15

    const-string v9, "SYSTEM"

    invoke-direct {v11, v9, v13, v15}, Lra/j0;-><init>(Ljava/lang/String;ILcom/miui/optimizecenter/storage/model/StorageItemInfo;)V

    sput-object v11, Lra/j0;->j:Lra/j0;

    const/16 v9, 0x9

    new-array v9, v9, [Lra/j0;

    aput-object v0, v9, v1

    aput-object v2, v9, v3

    aput-object v4, v9, v5

    aput-object v6, v9, v7

    const/4 v0, 0x4

    aput-object v8, v9, v0

    const/4 v0, 0x5

    aput-object v10, v9, v0

    const/4 v0, 0x6

    aput-object v12, v9, v0

    const/4 v0, 0x7

    aput-object v14, v9, v0

    aput-object v11, v9, v13

    sput-object v9, Lra/j0;->k:[Lra/j0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/miui/optimizecenter/storage/model/StorageItemInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/optimizecenter/storage/model/StorageItemInfo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lra/j0;->a:Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lra/j0;
    .locals 1

    const-class v0, Lra/j0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lra/j0;

    return-object p0
.end method

.method public static values()[Lra/j0;
    .locals 1

    sget-object v0, Lra/j0;->k:[Lra/j0;

    invoke-virtual {v0}, [Lra/j0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lra/j0;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/miui/optimizecenter/storage/model/StorageItemInfo;
    .locals 1

    iget-object v0, p0, Lra/j0;->a:Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    return-object v0
.end method
