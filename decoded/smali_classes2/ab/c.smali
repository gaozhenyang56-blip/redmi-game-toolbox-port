.class public final Lab/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lab/c$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMisysHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MisysHelper.kt\ncom/miui/optimizecenter/storage/utils/MisysHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,105:1\n1#2:106\n*E\n"
    }
.end annotation


# static fields
.field public static final c:Lab/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile d:Lab/c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private a:Landroid/hidl/base/V1_0/IBase;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Lvendor/xiaomi/hardware/misys/common/IMiSysImpl;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lab/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lab/c$a;-><init>(Lbk/g;)V

    sput-object v0, Lab/c;->c:Lab/c$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldb/c;->j()Z

    move-result v0

    const-string v1, "MisysHelper"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lab/c;->b:Lvendor/xiaomi/hardware/misys/common/IMiSysImpl;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lvendor/xiaomi/hardware/misys/common/IMiSysImpl;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/default"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "waitForDeclaredService"

    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v6, "serviceManagerClass.getM\u2026ice\", String::class.java)"

    invoke-static {v0, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v3, v6, v4

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.os.IBinder"

    invoke-static {v0, v3}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lvendor/xiaomi/hardware/misys/common/IMiSysImpl$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/xiaomi/hardware/misys/common/IMiSysImpl;

    move-result-object v0

    iput-object v0, p0, Lab/c;->b:Lvendor/xiaomi/hardware/misys/common/IMiSysImpl;

    if-eqz v0, :cond_0

    const-string v0, "MiSysImpl init success"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "MiSysImpl init failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lab/c;->b:Lvendor/xiaomi/hardware/misys/common/IMiSysImpl;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v2}, Lln/a;->c(Z)Lln/b;

    move-result-object v3

    iput-object v3, p0, Lab/c;->a:Landroid/hidl/base/V1_0/IBase;

    const-string v3, ": init V4"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    iput-object v0, p0, Lab/c;->a:Landroid/hidl/base/V1_0/IBase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "V4 init error. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v3, p0, Lab/c;->a:Landroid/hidl/base/V1_0/IBase;

    if-nez v3, :cond_2

    :try_start_2
    invoke-static {v2}, Lkn/a;->c(Z)Lkn/b;

    move-result-object v2

    iput-object v2, p0, Lab/c;->a:Landroid/hidl/base/V1_0/IBase;

    const-string v2, ": init V2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    iput-object v0, p0, Lab/c;->a:Landroid/hidl/base/V1_0/IBase;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "V2 init error. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": mIMiSys = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lab/c;->a:Landroid/hidl/base/V1_0/IBase;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic constructor <init>(Lbk/g;)V
    .locals 0

    invoke-direct {p0}, Lab/c;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lab/c;
    .locals 1

    sget-object v0, Lab/c;->d:Lab/c;

    return-object v0
.end method

.method public static final synthetic b(Lab/c;)V
    .locals 0

    sput-object p0, Lab/c;->d:Lab/c;

    return-void
.end method

.method public static final declared-synchronized c()Lab/c;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Lab/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lab/c;->c:Lab/c$a;

    invoke-virtual {v1}, Lab/c$a;->a()Lab/c;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "MisysHelper"

    const-string v1, "logBlock"

    invoke-static {p1, v1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "name"

    invoke-static {p2, v1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lbk/x;

    invoke-direct {v1}, Lbk/x;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lbk/x;->a:J

    :try_start_0
    iget-object v4, p0, Lab/c;->b:Lvendor/xiaomi/hardware/misys/common/IMiSysImpl;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-interface {v4, p1, p2}, Lvendor/xiaomi/hardware/misys/common/IMiSysImpl;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lbk/x;->a:J

    sget-object v4, Loj/t;->a:Loj/t;

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    if-nez v4, :cond_4

    iget-object v4, p0, Lab/c;->a:Landroid/hidl/base/V1_0/IBase;

    if-eqz v4, :cond_3

    instance-of v5, v4, Lln/b;

    if-eqz v5, :cond_1

    check-cast v4, Lln/b;

    invoke-interface {v4, p1, p2}, Lln/b;->b(Ljava/lang/String;Ljava/lang/String;)Lln/c;

    move-result-object v2

    iget-wide v2, v2, Lln/c;->a:J

    goto :goto_1

    :cond_1
    instance-of v5, v4, Lkn/b;

    if-eqz v5, :cond_2

    check-cast v4, Lkn/b;

    invoke-interface {v4, p1, p2}, Lkn/b;->b(Ljava/lang/String;Ljava/lang/String;)Lkn/c;

    move-result-object v2

    iget-wide v2, v2, Lkn/c;->a:J

    :cond_2
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :cond_3
    const-string v2, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {v5, v2}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lbk/x;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    const-string v3, "!! error , getPartitionSizeWithMisys!!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",name: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",size: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, v1, Lbk/x;->a:J

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide p1, v1, Lbk/x;->a:J

    return-wide p1
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lab/c;->b:Lvendor/xiaomi/hardware/misys/common/IMiSysImpl;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lab/c;->a:Landroid/hidl/base/V1_0/IBase;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
