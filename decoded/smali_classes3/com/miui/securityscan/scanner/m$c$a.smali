.class Lcom/miui/securityscan/scanner/m$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/scanner/m$c;->v1(Landroid/os/IBinder;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/scanner/m$c;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/m$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/m$c$a;->a:Lcom/miui/securityscan/scanner/m$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    sget-object v0, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o;->K()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/m$c$a;->a:Lcom/miui/securityscan/scanner/m$c;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/m$c;->q8(Lcom/miui/securityscan/scanner/m$c;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
