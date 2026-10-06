.class public Llb/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Llb/e;->a:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Llb/e;->b:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Llb/e;->c:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Llb/e;->d:[I

    return-void

    :array_0
    .array-data 4
        0x50
        0x55
        0x5a
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x7f120f54
        0x7f120f55
        0x7f120f56
        0x7f120f57
    .end array-data

    :array_2
    .array-data 4
        0x0
        -0x1
        0x1
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x7f120f4b
        0x7f120f4c
        0x7f120f4d
        0x7f120f4e
    .end array-data
.end method

.method private static a([I[I)[I
    .locals 8

    array-length v0, p0

    new-array v1, v0, [I

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    aget v5, p1, v4

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget v7, p0, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static b()[I
    .locals 2

    sget-object v0, Llb/e;->a:[I

    sget-object v1, Llb/e;->b:[I

    invoke-static {v0, v1}, Llb/e;->a([I[I)[I

    move-result-object v0

    return-object v0
.end method
