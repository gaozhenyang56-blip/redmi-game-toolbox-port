.class public Lmiui/cloud/common/XLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/common/XLogger$LogSender;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOGGER_CLASS:Ljava/lang/String; = "miui.cloud.common.XLogger"

.field private static final LOG_PREFIX:Ljava/lang/String; = "##XLogger##"

.field private static volatile sDefLogLevel:I

.field private static volatile sEnableCallStacktrace:Z

.field private static volatile sLogSender:Lmiui/cloud/common/XLogger$LogSender;

.field private static volatile sOutputLogLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/cloud/common/XLogger$1;

    invoke-direct {v0}, Lmiui/cloud/common/XLogger$1;-><init>()V

    sput-object v0, Lmiui/cloud/common/XLogger;->sLogSender:Lmiui/cloud/common/XLogger$LogSender;

    const/4 v0, 0x4

    sput v0, Lmiui/cloud/common/XLogger;->sDefLogLevel:I

    const/4 v0, 0x2

    sput v0, Lmiui/cloud/common/XLogger;->sOutputLogLevel:I

    const/4 v0, 0x1

    sput-boolean v0, Lmiui/cloud/common/XLogger;->sEnableCallStacktrace:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lmiui/cloud/common/XLogger;->DEFAULT_LOGGER_CLASS:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lmiui/cloud/common/XLogger;->formatStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const/4 p1, 0x3

    invoke-static {p1, p0, v0, v1}, Lmiui/cloud/common/XLogger;->logAtLevelImp(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static enableStackTrace(Z)V
    .locals 0

    sput-boolean p0, Lmiui/cloud/common/XLogger;->sEnableCallStacktrace:Z

    return-void
.end method

.method public static varargs error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lmiui/cloud/common/XLogger;->DEFAULT_LOGGER_CLASS:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lmiui/cloud/common/XLogger;->formatStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const/4 p1, 0x6

    invoke-static {p1, p0, v0, v1}, Lmiui/cloud/common/XLogger;->logAtLevelImp(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs formatStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getCallerInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    move v4, v7

    goto :goto_1

    :cond_0
    if-nez v4, :cond_1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v7

    const/4 v0, 0x2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x3

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p0, v0

    const-string v0, "%s::%s@%s:%s, thread:%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public static getLogSender()Lmiui/cloud/common/XLogger$LogSender;
    .locals 1

    sget-object v0, Lmiui/cloud/common/XLogger;->sLogSender:Lmiui/cloud/common/XLogger$LogSender;

    return-object v0
.end method

.method private static getObjectString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "NULL"

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, " *Caused by* "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    const-string p0, " *and more...*"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs group(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :goto_0
    if-ge v3, p0, :cond_1

    aget-object v4, p1, v3

    if-nez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {v4}, Lmiui/cloud/common/XLogger;->getObjectString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lmiui/cloud/common/XLogger;->DEFAULT_LOGGER_CLASS:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lmiui/cloud/common/XLogger;->formatStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const/4 p1, 0x4

    invoke-static {p1, p0, v0, v1}, Lmiui/cloud/common/XLogger;->logAtLevelImp(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs log([Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lmiui/cloud/common/XLogger;->sDefLogLevel:I

    invoke-static {v0, p0}, Lmiui/cloud/common/XLogger;->logAtLevel(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs logAtLevel(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lmiui/cloud/common/XLogger;->logAtLevelImp(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs logAtLevel(I[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lmiui/cloud/common/XLogger;->DEFAULT_LOGGER_CLASS:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lmiui/cloud/common/XLogger;->logAtLevelImp(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs logAtLevelImp(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    sget v0, Lmiui/cloud/common/XLogger;->sOutputLogLevel:I

    if-ge p0, v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lmiui/cloud/common/XLogger;->sLogSender:Lmiui/cloud/common/XLogger$LogSender;

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-boolean v1, Lmiui/cloud/common/XLogger;->sEnableCallStacktrace:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lmiui/cloud/common/XLogger;->getCallerInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "--"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string p2, ""

    :goto_0
    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    aget-object p3, p3, v2

    invoke-static {p3}, Lmiui/cloud/common/XLogger;->getObjectString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p3

    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v4, p3, v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-static {v4}, Lmiui/cloud/common/XLogger;->getObjectString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move-object p3, v1

    :goto_2
    if-nez p1, :cond_6

    const-string p1, "##XLogger##"

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p1, p2}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs logd([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p0}, Lmiui/cloud/common/XLogger;->logAtLevel(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs loge([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0, p0}, Lmiui/cloud/common/XLogger;->logAtLevel(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs logi([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0, p0}, Lmiui/cloud/common/XLogger;->logAtLevel(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs logv([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lmiui/cloud/common/XLogger;->logAtLevel(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs logw([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0, p0}, Lmiui/cloud/common/XLogger;->logAtLevel(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static setDefLogLevel(I)V
    .locals 0

    sput p0, Lmiui/cloud/common/XLogger;->sDefLogLevel:I

    return-void
.end method

.method public static setLogSender(Lmiui/cloud/common/XLogger$LogSender;)V
    .locals 0

    sput-object p0, Lmiui/cloud/common/XLogger;->sLogSender:Lmiui/cloud/common/XLogger$LogSender;

    return-void
.end method

.method public static setOutputLogLevel(I)V
    .locals 0

    sput p0, Lmiui/cloud/common/XLogger;->sOutputLogLevel:I

    return-void
.end method

.method public static varargs verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lmiui/cloud/common/XLogger;->DEFAULT_LOGGER_CLASS:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lmiui/cloud/common/XLogger;->formatStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const/4 p1, 0x2

    invoke-static {p1, p0, v0, v1}, Lmiui/cloud/common/XLogger;->logAtLevelImp(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lmiui/cloud/common/XLogger;->DEFAULT_LOGGER_CLASS:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lmiui/cloud/common/XLogger;->formatStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const/4 p1, 0x5

    invoke-static {p1, p0, v0, v1}, Lmiui/cloud/common/XLogger;->logAtLevelImp(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
