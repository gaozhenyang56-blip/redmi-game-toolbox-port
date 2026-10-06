.class Lcom/miui/antivirus/activity/MainActivity$z$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$z$b;->b:Lcom/miui/antivirus/activity/MainActivity$z;

    iput-object p2, p0, Lcom/miui/antivirus/activity/MainActivity$z$b;->a:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$z$b;->b:Lcom/miui/antivirus/activity/MainActivity$z;

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
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->P0(Lcom/miui/antivirus/activity/MainActivity;)Lo2/g;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity$z$b;->a:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->U0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/MainActivity$g0;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lo2/g;->v0(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Lo2/g$i;)V

    :cond_1
    :goto_0
    return-void
.end method
