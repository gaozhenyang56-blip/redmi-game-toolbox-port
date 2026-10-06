.class public Lj8/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj8/f$c;
    }
.end annotation


# static fields
.field private static j:Lj8/f;

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Lj8/f$c;

.field private c:Landroid/os/Handler;

.field private final d:Ljava/lang/Object;

.field private e:Z

.field private f:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

.field private g:Landroid/content/ServiceConnection;

.field private h:Landroid/bluetooth/BluetoothHeadset;

.field private i:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lj8/f;->k:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lj8/f;->l:Ljava/util/List;

    const-string v1, "0201010013"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "0201010014"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "0201010011"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "0201010012"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "01011106"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "01011107"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "01011104"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "01011105"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lj8/f;->a:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lj8/f;->d:Ljava/lang/Object;

    new-instance v0, Lj8/f$a;

    invoke-direct {v0, p0}, Lj8/f$a;-><init>(Lj8/f;)V

    iput-object v0, p0, Lj8/f;->g:Landroid/content/ServiceConnection;

    new-instance v0, Lj8/f$b;

    invoke-direct {v0, p0}, Lj8/f$b;-><init>(Lj8/f;)V

    iput-object v0, p0, Lj8/f;->i:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lj8/f;->c:Landroid/os/Handler;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Lj8/f;->p(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lj8/f;Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;
    .locals 0

    iput-object p1, p0, Lj8/f;->f:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    return-object p1
.end method

.method static synthetic b(Lj8/f;)I
    .locals 0

    iget p0, p0, Lj8/f;->a:I

    return p0
.end method

.method static synthetic c(Lj8/f;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lj8/f;->c:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lj8/f;)Z
    .locals 0

    iget-boolean p0, p0, Lj8/f;->e:Z

    return p0
.end method

.method static synthetic e(Lj8/f;)V
    .locals 0

    invoke-direct {p0}, Lj8/f;->t()V

    return-void
.end method

.method static synthetic f(Lj8/f;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lj8/f;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic g(Lj8/f;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iget-object p0, p0, Lj8/f;->h:Landroid/bluetooth/BluetoothHeadset;

    return-object p0
.end method

.method static synthetic h(Lj8/f;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lj8/f;->h:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic i(Lj8/f;)V
    .locals 0

    invoke-direct {p0}, Lj8/f;->m()V

    return-void
.end method

.method private j()V
    .locals 0
    return-void
.end method

.method private l(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const-string v0, "BluetoothManagerVTB"

    invoke-static {}, Lj8/m;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lj8/m;->i()Z

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lj8/f;->f:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-eqz v2, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2, p1}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->F7(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkSupport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0, v2}, Lj8/f;->u(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_2
    :goto_0
    return v1

    :catch_0
    move-exception p1

    const-string v2, "checkSupport error"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return v1
.end method

.method private m()V
    .locals 3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lj8/f;->h:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lj8/f;->h:Landroid/bluetooth/BluetoothHeadset;

    :cond_0
    return-void
.end method

.method private n()Landroid/bluetooth/BluetoothDevice;
    .locals 5

    iget-object v0, p0, Lj8/f;->h:Landroid/bluetooth/BluetoothHeadset;

    const-string v1, "BluetoothManagerVTB"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "mBluetoothHfp is null!"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :try_start_0
    const-class v0, Landroid/bluetooth/BluetoothHeadset;

    const-string v3, "getActiveDevice"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v3, p0, Lj8/f;->h:Landroid/bluetooth/BluetoothHeadset;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveDevice fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized o()Lj8/f;
    .locals 2

    const-class v0, Lj8/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lj8/f;->j:Lj8/f;

    if-nez v1, :cond_0

    new-instance v1, Lj8/f;

    invoke-direct {v1}, Lj8/f;-><init>()V

    sput-object v1, Lj8/f;->j:Lj8/f;

    :cond_0
    sget-object v1, Lj8/f;->j:Lj8/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private p(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lj8/f;->i:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_1
    return-void
.end method

.method private static q()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "pref_unsupport_bt_device"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private r(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    :try_start_0
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "isConnected"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public static s(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lj8/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lj8/f;->q()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lj8/f;->k:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private t()V
    .locals 4

    iget-object v0, p0, Lj8/f;->b:Lj8/f$c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Lj8/f;->r(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v1}, Lj8/f;->l(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    iget-object v1, p0, Lj8/f;->b:Lj8/f$c;

    invoke-interface {v1, v0}, Lj8/f$c;->callback(Z)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lj8/f;->b:Lj8/f$c;

    invoke-interface {v0, v2}, Lj8/f$c;->callback(Z)V

    :cond_3
    return-void
.end method

.method private u(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lj8/f;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public static w(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pref_unsupport_bt_device"

    invoke-static {v0, p0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public k(Lj8/f$c;)V
    .locals 1

    iput-object p1, p0, Lj8/f;->b:Lj8/f$c;

    const/4 v0, 0x1

    iput v0, p0, Lj8/f;->a:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lj8/m;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lj8/f;->b:Lj8/f$c;

    invoke-static {}, Lj8/m;->i()Z

    move-result v0

    invoke-interface {p1, v0}, Lj8/f$c;->callback(Z)V

    return-void

    :cond_1
    iget-object p1, p0, Lj8/f;->f:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lj8/f;->t()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lj8/f;->j()V

    :goto_0
    return-void
.end method

.method public v(Z)V
    .locals 4

    const-string v0, "BluetoothManagerVTB"

    const/4 v1, 0x2

    :try_start_0
    iput v1, p0, Lj8/f;->a:I

    iput-boolean p1, p0, Lj8/f;->e:Z

    iget-object v1, p0, Lj8/f;->f:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lj8/f;->n()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {p0, v1}, Lj8/f;->l(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendVendorSpecificResultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lj8/f;->f:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const/16 v3, 0x71

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-interface {v2, v3, p1, v1}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->m3(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lj8/f;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchSpatialHeadset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
