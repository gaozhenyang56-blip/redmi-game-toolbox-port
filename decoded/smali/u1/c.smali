.class public final enum Lu1/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu1/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lu1/c;

.field public static final enum c:Lu1/c;

.field public static final enum d:Lu1/c;

.field public static final enum e:Lu1/c;

.field public static final enum f:Lu1/c;

.field public static final enum g:Lu1/c;

.field public static final h:[Ljava/lang/String;

.field public static final i:[I

.field private static final synthetic j:[Lu1/c;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v0, Lu1/c;

    const-string v1, "internal_speaker"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lu1/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu1/c;->b:Lu1/c;

    new-instance v1, Lu1/c;

    const-string v3, "hdmi"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lu1/c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lu1/c;->c:Lu1/c;

    new-instance v3, Lu1/c;

    const-string v5, "miracast"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lu1/c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lu1/c;->d:Lu1/c;

    new-instance v5, Lu1/c;

    const-string v7, "headphone"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lu1/c;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lu1/c;->e:Lu1/c;

    new-instance v7, Lu1/c;

    const-string v9, "bluetooth"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lu1/c;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lu1/c;->f:Lu1/c;

    new-instance v9, Lu1/c;

    const-string v11, "usb"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lu1/c;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lu1/c;->g:Lu1/c;

    const/4 v11, 0x6

    new-array v13, v11, [Lu1/c;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    sput-object v13, Lu1/c;->j:[Lu1/c;

    const-string v14, "internal_speaker"

    const-string v15, "hdmi"

    const-string v16, "miracast"

    const-string v17, "headphone"

    const-string v18, "bluetooth"

    const-string v19, "usb"

    const-string v20, "other"

    filled-new-array/range {v14 .. v20}, [Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lu1/c;->h:[Ljava/lang/String;

    new-array v11, v11, [I

    invoke-virtual {v0}, Lu1/c;->a()I

    move-result v0

    aput v0, v11, v2

    invoke-virtual {v1}, Lu1/c;->a()I

    move-result v0

    aput v0, v11, v4

    invoke-virtual {v3}, Lu1/c;->a()I

    move-result v0

    aput v0, v11, v6

    invoke-virtual {v5}, Lu1/c;->a()I

    move-result v0

    aput v0, v11, v8

    invoke-virtual {v7}, Lu1/c;->a()I

    move-result v0

    aput v0, v11, v10

    invoke-virtual {v9}, Lu1/c;->a()I

    move-result v0

    aput v0, v11, v12

    sput-object v11, Lu1/c;->i:[I

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

    iput p3, p0, Lu1/c;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu1/c;
    .locals 1

    const-class v0, Lu1/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu1/c;

    return-object p0
.end method

.method public static values()[Lu1/c;
    .locals 1

    sget-object v0, Lu1/c;->j:[Lu1/c;

    invoke-virtual {v0}, [Lu1/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu1/c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lu1/c;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lu1/c;->h:[Ljava/lang/String;

    iget v1, p0, Lu1/c;->a:I

    aget-object v0, v0, v1

    return-object v0
.end method
