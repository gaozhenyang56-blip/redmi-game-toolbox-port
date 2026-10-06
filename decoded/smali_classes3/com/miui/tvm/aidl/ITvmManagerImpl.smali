.class public Lcom/miui/tvm/aidl/ITvmManagerImpl;
.super Lcom/miui/tvm/aidl/ITvmManager$Stub;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final k:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/miui/tvm/aidl/IMiTrustUICallback;",
            ">;"
        }
    .end annotation
.end field

.field private final l:I

.field private final m:I

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field public p:Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUICallback$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/tvm/aidl/ITvmManager$Stub;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl;->k:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl;->l:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl;->m:I

    const-string v0, "b4e55e65330173032598d1d7029a94bba2d5b7e4"

    iput-object v0, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl;->n:Ljava/lang/String;

    const-string v0, "1f4d1f67af42e7936ab17d0036ebebf3d6051159"

    iput-object v0, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl;->o:Ljava/lang/String;

    new-instance v0, Lcom/miui/tvm/aidl/ITvmManagerImpl$a;

    invoke-direct {v0, p0}, Lcom/miui/tvm/aidl/ITvmManagerImpl$a;-><init>(Lcom/miui/tvm/aidl/ITvmManagerImpl;)V

    iput-object v0, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl;->p:Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUICallback$Stub;

    iput-object p1, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl;->a:Landroid/content/Context;

    return-void
.end method

.method public static o8(Landroid/os/NativeHandle;)Landroid/hardware/common/NativeHandle;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/hardware/common/NativeHandle;

    invoke-direct {v0}, Landroid/hardware/common/NativeHandle;-><init>()V

    invoke-virtual {p0}, Landroid/os/NativeHandle;->getFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/NativeHandle;->getInts()[I

    move-result-object p0

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    iput-object p0, v0, Landroid/hardware/common/NativeHandle;->ints:[I

    array-length p0, v1

    new-array p0, p0, [Landroid/os/ParcelFileDescriptor;

    iput-object p0, v0, Landroid/hardware/common/NativeHandle;->fds:[Landroid/os/ParcelFileDescriptor;

    const/4 p0, 0x0

    :goto_0
    array-length v2, v1

    if-ge p0, v2, :cond_1

    iget-object v2, v0, Landroid/hardware/common/NativeHandle;->fds:[Landroid/os/ParcelFileDescriptor;

    aget-object v3, v1, p0

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    aput-object v3, v2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private p8()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private q8(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Leh/c;->u(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPackageHasPermission pkg signatureSha256: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Tvm.ITvmManagerImpl"

    invoke-static {v3, v2}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl;->a:Landroid/content/Context;

    invoke-static {v2, p1}, Leh/c;->q(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPackageHasPermission packageAndSignatureInfo: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasPermission exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lx4/q0;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private s8()Z
    .locals 4

    invoke-direct {p0}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->p8()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareEnvSuccess callerPkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Tvm.ITvmManagerImpl"

    invoke-static {v2, v1}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    return v3

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->q8(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareEnvSuccess hasPermission failed\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-static {v1}, Leh/c;->H(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lx4/q0;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private t8(Lcom/miui/tvm/aidl/ITvmManagerCallback;)Z
    .locals 7

    const-string v0, "Tvm.ITvmManagerImpl"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "tvm callback is null"

    invoke-static {v0, p1}, Lx4/q0;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {}, Lcom/miui/tvm/TvmManager;->f()Lcom/miui/tvm/TvmManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/tvm/TvmManager;->q(Lcom/miui/tvm/aidl/ITvmManagerCallback;)V

    iget-object p1, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl;->a:Landroid/content/Context;

    invoke-static {p1}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result p1

    const/4 v3, 0x6

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "net work is not connect: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Leh/c;->H(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lx4/q0;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/miui/tvm/TvmManager;->m(I)V

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->s8()Z

    move-result p1

    const/4 v4, 0x7

    if-nez p1, :cond_2

    invoke-virtual {v2, v4}, Lcom/miui/tvm/TvmManager;->m(I)V

    return v1

    :cond_2
    invoke-virtual {v2}, Lcom/miui/tvm/TvmManager;->i()I

    move-result p1

    const/4 v5, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v5, :cond_3

    const/4 v6, 0x3

    if-eq p1, v6, :cond_3

    if-eq p1, v3, :cond_3

    if-eq p1, v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldHandleRequest false: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Leh/c;->H(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/miui/tvm/TvmManager;->m(I)V

    return v1

    :cond_3
    return v5
.end method

.method private u8(Lcom/miui/tvm/aidl/RequestModel;)Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIRequestMessage;
    .locals 2

    new-instance v0, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIRequestMessage;

    invoke-direct {v0}, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIRequestMessage;-><init>()V

    iget v1, p1, Lcom/miui/tvm/aidl/RequestModel;->mMessageType:I

    iput v1, v0, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIRequestMessage;->messageType:I

    iget v1, p1, Lcom/miui/tvm/aidl/RequestModel;->mMessageLength:I

    iput v1, v0, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIRequestMessage;->messageLength:I

    iget-object p1, p1, Lcom/miui/tvm/aidl/RequestModel;->mMessageData:[B

    iput-object p1, v0, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIRequestMessage;->messageData:[B

    return-object v0
.end method

.method static synthetic v1(Lcom/miui/tvm/aidl/ITvmManagerImpl;)Landroid/os/RemoteCallbackList;
    .locals 0

    iget-object p0, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl;->k:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method private v8(Lcom/miui/tvm/aidl/SessionModel;)Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;
    .locals 2

    new-instance v0, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;

    invoke-direct {v0}, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;-><init>()V

    iget v1, p1, Lcom/miui/tvm/aidl/SessionModel;->mFlag:I

    iput v1, v0, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;->flag:I

    iget-object v1, p1, Lcom/miui/tvm/aidl/SessionModel;->mTuiApps:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;->tuiapp:[B

    iget-object v1, p1, Lcom/miui/tvm/aidl/SessionModel;->mLayoutName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;->layoutName:[B

    iget-object v1, p1, Lcom/miui/tvm/aidl/SessionModel;->mLoadPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;->loadPath:[B

    iget v1, p1, Lcom/miui/tvm/aidl/SessionModel;->mBinaryLength:I

    iput v1, v0, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;->binaryLength:I

    iget v1, p1, Lcom/miui/tvm/aidl/SessionModel;->mMessageLength:I

    iput v1, v0, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;->messageLength:I

    iget-object p1, p1, Lcom/miui/tvm/aidl/SessionModel;->mMessageData:[B

    iput-object p1, v0, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;->messageData:[B

    return-object v0
.end method

.method private w8(Lcom/miui/tvm/aidl/SessionModel;Ljava/lang/String;Ljava/lang/String;)Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;
    .locals 2

    new-instance v0, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;

    invoke-direct {v0}, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;-><init>()V

    iget v1, p1, Lcom/miui/tvm/aidl/SessionModel;->mFlag:I

    iput v1, v0, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;->flag:I

    iget-object v1, p1, Lcom/miui/tvm/aidl/SessionModel;->mTuiApps:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;->tuiapp:[B

    iget-object v1, p1, Lcom/miui/tvm/aidl/SessionModel;->mLayoutName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;->layoutName:[B

    iget-object v1, p1, Lcom/miui/tvm/aidl/SessionModel;->mLoadPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;->loadPath:[B

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    iput-object p2, v0, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;->appPackageName:[B

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    iput-object p2, v0, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;->appSigSha256:[B

    iget p2, p1, Lcom/miui/tvm/aidl/SessionModel;->mMessageLength:I

    iput p2, v0, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;->messageLength:I

    iget-object p1, p1, Lcom/miui/tvm/aidl/SessionModel;->mMessageData:[B

    iput-object p1, v0, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;->messageData:[B

    return-object v0
.end method


# virtual methods
.method public A3(Lcom/miui/tvm/aidl/ITvmManagerCallback;)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->r8()Z

    move-result v0

    const-string v1, "Tvm.ITvmManagerImpl"

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->t8(Lcom/miui/tvm/aidl/ITvmManagerCallback;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/miui/tvm/TvmManager;->f()Lcom/miui/tvm/TvmManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/miui/tvm/TvmManager;->o(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareTvm: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lx4/q0;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "non-sm8650 platform skip prepareTvm"

    invoke-static {v1, p1}, Lx4/q0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public E5(Lcom/miui/tvm/aidl/SessionModel;)I
    .locals 5

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->s8()Z

    move-result v1

    const-string v2, "Tvm.ITvmManagerImpl"

    if-nez v1, :cond_1

    const-string p1, "createSession prepareEnvironmentSuccess failed"

    :goto_0
    invoke-static {v2, p1}, Lx4/q0;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    :try_start_0
    invoke-static {}, Leh/c;->p()Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService;

    move-result-object v1

    invoke-interface {v1}, Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService;->f()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const-string v3, "b4e55e65330173032598d1d7029a94bba2d5b7e4"

    invoke-interface {v1}, Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->v8(Lcom/miui/tvm/aidl/SessionModel;)Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;

    move-result-object p1

    :goto_1
    invoke-interface {v1, p1}, Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService;->Q1(Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;)I

    move-result p1

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->p8()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl;->a:Landroid/content/Context;

    invoke-static {v4, v3}, Leh/c;->u(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->w8(Lcom/miui/tvm/aidl/SessionModel;Ljava/lang/String;Ljava/lang/String;)Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;

    move-result-object p1

    goto :goto_1

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroySession result: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroySession exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public P0(Lcom/miui/tvm/aidl/SessionModel;Landroid/os/SharedMemory;Lcom/miui/tvm/aidl/IMiTrustUICallback;)I
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1b
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_8

    if-nez p3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-direct {p0}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->s8()Z

    move-result v1

    const-string v2, "Tvm.ITvmManagerImpl"

    if-nez v1, :cond_1

    const-string p1, "createSession prepareEnvironmentSuccess failed"

    :goto_0
    invoke-static {v2, p1}, Lx4/q0;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    iget-object v1, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl;->k:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->r8()Z

    move-result p3

    if-eqz p3, :cond_5

    if-nez p2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p2}, Landroid/os/SharedMemory;->mapReadOnly()Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/SharedMemory;->getSize()I

    move-result v1

    invoke-static {p3, v1}, Leh/c;->n(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    return v0

    :cond_3
    iget-object p3, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->p8()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3, v1}, Leh/c;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_4

    const-string p1, "createSession whitelistSha256s not contains fileSha256"

    invoke-static {v2, p1}, Lx4/q0;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    const-string p3, "createSession verify tui apps success"

    invoke-static {v2, p3}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string p3, "non-sm8650 platform skip tui app verification in app"

    invoke-static {v2, p3}, Lx4/q0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Leh/c;->p()Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService;

    move-result-object p3

    invoke-interface {p3}, Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService;->f()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_7

    const-string v1, "b4e55e65330173032598d1d7029a94bba2d5b7e4"

    invoke-interface {p3}, Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez p2, :cond_6

    return v0

    :cond_6
    const-class v1, Ljava/io/FileDescriptor;

    const-string v3, "getFileDescriptor"

    invoke-static {p2, v1, v3, v4, v4}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/FileDescriptor;

    new-instance v1, Landroid/os/NativeHandle;

    const/4 v3, 0x0

    invoke-direct {v1, p2, v3}, Landroid/os/NativeHandle;-><init>(Ljava/io/FileDescriptor;Z)V

    invoke-static {v1}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->o8(Landroid/os/NativeHandle;)Landroid/hardware/common/NativeHandle;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->v8(Lcom/miui/tvm/aidl/SessionModel;)Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl;->p:Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUICallback$Stub;

    invoke-interface {p3, p1, p2, v1}, Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService;->G5(Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;Landroid/hardware/common/NativeHandle;Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUICallback;)I

    move-result p1

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->p8()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl;->a:Landroid/content/Context;

    invoke-static {v1, p2}, Leh/c;->u(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->w8(Lcom/miui/tvm/aidl/SessionModel;Ljava/lang/String;Ljava/lang/String;)Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl;->p:Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUICallback$Stub;

    invoke-interface {p3, p1, v4, p2}, Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService;->G5(Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;Landroid/hardware/common/NativeHandle;Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUICallback;)I

    move-result p1

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createSession result: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createSession exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_8
    :goto_3
    return v0
.end method

.method public T2(Lcom/miui/tvm/aidl/SessionModel;)I
    .locals 5

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->s8()Z

    move-result v1

    const-string v2, "Tvm.ITvmManagerImpl"

    if-nez v1, :cond_1

    const-string p1, "createSession prepareEnvironmentSuccess failed"

    :goto_0
    invoke-static {v2, p1}, Lx4/q0;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    :try_start_0
    invoke-static {}, Leh/c;->p()Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService;

    move-result-object v1

    invoke-interface {v1}, Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService;->f()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const-string v3, "b4e55e65330173032598d1d7029a94bba2d5b7e4"

    invoke-interface {v1}, Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->v8(Lcom/miui/tvm/aidl/SessionModel;)Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;

    move-result-object p1

    :goto_1
    invoke-interface {v1, p1}, Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService;->X6(Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;)I

    move-result p1

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->p8()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl;->a:Landroid/content/Context;

    invoke-static {v4, v3}, Leh/c;->u(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->w8(Lcom/miui/tvm/aidl/SessionModel;Ljava/lang/String;Ljava/lang/String;)Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUISessionMessage;

    move-result-object p1

    goto :goto_1

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activityLayout result: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activityLayout exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public V2()I
    .locals 5

    const-string v0, "Tvm.ITvmManagerImpl"

    invoke-static {}, Leh/c;->p()Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiTrustedUIService version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "vendor.xiaomi.trustedvm.version"

    const-string v4, "unknown version"

    invoke-static {v3, v4}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lx4/q0;->f(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiTrustedUIService interfaceVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lx4/q0;->f(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiTrustedUIService interfaceHash="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lx4/q0;->f(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->s8()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/tvm/TvmManager;->f()Lcom/miui/tvm/TvmManager;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/miui/tvm/TvmManager;->s(I)V

    return v1

    :cond_0
    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl;->a:Landroid/content/Context;

    invoke-static {v2}, Leh/c;->x(Landroid/content/Context;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkTvmStatus\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Leh/c;->H(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/tvm/TvmManager;->f()Lcom/miui/tvm/TvmManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/tvm/TvmManager;->s(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkTvmStatus exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lx4/q0;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public h4(Lcom/miui/tvm/aidl/TvmStatusModel;)I
    .locals 5

    const-string v0, "Tvm.ITvmManagerImpl"

    const/4 v1, -0x1

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->s8()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/miui/tvm/TvmManager;->f()Lcom/miui/tvm/TvmManager;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/miui/tvm/TvmManager;->s(I)V

    return v0

    :cond_1
    :try_start_0
    invoke-static {}, Leh/c;->p()Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService;

    move-result-object v2

    new-instance v3, Lvendor/xiaomi/hardware/mitrustedui/TVMPlatformInfo;

    invoke-direct {v3}, Lvendor/xiaomi/hardware/mitrustedui/TVMPlatformInfo;-><init>()V

    iget v4, p1, Lcom/miui/tvm/aidl/TvmStatusModel;->supportTUI:I

    iput v4, v3, Lvendor/xiaomi/hardware/mitrustedui/TVMPlatformInfo;->supportTUI:I

    iget-object v4, p1, Lcom/miui/tvm/aidl/TvmStatusModel;->mPlatform:[B

    iput-object v4, v3, Lvendor/xiaomi/hardware/mitrustedui/TVMPlatformInfo;->platform:[B

    iget-object v4, p1, Lcom/miui/tvm/aidl/TvmStatusModel;->mVersion:[B

    iput-object v4, v3, Lvendor/xiaomi/hardware/mitrustedui/TVMPlatformInfo;->version:[B

    invoke-interface {v2, v3}, Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService;->f8(Lvendor/xiaomi/hardware/mitrustedui/TVMPlatformInfo;)I

    iget v4, v3, Lvendor/xiaomi/hardware/mitrustedui/TVMPlatformInfo;->supportTUI:I

    iput v4, p1, Lcom/miui/tvm/aidl/TvmStatusModel;->supportTUI:I

    iget-object v4, v3, Lvendor/xiaomi/hardware/mitrustedui/TVMPlatformInfo;->platform:[B

    iput-object v4, p1, Lcom/miui/tvm/aidl/TvmStatusModel;->mPlatform:[B

    iget-object v3, v3, Lvendor/xiaomi/hardware/mitrustedui/TVMPlatformInfo;->version:[B

    iput-object v3, p1, Lcom/miui/tvm/aidl/TvmStatusModel;->mVersion:[B

    invoke-interface {v2}, Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService;->f()I

    move-result v3

    iput v3, p1, Lcom/miui/tvm/aidl/TvmStatusModel;->interfaceVersion:I

    invoke-interface {v2}, Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/miui/tvm/aidl/TvmStatusModel;->interfaceHash:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/tvm/aidl/ITvmManagerImpl;->a:Landroid/content/Context;

    invoke-static {p1}, Leh/c;->x(Landroid/content/Context;)I

    move-result v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkTvmStatus\uff1a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Leh/c;->H(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkTvmStatus exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lx4/q0;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public r6(Lcom/miui/tvm/aidl/RequestModel;Lcom/miui/tvm/aidl/ResponseModel;)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->s8()Z

    move-result v1

    const-string v2, "Tvm.ITvmManagerImpl"

    if-nez v1, :cond_1

    const-string p1, "createSession prepareEnvironmentSuccess failed"

    :goto_0
    invoke-static {v2, p1}, Lx4/q0;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    :try_start_0
    invoke-static {}, Leh/c;->p()Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService;

    move-result-object v1

    new-instance v3, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIResponseMessage;

    invoke-direct {v3}, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIResponseMessage;-><init>()V

    iget v4, p2, Lcom/miui/tvm/aidl/ResponseModel;->mResultStatus:I

    iput v4, v3, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIResponseMessage;->resultStatus:I

    iget v4, p2, Lcom/miui/tvm/aidl/ResponseModel;->mMessageLength:I

    iput v4, v3, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIResponseMessage;->messageLength:I

    iget-object v4, p2, Lcom/miui/tvm/aidl/ResponseModel;->mMessageData:[B

    iput-object v4, v3, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIResponseMessage;->messageData:[B

    invoke-direct {p0, p1}, Lcom/miui/tvm/aidl/ITvmManagerImpl;->u8(Lcom/miui/tvm/aidl/RequestModel;)Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIRequestMessage;

    move-result-object p1

    invoke-interface {v1, p1, v3}, Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIService;->v7(Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIRequestMessage;Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIResponseMessage;)I

    move-result p1

    iget v1, v3, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIResponseMessage;->resultStatus:I

    iput v1, p2, Lcom/miui/tvm/aidl/ResponseModel;->mResultStatus:I

    iget v1, v3, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIResponseMessage;->messageLength:I

    iput v1, p2, Lcom/miui/tvm/aidl/ResponseModel;->mMessageLength:I

    iget-object v1, v3, Lvendor/xiaomi/hardware/mitrustedui/MiTrustedUIResponseMessage;->messageData:[B

    iput-object v1, p2, Lcom/miui/tvm/aidl/ResponseModel;->mMessageData:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokeCommand exception: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public r8()Z
    .locals 3

    const-string v0, "ro.soc.model"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "soc_model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Tvm.ITvmManagerImpl"

    invoke-static {v2, v1}, Lx4/q0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SM8650"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
