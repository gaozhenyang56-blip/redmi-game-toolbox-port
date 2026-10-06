.class Lcom/miui/securityscan/scanner/m$d;
.super Lcom/miui/guardprovider/VirusObserver;
.source "SourceFile"

# interfaces
.implements Lo4/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/scanner/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private l:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/guardprovider/VirusObserver;-><init>()V

    iput p1, p0, Lcom/miui/securityscan/scanner/m$d;->l:I

    return-void
.end method


# virtual methods
.method public v1(Landroid/os/IBinder;)Z
    .locals 3

    const-string v0, "SystemCheckManager"

    :try_start_0
    iget v1, p0, Lcom/miui/securityscan/scanner/m$d;->l:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-static {p1}, Lcom/miui/guardprovider/aidl/IAntiVirusServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    move-result-object p1

    iget v1, p0, Lcom/miui/securityscan/scanner/m$d;->l:I

    invoke-interface {p1, v1}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->O1(I)V

    goto :goto_0

    :cond_0
    const-string p1, "cancel task fail because taskId is -1"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "cancel task exp"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
