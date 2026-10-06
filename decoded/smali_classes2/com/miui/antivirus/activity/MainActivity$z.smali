.class Lcom/miui/antivirus/activity/MainActivity$z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "z"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antivirus/activity/MainActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$z;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic b(Lcom/miui/antivirus/activity/MainActivity$z;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/activity/MainActivity$z;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$z;->a:Ljava/lang/ref/WeakReference;

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

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->M0(Lcom/miui/antivirus/activity/MainActivity;Z)Z

    :try_start_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v2, Lcom/miui/antivirus/activity/MainActivity$z$a;

    invoke-direct {v2, p0, p1}, Lcom/miui/antivirus/activity/MainActivity$z$a;-><init>(Lcom/miui/antivirus/activity/MainActivity$z;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AntiVirusMainActivity"

    const-string v2, "link binder died failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance v0, Lcom/miui/antivirus/activity/MainActivity$z$b;

    invoke-direct {v0, p0, p1}, Lcom/miui/antivirus/activity/MainActivity$z$b;-><init>(Lcom/miui/antivirus/activity/MainActivity$z;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    :cond_1
    :goto_1
    return-void
.end method
