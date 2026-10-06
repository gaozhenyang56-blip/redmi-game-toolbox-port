.class Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a;
.super Lcom/miui/guardprovider/VirusObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c;->b([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic l:Lo2/f;

.field final synthetic m:Lp9/a;

.field final synthetic n:Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c;Lo2/f;Lp9/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a;->n:Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c;

    iput-object p2, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a;->l:Lo2/f;

    iput-object p3, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a;->m:Lp9/a;

    invoke-direct {p0}, Lcom/miui/guardprovider/VirusObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Lcom/miui/guardprovider/aidl/UpdateInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a;->n:Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c;

    iget-object v0, v0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c;->b:Lcom/miui/antivirus/service/VirusAutoUpdateJobService;

    invoke-static {v0}, Lcom/miui/antivirus/service/VirusAutoUpdateJobService;->a(Lcom/miui/antivirus/service/VirusAutoUpdateJobService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a$a;

    invoke-direct {v1, p0, p1}, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a$a;-><init>(Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a;Lcom/miui/guardprovider/aidl/UpdateInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public g8(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/guardprovider/VirusObserver;->g8(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateFinished : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VirusAutoUpdateJobService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a;->n:Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c;

    invoke-static {p1}, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c;->a(Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c;)Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;->a()V

    iget-object p1, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a;->m:Lp9/a;

    invoke-virtual {p1}, Lp9/a;->m()V

    return-void
.end method
