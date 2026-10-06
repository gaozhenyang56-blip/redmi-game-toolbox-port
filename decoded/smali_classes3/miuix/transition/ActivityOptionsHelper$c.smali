.class Lmiuix/transition/ActivityOptionsHelper$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/transition/ActivityOptionsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:Z

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lmiuix/transition/ActivityOptionsHelper$c;->c()Z

    move-result v0

    sput-boolean v0, Lmiuix/transition/ActivityOptionsHelper$c;->a:Z

    invoke-static {}, Lmiuix/transition/ActivityOptionsHelper$c;->d()Z

    move-result v0

    sput-boolean v0, Lmiuix/transition/ActivityOptionsHelper$c;->b:Z

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lmiuix/transition/ActivityOptionsHelper$c;->a:Z

    return v0
.end method

.method static synthetic b()Z
    .locals 1

    sget-boolean v0, Lmiuix/transition/ActivityOptionsHelper$c;->b:Z

    return v0
.end method

.method private static c()Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "makeScaleUpAnimationFromRoundedView"

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v1

    const-class v5, Landroid/graphics/Bitmap;

    aput-object v5, v4, v2

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-class v6, Landroid/os/Handler;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-class v6, Ljava/lang/Runnable;

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-class v6, Ljava/lang/Runnable;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-class v6, Ljava/lang/Runnable;

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-class v6, Ljava/lang/Runnable;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityOptionsHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method private static d()Z
    .locals 7

    const-class v0, Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "makeScaleUpDown"

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v1

    const-class v5, Landroid/graphics/Bitmap;

    aput-object v5, v4, v2

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-class v6, Landroid/os/Handler;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-class v6, Ljava/lang/Runnable;

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-class v6, Ljava/lang/Runnable;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-class v6, Ljava/lang/Runnable;

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-class v6, Ljava/lang/Runnable;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityOptionsHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method
