.class Lcom/miui/securityscan/scanner/CacheCheckManager$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/scanner/CacheCheckManager$a$a;->v1(Landroid/os/IBinder;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Lcom/miui/securityscan/scanner/CacheCheckManager$a$a;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/CacheCheckManager$a$a;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/CacheCheckManager$a$a$a;->b:Lcom/miui/securityscan/scanner/CacheCheckManager$a$a;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/CacheCheckManager$a$a$a;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "CacheCheckManager"

    const-string v1, "startScan: onGetBinder(IBinder service) callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/securityscan/scanner/CacheCheckManager$a$a$a;->a:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/miui/optimizecenter/garbagecheck/IGarbageCheck$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/optimizecenter/garbagecheck/IGarbageCheck;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    const-string v2, "startScan: garbageCheck startScan"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/securityscan/scanner/CacheCheckManager$a$a$a;->b:Lcom/miui/securityscan/scanner/CacheCheckManager$a$a;

    iget-object v2, v2, Lcom/miui/securityscan/scanner/CacheCheckManager$a$a;->a:Lcom/miui/securityscan/scanner/CacheCheckManager$a;

    iget-object v2, v2, Lcom/miui/securityscan/scanner/CacheCheckManager$a;->a:Lcom/miui/optimizecenter/garbagecheck/IGarbageScanCallback;

    invoke-interface {v1, v2}, Lcom/miui/optimizecenter/garbagecheck/IGarbageCheck;->F3(Lcom/miui/optimizecenter/garbagecheck/IGarbageScanCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/miui/securityscan/scanner/CacheCheckManager$a$a$a;->b:Lcom/miui/securityscan/scanner/CacheCheckManager$a$a;

    iget-object v2, v2, Lcom/miui/securityscan/scanner/CacheCheckManager$a$a;->a:Lcom/miui/securityscan/scanner/CacheCheckManager$a;

    iget-object v2, v2, Lcom/miui/securityscan/scanner/CacheCheckManager$a;->b:Lcom/miui/securityscan/scanner/k$m;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/miui/securityscan/scanner/k$m;->d()V

    :cond_0
    const-string v2, "startScan: RemoteException"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
