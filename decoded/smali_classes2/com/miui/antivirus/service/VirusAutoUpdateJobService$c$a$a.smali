.class Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a;->A(Lcom/miui/guardprovider/aidl/UpdateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/guardprovider/aidl/UpdateInfo;

.field final synthetic b:Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a;Lcom/miui/guardprovider/aidl/UpdateInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a$a;->b:Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a;

    iput-object p2, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a$a;->a:Lcom/miui/guardprovider/aidl/UpdateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a$a;->a:Lcom/miui/guardprovider/aidl/UpdateInfo;

    iget v1, v0, Lcom/miui/guardprovider/aidl/UpdateInfo;->updateResult:I

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v0, v0, Lcom/miui/guardprovider/aidl/UpdateInfo;->engineName:Ljava/lang/String;

    const-string v1, "fail"

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {}, Lw2/t;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a$a;->b:Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a;

    iget-object v0, v0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a;->l:Lo2/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "all"

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a$a;->b:Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a;

    iget-object v0, v0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a;->l:Lo2/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a$a;->a:Lcom/miui/guardprovider/aidl/UpdateInfo;

    iget-object v3, v3, Lcom/miui/guardprovider/aidl/UpdateInfo;->engineName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Lo2/f;->f(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a$a;->b:Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a;

    iget-object v0, v0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a;->l:Lo2/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo2/f;->h(J)V

    iget-object v0, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a$a;->a:Lcom/miui/guardprovider/aidl/UpdateInfo;

    iget-object v0, v0, Lcom/miui/guardprovider/aidl/UpdateInfo;->engineName:Ljava/lang/String;

    const-string v1, "success"

    :goto_2
    invoke-static {v0, v1}, Lq2/b$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
