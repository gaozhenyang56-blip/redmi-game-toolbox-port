.class public Lkc/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# static fields
.field private static final a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lkc/c$a;->b()Z

    move-result v0

    sput-boolean v0, Lkc/c$a;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 6

    sget-boolean v0, Lkc/c$a;->a:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lkc/c$a;->b:Z

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/app/ColorLightManager;

    invoke-direct {v0, p0}, Landroid/app/ColorLightManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f060cb6

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v4

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    const/4 p0, 0x7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v5

    const-string p0, "MIUISafety-Flares"

    const-string v3, "setColorCommon"

    invoke-static {p0, v0, v3, v2, v1}, Lbh/e;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    sput-boolean p1, Lkc/c$a;->b:Z

    :cond_2
    :goto_1
    return-void
.end method

.method private static b()Z
    .locals 11

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastT()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "supportLedControl: "

    const-string v3, "MIUISafety-Flares"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    const-string v5, "yudi"

    const-string v6, "sheng"

    const-string v7, "uke"

    const-string v8, "muyu"

    const-string v9, "taiko"

    const-string v10, "koto"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/ColorLightManager;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/ColorLightManager;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v5, "setColorCommon"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    aput-object v7, v6, v1

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move v1, v4

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
