.class Lcom/miui/securityscan/model/manualitem/KeySyncModel$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/model/manualitem/KeySyncModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;

.field private b:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/KeySyncModel$b;->a:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/miui/securityscan/model/manualitem/KeySyncModel$b;->b:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/KeySyncModel$b;->a:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/securityscan/model/manualitem/KeySyncModel$b;->b:Landroid/accounts/Account;

    invoke-interface {v0, v1}, Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;->F5(Landroid/accounts/Account;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KeySyncModel"

    const-string v2, "get lastSupport failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/KeySyncModel$b;->b:Landroid/accounts/Account;

    const-string v1, "miui.autofill"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/KeySyncModel$b;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
