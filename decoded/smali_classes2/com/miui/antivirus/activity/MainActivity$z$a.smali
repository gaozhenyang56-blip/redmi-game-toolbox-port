.class Lcom/miui/antivirus/activity/MainActivity$z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/activity/MainActivity$z;->a(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

.field final synthetic b:Lcom/miui/antivirus/activity/MainActivity$z;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MainActivity$z;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$z$a;->b:Lcom/miui/antivirus/activity/MainActivity$z;

    iput-object p2, p0, Lcom/miui/antivirus/activity/MainActivity$z$a;->a:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$z$a;->a:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$z$a;->b:Lcom/miui/antivirus/activity/MainActivity$z;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity$z;->b(Lcom/miui/antivirus/activity/MainActivity$z;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->A0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/MainActivity$c0;

    move-result-object v0

    const/16 v1, 0x406

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, v2}, Lw4/e;->a(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
