.class public final Lcom/xiaomi/continuity/netbus/utils/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/continuity/netbus/utils/Log$ILogCallback;
    }
.end annotation


# static fields
.field private static sIsDebug:Z

.field private static sLogCallback:Lcom/xiaomi/continuity/netbus/utils/Log$ILogCallback;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, p1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->printLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lcom/xiaomi/continuity/netbus/utils/Log;->printLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static debugEnabled(Z)V
    .locals 0

    sput-boolean p0, Lcom/xiaomi/continuity/netbus/utils/Log;->sIsDebug:Z

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, p1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->printLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-static {v1, p0, p2, p1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->printLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, p1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->printLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lcom/xiaomi/continuity/netbus/utils/Log;->printLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static isDebug()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/continuity/netbus/utils/Log;->sIsDebug:Z

    return v0
.end method

.method public static varargs printLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/continuity/netbus/utils/Log;->sIsDebug:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-static {p3, p4}, Lcom/xiaomi/continuity/netbus/utils/Log;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    sget-object p4, Lcom/xiaomi/continuity/netbus/utils/Log;->sLogCallback:Lcom/xiaomi/continuity/netbus/utils/Log$ILogCallback;

    if-eqz p4, :cond_3

    invoke-interface {p4, p0, p1, p3, p2}, Lcom/xiaomi/continuity/netbus/utils/Log$ILogCallback;->onPrintLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result p4

    if-eqz p4, :cond_3

    return-void

    :cond_3
    const/4 p4, 0x2

    if-eq p0, p4, :cond_c

    const/4 p4, 0x3

    if-eq p0, p4, :cond_a

    if-eq p0, v1, :cond_8

    const/4 p4, 0x5

    if-eq p0, p4, :cond_6

    const/4 p4, 0x6

    if-eq p0, p4, :cond_4

    goto :goto_1

    :cond_4
    if-nez p2, :cond_5

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-static {p1, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_6
    if-nez p2, :cond_7

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    invoke-static {p1, p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_8
    if-nez p2, :cond_9

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    invoke-static {p1, p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_a
    if-nez p2, :cond_b

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_b
    invoke-static {p1, p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_c
    if-nez p2, :cond_d

    invoke-static {p1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_d
    invoke-static {p1, p3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static printMethod(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/continuity/netbus/utils/Log;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "()"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static registerLogCallback(Lcom/xiaomi/continuity/netbus/utils/Log$ILogCallback;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/continuity/netbus/utils/Log;->sLogCallback:Lcom/xiaomi/continuity/netbus/utils/Log$ILogCallback;

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, p1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->printLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, p1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->printLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v1, p0, p1, v2, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->printLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
