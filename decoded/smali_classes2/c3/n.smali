.class public Lc3/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Lc3/n;


# instance fields
.field private a:Landroid/hardware/fingerprint/FingerprintManager;

.field private b:Landroid/hardware/biometrics/BiometricManager;

.field private c:Landroid/os/CancellationSignal;

.field private d:Lc3/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc3/n;->a:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lc3/n;->b:Landroid/hardware/biometrics/BiometricManager;

    iput-object v0, p0, Lc3/n;->c:Landroid/os/CancellationSignal;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lc3/n;->a:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "biometric"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/BiometricManager;

    iput-object p1, p0, Lc3/n;->b:Landroid/hardware/biometrics/BiometricManager;

    return-void
.end method

.method static synthetic a(Lc3/n;Landroid/hardware/fingerprint/Fingerprint;)I
    .locals 0

    invoke-direct {p0, p1}, Lc3/n;->f(Landroid/hardware/fingerprint/Fingerprint;)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lc3/n;)Lc3/h;
    .locals 0

    iget-object p0, p0, Lc3/n;->d:Lc3/h;

    return-object p0
.end method

.method private f(Landroid/hardware/fingerprint/Fingerprint;)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result p1

    :goto_0
    return p1
.end method

.method public static declared-synchronized g(Landroid/content/Context;)Lc3/n;
    .locals 2

    const-class v0, Lc3/n;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc3/n;->e:Lc3/n;

    if-nez v1, :cond_0

    new-instance v1, Lc3/n;

    invoke-direct {v1, p0}, Lc3/n;-><init>(Landroid/content/Context;)V

    sput-object v1, Lc3/n;->e:Lc3/n;

    :cond_0
    sget-object p0, Lc3/n;->e:Lc3/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public c(Lc3/h;I)V
    .locals 8

    iget-object v0, p0, Lc3/n;->a:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lc3/n;->c:Landroid/os/CancellationSignal;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authenticateAppLock mCancellationSignal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc3/n;->c:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintHelperImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lc3/n;->d:Lc3/h;

    iget-object v2, p0, Lc3/n;->a:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lc3/n;->c:Landroid/os/CancellationSignal;

    new-instance v6, Lc3/n$a;

    invoke-direct {v6, p0}, Lc3/n$a;-><init>(Lc3/n;)V

    const/4 v7, 0x0

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lc3/n;->c:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelFinger mCancellationSignal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc3/n;->c:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintHelperImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lc3/n;->c:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc3/n;->c:Landroid/os/CancellationSignal;

    :cond_0
    return-void
.end method

.method public e()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc3/n;->a:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    const-class v2, Ljava/util/List;

    const-string v3, "getEnrolledFingerprints"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v1, v4}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lc3/n;->f(Landroid/hardware/fingerprint/Fingerprint;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v2, "FingerprintHelperImpl"

    const-string v3, "getEnrolledFingerprints exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-object v1
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Lc3/n;->a:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lc3/n;->a:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    return v0
.end method

.method public j([B)V
    .locals 9

    const-class v0, [B

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v1, v2, :cond_0

    iget-object v3, p0, Lc3/n;->b:Landroid/hardware/biometrics/BiometricManager;

    if-nez v3, :cond_1

    return-void

    :cond_0
    iget-object v3, p0, Lc3/n;->a:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v3, :cond_1

    return-void

    :cond_1
    const/16 v3, 0x1f

    const-string v4, "resetLockout"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v1, v3, :cond_2

    :try_start_0
    iget-object v1, p0, Lc3/n;->a:Landroid/hardware/fingerprint/FingerprintManager;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    aput-object v8, v7, v5

    const/4 v8, 0x2

    aput-object v0, v7, v8

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v5

    aput-object p1, v0, v8

    invoke-static {v1, v2, v4, v7, v0}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    if-le v1, v2, :cond_3

    iget-object v1, p0, Lc3/n;->b:Landroid/hardware/biometrics/BiometricManager;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v3, v5, [Ljava/lang/Class;

    aput-object v0, v3, v6

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v6

    invoke-static {v1, v2, v4, v3, v0}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lc3/n;->a:Landroid/hardware/fingerprint/FingerprintManager;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v3, "resetTimeout"

    new-array v4, v5, [Ljava/lang/Class;

    aput-object v0, v4, v6

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v6

    invoke-static {v1, v2, v3, v4, v0}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string v0, "FingerprintHelperImpl"

    const-string v1, "resetTimeout exception: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
