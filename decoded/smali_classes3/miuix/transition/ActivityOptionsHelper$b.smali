.class Lmiuix/transition/ActivityOptionsHelper$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/transition/ActivityOptionsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lmiuix/transition/ActivityOptionsHelper$b;->b()Z

    move-result v0

    sput-boolean v0, Lmiuix/transition/ActivityOptionsHelper$b;->a:Z

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lmiuix/transition/ActivityOptionsHelper$b;->a:Z

    return v0
.end method

.method private static b()Z
    .locals 8

    const-class v0, Landroid/app/ActivityOptions;

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "makeMiuiRoundAnimation"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    aput-object v5, v4, v1

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v6

    const/4 v6, 0x3

    aput-object v5, v4, v6

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
