.class public Lx6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x11

.field public static b:I = 0x30

.field public static c:I = 0x50

.field public static d:I = 0x11

.field public static e:F = -1.0f

.field public static f:F = 0.0f

.field public static g:F = 1.7777778f

.field public static h:F = 1.3333333f

.field public static i:F = 2.3333333f


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "android.sizecompat.AspectRatioInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sget v1, Lx6/a;->d:I

    const-string v2, "DEFAULT_GRAVITY"

    invoke-static {v0, v2, v1}, Lx6/a;->b(Ljava/lang/Class;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lx6/a;->d:I

    sget v1, Lx6/a;->a:I

    const-string v2, "GRAVITY_CENTER"

    invoke-static {v0, v2, v1}, Lx6/a;->b(Ljava/lang/Class;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lx6/a;->a:I

    sget v1, Lx6/a;->b:I

    const-string v2, "GRAVITY_TOP"

    invoke-static {v0, v2, v1}, Lx6/a;->b(Ljava/lang/Class;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lx6/a;->b:I

    sget v1, Lx6/a;->c:I

    const-string v2, "GRAVITY_BOTTOM"

    invoke-static {v0, v2, v1}, Lx6/a;->b(Ljava/lang/Class;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lx6/a;->c:I

    sget v1, Lx6/a;->f:F

    const-string v2, "RATIO_FULLSCREEN"

    invoke-static {v0, v2, v1}, Lx6/a;->a(Ljava/lang/Class;Ljava/lang/String;F)F

    move-result v1

    sput v1, Lx6/a;->f:F

    sget v1, Lx6/a;->e:F

    const-string v2, "RATIO_UNDEFINED"

    invoke-static {v0, v2, v1}, Lx6/a;->a(Ljava/lang/Class;Ljava/lang/String;F)F

    move-result v1

    sput v1, Lx6/a;->e:F

    sget v1, Lx6/a;->g:F

    const-string v2, "RATIO_16_TO_9"

    invoke-static {v0, v2, v1}, Lx6/a;->a(Ljava/lang/Class;Ljava/lang/String;F)F

    move-result v1

    sput v1, Lx6/a;->g:F

    sget v1, Lx6/a;->h:F

    const-string v2, "RATIO_4_TO_3"

    invoke-static {v0, v2, v1}, Lx6/a;->a(Ljava/lang/Class;Ljava/lang/String;F)F

    move-result v0

    sput v0, Lx6/a;->h:F

    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;F)F
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lbh/f;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p2
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/String;I)I
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lbh/f;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p2
.end method
