.class Lmiuix/transition/ActivityOptionsHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/transition/ActivityOptionsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lmiuix/transition/ActivityOptionsHelper$a;->b()Z

    move-result v0

    sput-boolean v0, Lmiuix/transition/ActivityOptionsHelper$a;->a:Z

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lmiuix/transition/ActivityOptionsHelper$a;->a:Z

    return v0
.end method

.method private static b()Z
    .locals 8

    const-class v0, Landroid/app/ActivityOptions;

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "makeMiuiClipAnimation"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v4, v2

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v4, v1

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    const/4 v5, 0x5

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityOptionsHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_0
    return v1
.end method
