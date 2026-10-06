.class Lhf/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhf/c;->a(Landroid/content/Context;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lp9/a;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;Lp9/a;)V
    .locals 0

    iput-object p1, p0, Lhf/c$a;->a:Ljava/util/List;

    iput-object p2, p0, Lhf/c$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lhf/c$a;->c:Lp9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lhf/c$a;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhf/c$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lw2/t;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lw2/t;->M(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lhf/c$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo2/b$b;

    iget-object v2, v1, Lo2/b$b;->a:Ljava/lang/String;

    iget-object v3, p0, Lhf/c$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Lo2/b$b;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->W(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lo2/b$b;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->W(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lhf/c$a;->c:Lp9/a;

    invoke-virtual {p1}, Lp9/a;->m()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "AntivirusBackupHelper"

    const-string v1, "msg"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    iget-object v0, p0, Lhf/c$a;->c:Lp9/a;

    invoke-virtual {v0}, Lp9/a;->m()V

    throw p1
.end method
