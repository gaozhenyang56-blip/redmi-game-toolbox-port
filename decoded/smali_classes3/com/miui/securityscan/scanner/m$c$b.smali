.class Lcom/miui/securityscan/scanner/m$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/miui/securityscan/scanner/m$c$b;->a:Lcom/miui/securityscan/scanner/m$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "SystemCheckManager"

    :try_start_0
    iget-object v1, p0, Lcom/miui/securityscan/scanner/m$c$b;->a:Lcom/miui/securityscan/scanner/m$c;

    invoke-static {v1}, Lcom/miui/securityscan/scanner/m$c;->q8(Lcom/miui/securityscan/scanner/m$c;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    move-result-object v1

    invoke-static {v1}, Lw2/t;->M(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    sget-object v1, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/securityscan/scanner/m$c$b;->a:Lcom/miui/securityscan/scanner/m$c;

    invoke-static {v2}, Lcom/miui/securityscan/scanner/m$c;->q8(Lcom/miui/securityscan/scanner/m$c;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/securityscan/scanner/o;->C(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/m$c$b;->a:Lcom/miui/securityscan/scanner/m$c;

    invoke-static {v1}, Lcom/miui/securityscan/scanner/m$c;->q8(Lcom/miui/securityscan/scanner/m$c;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/securityscan/scanner/m$c$b;->a:Lcom/miui/securityscan/scanner/m$c;

    invoke-static {v3}, Lcom/miui/securityscan/scanner/m$c;->t8(Lcom/miui/securityscan/scanner/m$c;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/securityscan/scanner/m$c$b;->a:Lcom/miui/securityscan/scanner/m$c;

    invoke-static {v4}, Lcom/miui/securityscan/scanner/m$c;->t8(Lcom/miui/securityscan/scanner/m$c;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/securityscan/scanner/m$c$b;->a:Lcom/miui/securityscan/scanner/m$c;

    invoke-static {v4}, Lcom/miui/securityscan/scanner/m$c;->u8(Lcom/miui/securityscan/scanner/m$c;)Z

    move-result v5

    iget-object v6, p0, Lcom/miui/securityscan/scanner/m$c$b;->a:Lcom/miui/securityscan/scanner/m$c;

    invoke-static {v6}, Lcom/miui/securityscan/scanner/m$c;->v8(Lcom/miui/securityscan/scanner/m$c;)I

    move-result v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->y6([Ljava/lang/String;Lcom/miui/guardprovider/aidl/IVirusObserver;ZI)I

    move-result v2

    :goto_0
    invoke-static {v1, v2}, Lcom/miui/securityscan/scanner/m$c;->s8(Lcom/miui/securityscan/scanner/m$c;I)I

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/miui/securityscan/scanner/m$c$b;->a:Lcom/miui/securityscan/scanner/m$c;

    invoke-static {v1}, Lcom/miui/securityscan/scanner/m$c;->q8(Lcom/miui/securityscan/scanner/m$c;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/securityscan/scanner/m$c$b;->a:Lcom/miui/securityscan/scanner/m$c;

    invoke-static {v3}, Lcom/miui/securityscan/scanner/m$c;->t8(Lcom/miui/securityscan/scanner/m$c;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/securityscan/scanner/m$c$b;->a:Lcom/miui/securityscan/scanner/m$c;

    invoke-static {v4}, Lcom/miui/securityscan/scanner/m$c;->t8(Lcom/miui/securityscan/scanner/m$c;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/securityscan/scanner/m$c$b;->a:Lcom/miui/securityscan/scanner/m$c;

    invoke-static {v4}, Lcom/miui/securityscan/scanner/m$c;->u8(Lcom/miui/securityscan/scanner/m$c;)Z

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->v0([Ljava/lang/String;Lcom/miui/guardprovider/aidl/IVirusObserver;Z)I

    move-result v2

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/miui/securityscan/scanner/m$c$b;->a:Lcom/miui/securityscan/scanner/m$c;

    invoke-static {v1}, Lcom/miui/securityscan/scanner/m$c;->r8(Lcom/miui/securityscan/scanner/m$c;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/miui/securityscan/scanner/m$c$b;->a:Lcom/miui/securityscan/scanner/m$c;

    invoke-static {v1}, Lcom/miui/securityscan/scanner/m$c;->r8(Lcom/miui/securityscan/scanner/m$c;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/miui/securityscan/scanner/m$c;->b7(I[Lcom/miui/guardprovider/aidl/VirusInfo;)V

    :cond_1
    iget-object v1, p0, Lcom/miui/securityscan/scanner/m$c$b;->a:Lcom/miui/securityscan/scanner/m$c;

    invoke-static {v1}, Lcom/miui/securityscan/scanner/m$c;->w8(Lcom/miui/securityscan/scanner/m$c;)Lrf/e;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/securityscan/scanner/m$c$b;->a:Lcom/miui/securityscan/scanner/m$c;

    invoke-static {v2}, Lcom/miui/securityscan/scanner/m$c;->r8(Lcom/miui/securityscan/scanner/m$c;)I

    move-result v2

    invoke-interface {v1, v2}, Lrf/e;->b(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPObserver taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/securityscan/scanner/m$c$b;->a:Lcom/miui/securityscan/scanner/m$c;

    invoke-static {v2}, Lcom/miui/securityscan/scanner/m$c;->r8(Lcom/miui/securityscan/scanner/m$c;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "GPObserver Exception"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
