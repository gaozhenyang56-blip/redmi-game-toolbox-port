.class public Lcom/miui/permcenter/compact/AppOpsUtilsCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/compact/AppOpsUtilsCompat$MiuiOnOpActiveChangedListener;
    }
.end annotation


# static fields
.field private static final BUILD_UTC:Ljava/lang/String; = "ro.build.date.utc"

.field public static final OP_REAL_MIUI_END:I

.field public static final TAG:Ljava/lang/String; = "AppOpsUtilsCompat"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/app/AppOpsManager;

    const-string v1, "AppOpsUtilsCompat"

    const-string v2, "MIUI_OP_END"

    invoke-static {v1, v0, v2}, Lbh/e;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->OP_REAL_MIUI_END:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/permcenter/compact/AppOpsUtilsCompat$MiuiOnOpActiveChangedListener;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->lambda$startWatchingActive$0(Lcom/miui/permcenter/compact/AppOpsUtilsCompat$MiuiOnOpActiveChangedListener;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static autoOptmize(Landroid/content/Context;)V
    .locals 2

    const-string v0, "AppOpsUtilsCompat"

    const-string v1, "start auto optmize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->needOpenMiuiOptimize()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->openMiuiOptimize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "autoOptmize exception :"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/miui/permcenter/compact/AppOpsUtilsCompat$MiuiOnOpActiveChangedListener;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->lambda$startWatchingNoted$1(Lcom/miui/permcenter/compact/AppOpsUtilsCompat$MiuiOnOpActiveChangedListener;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static checkOpNoThrow(Landroid/app/AppOpsManager;Ljava/lang/String;II)I
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "checkOpNoThrow"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v5

    aput-object p1, v2, v6

    invoke-static {p0, v1, v3, v2}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return v0
.end method

.method public static isSupportGetPhoneNumberOperator()Z
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {}, Ldb/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2737

    sget v1, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->OP_REAL_MIUI_END:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportManageMmsByBpf()Z
    .locals 3

    const-class v0, Lmiui/security/SecurityManager;

    const-string v1, "AppOpsUtilsCompat"

    const-string v2, "IS_SUPPORT_MMS_BPF"

    invoke-static {v1, v0, v2}, Lbh/e;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportOAIDApps()Z
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    const/16 v0, 0x2735

    sget v1, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->OP_REAL_MIUI_END:I

    if-ge v0, v1, :cond_1

    invoke-static {}, Ldb/c;->a()I

    move-result v0

    const/16 v1, 0xb

    if-gt v0, v1, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ldb/c;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isXOptMode()Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AppOpsUtilsCompat"

    const-string v2, "android.miui.AppOpsUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v4, "isXOptMode"

    new-array v5, v0, [Ljava/lang/Class;

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static/range {v1 .. v6}, Lcom/miui/permcenter/compact/ReflectUtilHelper;->callStaticObjectMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private static synthetic lambda$startWatchingActive$0(Lcom/miui/permcenter/compact/AppOpsUtilsCompat$MiuiOnOpActiveChangedListener;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const-class p1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onOpActiveChanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_3

    array-length p2, p3

    const/4 v0, 0x4

    if-ne p2, v0, :cond_8

    aget-object p2, p3, v1

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    :cond_0
    const/4 v0, 0x1

    aget-object v2, p3, v0

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_8

    const/4 v2, 0x2

    aget-object v3, p3, v2

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_8

    const/4 v3, 0x3

    aget-object v4, p3, v3

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_8

    instance-of v4, p2, Ljava/lang/String;

    if-eqz v4, :cond_1

    const-class p2, Landroid/app/AppOpsManager;

    new-array v4, v0, [Ljava/lang/Class;

    aput-object p1, v4, v1

    new-array p1, v0, [Ljava/lang/Object;

    aget-object v5, p3, v1

    aput-object v5, p1, v1

    const-string v1, "strOpToOp"

    invoke-static {p2, v1, v4, p1}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    :goto_0
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/String;

    aget-object p3, p3, v3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-interface {p0, v1, p1, p2, p3}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat$MiuiOnOpActiveChangedListener;->onOpActiveChanged(IILjava/lang/String;Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    if-ne p1, p0, :cond_4

    const-string p0, ""

    return-object p0

    :cond_4
    const-class p0, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_5

    return-object v2

    :cond_5
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_6

    return-object v2

    :cond_6
    const-class p0, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_7

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_7
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_8

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_8
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$startWatchingNoted$1(Lcom/miui/permcenter/compact/AppOpsUtilsCompat$MiuiOnOpActiveChangedListener;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onOpNoted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p1, :cond_3

    array-length p1, p3

    const/4 p2, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, p2, :cond_0

    aget-object p1, p3, v0

    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    aget-object v3, p3, v2

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    aget-object v3, p3, v1

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    aget-object v4, p3, v3

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object v0, p3, v1

    check-cast v0, Ljava/lang/String;

    aget-object p3, p3, v3

    :goto_0
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p0, p1, p2, v0, p3}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat$MiuiOnOpActiveChangedListener;->onOpNoted(IILjava/lang/String;I)V

    :goto_1
    move v0, v2

    goto/16 :goto_2

    :cond_0
    array-length p1, p3

    const/4 v3, 0x6

    if-ne p1, v3, :cond_1

    aget-object p1, p3, v0

    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_1

    aget-object v4, p3, v2

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    aget-object v4, p3, v1

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    aget-object p2, p3, p2

    instance-of p2, p2, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    const/4 p2, 0x5

    aget-object v4, p3, p2

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/app/AppOpsManagerCompat;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/String;

    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, v0, v1, p2}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat$MiuiOnOpActiveChangedListener;->onOpNoted(IILjava/lang/String;I)V

    goto :goto_1

    :cond_1
    array-length p1, p3

    const/4 p2, 0x7

    if-ne p1, p2, :cond_2

    aget-object p1, p3, v0

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_2

    aget-object p2, p3, v2

    instance-of p2, p2, Ljava/lang/Integer;

    if-eqz p2, :cond_2

    aget-object p2, p3, v1

    instance-of p2, p2, Ljava/lang/String;

    if-eqz p2, :cond_2

    aget-object p2, p3, v3

    instance-of p2, p2, Ljava/lang/Integer;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/app/AppOpsManagerCompat;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object v0, p3, v1

    check-cast v0, Ljava/lang/String;

    aget-object p3, p3, v3

    goto :goto_0

    :cond_2
    :goto_2
    if-nez v0, :cond_8

    const-string p0, "AppOpsUtilsCompat"

    const-string p1, "MIUISafety::Please adapter onOpNoted on this version."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    const-class p0, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_4

    const-string p0, ""

    return-object p0

    :cond_4
    const-class p0, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_5

    return-object v1

    :cond_5
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_6

    return-object v1

    :cond_6
    const-class p0, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_7

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_7
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_8

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_8
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static needOpenMiuiOptimize()Z
    .locals 8

    const-string v0, "AppOpsUtilsCompat"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "ro.build.date.utc"

    invoke-static {v2}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildDate is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v5, 0x1

    if-nez v4, :cond_0

    sget-boolean v4, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v4, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v4, v6, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    const-wide/32 v6, 0x5cd5a000

    cmp-long v2, v2, v6

    if-gez v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "match is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    const-string v2, "persist.sys.miui_optimization"

    const-string v3, "1"

    const-string v4, "ro.miui.cts"

    invoke-static {v4}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-static {v2, v3}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needOpenMiuiOptimize is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v2

    const-string v3, "needOpenMiuiOptimize error "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return v1
.end method

.method private static openMiuiOptimize(Landroid/content/Context;)V
    .locals 2

    const-string v0, "AppOpsUtilsCompat"

    const-string v1, "open miui optmize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "persist.sys.miui_optimization"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->set(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "miui_optimization"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setMode(Landroid/app/AppOpsManager;Ljava/lang/String;III)V
    .locals 8

    :try_start_0
    const-string v0, "setMode"

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v6, v2, v7

    const/4 v6, 0x3

    aput-object v3, v2, v6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    aput-object p1, v1, v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {p0, v0, v2, v1}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static setMode(Landroid/app/AppOpsManager;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 8

    const-class v0, Ljava/lang/String;

    :try_start_0
    const-string v1, "setMode"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v7, 0x2

    aput-object v0, v3, v7

    const/4 v0, 0x3

    aput-object v5, v3, v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v6

    aput-object p1, v2, v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {p0, v1, v3, v2}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static setModeWithXSpace(Landroid/content/Context;Landroid/app/AppOpsManager;Ljava/lang/String;III)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setMode(Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    invoke-static {p0, p2}, Lx4/b2;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x3e7

    invoke-static {p3}, Lx4/z1;->b(I)I

    move-result p3

    invoke-static {p0, p3}, Lx4/z1;->j(II)I

    move-result p0

    invoke-static {p1, p2, p0, p4, p5}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setMode(Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method public static setUidMode(Landroid/app/AppOpsManager;III)V
    .locals 7

    :try_start_0
    const-string v0, "setUidMode"

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {p0, v0, v2, v1}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AppOpsUtilsCompat"

    const-string p2, "reflect setUidMode exception!"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static setUidMode(Landroid/app/AppOpsManager;Ljava/lang/String;II)V
    .locals 7

    :try_start_0
    const-string v0, "setUidMode"

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {p0, v0, v2, v1}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AppOpsUtilsCompat"

    const-string p2, "reflect setUidMode exception!"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static startWatchingActive(Landroid/app/AppOpsManager;[ILcom/miui/permcenter/compact/AppOpsUtilsCompat$MiuiOnOpActiveChangedListener;)V
    .locals 8

    const-string v0, "AppOpsUtilsCompat"

    :try_start_0
    new-instance v1, Lqb/a;

    invoke-direct {v1, p2}, Lqb/a;-><init>(Lcom/miui/permcenter/compact/AppOpsUtilsCompat$MiuiOnOpActiveChangedListener;)V

    const-string p2, "android.app.AppOpsManager$OnOpActiveChangedListener"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-class v2, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v2, v4, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "myCallback "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "startWatchingActive"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, [I

    aput-object v7, v6, v5

    aput-object p2, v6, v3

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v5

    aput-object v1, p2, v3

    invoke-static {p0, v2, v6, p2}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "startWatchingActive exception"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static startWatchingNoted(Landroid/app/AppOpsManager;[ILcom/miui/permcenter/compact/AppOpsUtilsCompat$MiuiOnOpActiveChangedListener;)V
    .locals 7

    :try_start_0
    new-instance v0, Lqb/b;

    invoke-direct {v0, p2}, Lqb/b;-><init>(Lcom/miui/permcenter/compact/AppOpsUtilsCompat$MiuiOnOpActiveChangedListener;)V

    const-string p2, "android.app.AppOpsManager$OnOpNotedListener"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-class v1, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "startWatchingNoted"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, [I

    aput-object v6, v5, v4

    aput-object p2, v5, v2

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v4

    aput-object v0, p2, v2

    invoke-static {p0, v1, v5, p2}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AppOpsUtilsCompat"

    const-string p2, "startWatchingActive exception"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static strOpToOp(Landroid/app/AppOpsManager;Ljava/lang/String;)I
    .locals 5

    :try_start_0
    const-string v0, "strOpToOp"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p0, v0, v2, v1}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 p0, 0x2738

    return p0
.end method

.method public static switchOpToMiuiFlaresPermission(I)J
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x29

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_3

    const/16 v0, 0x273a

    if-eq p0, v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1

    return-wide v0

    :cond_1
    const-wide/32 v0, 0x20000

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x1000

    return-wide v0

    :cond_3
    const-wide/16 v0, 0x20

    return-wide v0
.end method
