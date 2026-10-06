.class public La4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# static fields
.field public static final a:I

.field public static final b:Ljava/lang/String;

.field public static c:Landroid/graphics/Typeface$Builder;

.field public static d:Landroid/graphics/Typeface$Builder;

.field private static final e:[I

.field private static final f:[I

.field private static final g:[[[I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "ro.miui.ui.font.mi_font_path"

    const-string v1, "system/fonts/MiLanProVF.ttf"

    invoke-static {v0, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La4/d;->b:Ljava/lang/String;

    const/4 v1, 0x0

    sput-object v1, La4/d;->c:Landroid/graphics/Typeface$Builder;

    sput-object v1, La4/d;->d:Landroid/graphics/Typeface$Builder;

    :try_start_0
    new-instance v1, Landroid/graphics/Typeface$Builder;

    invoke-direct {v1, v0}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    sput-object v1, La4/d;->c:Landroid/graphics/Typeface$Builder;

    new-instance v0, Landroid/graphics/Typeface$Builder;

    const-string v1, "/data/system/theme/fonts/MI_Theme_VF.ttf"

    invoke-direct {v0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    sput-object v0, La4/d;->d:Landroid/graphics/Typeface$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, La4/d;->e:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, La4/d;->f:[I

    sput v0, La4/d;->a:I

    const/4 v1, 0x3

    new-array v2, v1, [[[I

    sput-object v2, La4/d;->g:[[[I

    new-array v3, v0, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    fill-array-data v5, :array_2

    const/4 v6, 0x0

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_3

    const/4 v7, 0x1

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_4

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_5

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_6

    const/4 v8, 0x4

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_7

    const/4 v9, 0x5

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_8

    const/4 v10, 0x6

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_9

    const/4 v11, 0x7

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_a

    const/16 v12, 0x8

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_b

    const/16 v13, 0x9

    aput-object v5, v3, v13

    aput-object v3, v2, v6

    new-array v3, v0, [[I

    new-array v5, v4, [I

    fill-array-data v5, :array_c

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_d

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_e

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_f

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_10

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_11

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_12

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_13

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_14

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_15

    aput-object v5, v3, v13

    aput-object v3, v2, v7

    new-array v0, v0, [[I

    new-array v3, v4, [I

    fill-array-data v3, :array_16

    aput-object v3, v0, v6

    new-array v3, v4, [I

    fill-array-data v3, :array_17

    aput-object v3, v0, v7

    new-array v3, v4, [I

    fill-array-data v3, :array_18

    aput-object v3, v0, v4

    new-array v3, v4, [I

    fill-array-data v3, :array_19

    aput-object v3, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v8

    new-array v1, v4, [I

    fill-array-data v1, :array_1b

    aput-object v1, v0, v9

    new-array v1, v4, [I

    fill-array-data v1, :array_1c

    aput-object v1, v0, v10

    new-array v1, v4, [I

    fill-array-data v1, :array_1d

    aput-object v1, v0, v11

    new-array v1, v4, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v12

    new-array v1, v4, [I

    fill-array-data v1, :array_1f

    aput-object v1, v0, v13

    aput-object v0, v2, v4

    return-void

    nop

    :array_0
    .array-data 4
        0x96
        0xc8
        0xfa
        0x131
        0x154
        0x190
        0x1e0
        0x21c
        0x276
        0x2bc
    .end array-data

    :array_1
    .array-data 4
        0xa
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x50
        0x5a
        0x64
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x5
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x5
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x6
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x6
    .end array-data

    :array_6
    .array-data 4
        0x2
        0x7
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x8
    .end array-data

    :array_8
    .array-data 4
        0x4
        0x8
    .end array-data

    :array_9
    .array-data 4
        0x5
        0x9
    .end array-data

    :array_a
    .array-data 4
        0x6
        0x9
    .end array-data

    :array_b
    .array-data 4
        0x7
        0x9
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x3
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x5
    .end array-data

    :array_10
    .array-data 4
        0x2
        0x6
    .end array-data

    :array_11
    .array-data 4
        0x2
        0x7
    .end array-data

    :array_12
    .array-data 4
        0x3
        0x8
    .end array-data

    :array_13
    .array-data 4
        0x4
        0x9
    .end array-data

    :array_14
    .array-data 4
        0x5
        0x9
    .end array-data

    :array_15
    .array-data 4
        0x6
        0x9
    .end array-data

    :array_16
    .array-data 4
        0x0
        0x5
    .end array-data

    :array_17
    .array-data 4
        0x1
        0x5
    .end array-data

    :array_18
    .array-data 4
        0x2
        0x5
    .end array-data

    :array_19
    .array-data 4
        0x3
        0x6
    .end array-data

    :array_1a
    .array-data 4
        0x3
        0x6
    .end array-data

    :array_1b
    .array-data 4
        0x4
        0x7
    .end array-data

    :array_1c
    .array-data 4
        0x5
        0x8
    .end array-data

    :array_1d
    .array-data 4
        0x6
        0x8
    .end array-data

    :array_1e
    .array-data 4
        0x7
        0x8
    .end array-data

    :array_1f
    .array-data 4
        0x8
        0x9
    .end array-data
.end method

.method public static a(IFII)I
    .locals 3

    invoke-static {p0, p1}, La4/d;->e(IF)[I

    move-result-object p1

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0, p2}, La4/d;->d(II)I

    move-result v0

    invoke-static {p0, p2}, La4/d;->d(II)I

    move-result p0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-static {p1, p2}, La4/d;->d(II)I

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    const/high16 v1, 0x42480000    # 50.0f

    const/16 v2, 0x32

    if-ge p3, v2, :cond_0

    int-to-float p1, p3

    div-float/2addr p1, v1

    sub-float/2addr p2, p1

    int-to-float p3, v0

    mul-float/2addr p2, p3

    int-to-float p0, p0

    mul-float/2addr p1, p0

    add-float/2addr p2, p1

    :goto_0
    float-to-int p0, p2

    goto :goto_1

    :cond_0
    if-le p3, v2, :cond_1

    sub-int/2addr p3, v2

    int-to-float p3, p3

    div-float/2addr p3, v1

    sub-float/2addr p2, p3

    int-to-float p0, p0

    mul-float/2addr p2, p0

    int-to-float p0, p1

    mul-float/2addr p3, p0

    add-float/2addr p2, p3

    goto :goto_0

    :cond_1
    :goto_1
    return p0
.end method

.method public static b(II)Landroid/graphics/Typeface;
    .locals 2

    const-string v0, "\'wght\' "

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    sget-object p1, La4/d;->c:Landroid/graphics/Typeface$Builder;

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Typeface$Builder;

    sget-object v1, La4/d;->b:Ljava/lang/String;

    invoke-direct {p1, v1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    sput-object p1, La4/d;->c:Landroid/graphics/Typeface$Builder;

    :cond_0
    sget-object p1, La4/d;->c:Landroid/graphics/Typeface$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p1, La4/d;->d:Landroid/graphics/Typeface$Builder;

    if-nez p1, :cond_2

    invoke-static {}, La4/d;->f()V

    :cond_2
    sget-object p1, La4/d;->d:Landroid/graphics/Typeface$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0
.end method

.method private static c(I)[I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, La4/d;->e:[I

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, La4/d;->f:[I

    :goto_1
    return-object p0
.end method

.method private static d(II)I
    .locals 0

    invoke-static {p1}, La4/d;->c(I)[I

    move-result-object p1

    aget p0, p1, p0

    return p0
.end method

.method private static e(IF)[I
    .locals 1

    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x41400000    # 12.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    sget-object v0, La4/d;->g:[[[I

    aget-object p1, v0, p1

    aget-object p0, p1, p0

    return-object p0
.end method

.method public static f()V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/graphics/Typeface$Builder;

    const-string v1, "/data/system/theme/fonts/MI_Theme_VF.ttf"

    invoke-direct {v0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    sput-object v0, La4/d;->d:Landroid/graphics/Typeface$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
