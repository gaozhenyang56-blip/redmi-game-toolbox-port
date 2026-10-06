.class La8/f2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La8/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p0}, La8/f2$a;->b(Landroid/os/IBinder;)V

    return-void
.end method

.method private static synthetic b(Landroid/os/IBinder;)V
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UPQModeUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, La8/f2;->k(Lcom/xiaomi/joyose/securitycenter/IGPUTunerInterface;)V

    invoke-static {}, La8/f2;->a()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    new-instance v0, La8/e2;

    invoke-direct {v0, p2}, La8/e2;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p1, v0}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
