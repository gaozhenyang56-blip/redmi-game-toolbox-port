.class Lw2/b$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw2/b$a$a;->a(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

.field final synthetic b:Lw2/b$a$a;


# direct methods
.method constructor <init>(Lw2/b$a$a;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 0

    iput-object p1, p0, Lw2/b$a$a$a;->b:Lw2/b$a$a;

    iput-object p2, p0, Lw2/b$a$a$a;->a:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lw2/b$a$a$a;->a:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    invoke-interface {v0}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->Q0()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v1, :cond_0

    iget-object v0, p0, Lw2/b$a$a$a;->b:Lw2/b$a$a;

    iget-object v0, v0, Lw2/b$a$a;->a:Lw2/b$a;

    iget-object v0, v0, Lw2/b$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lp9/a;->j(Landroid/content/Context;)Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->m()V

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lo2/h;->z(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lw2/b$a$a$a;->b:Lw2/b$a$a;

    iget-object v1, v1, Lw2/b$a$a;->a:Lw2/b$a;

    iget-object v1, v1, Lw2/b$a;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lw2/b;->a(Landroid/content/Context;[Ljava/lang/String;)V

    iget-object v1, p0, Lw2/b$a$a$a;->b:Lw2/b$a$a;

    iget-object v1, v1, Lw2/b$a$a;->a:Lw2/b$a;

    iget-boolean v2, v1, Lw2/b$a;->b:Z

    if-eqz v2, :cond_1

    iget-object v1, v1, Lw2/b$a;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lw2/b;->j(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "AntiFraud"

    const-string v2, "detectAppsScan exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lw2/b$a$a$a;->b:Lw2/b$a$a;

    iget-object v0, v0, Lw2/b$a$a;->a:Lw2/b$a;

    iget-object v0, v0, Lw2/b$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lp9/a;->j(Landroid/content/Context;)Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->m()V

    return-void

    :goto_1
    iget-object v1, p0, Lw2/b$a$a$a;->b:Lw2/b$a$a;

    iget-object v1, v1, Lw2/b$a$a;->a:Lw2/b$a;

    iget-object v1, v1, Lw2/b$a;->a:Landroid/content/Context;

    invoke-static {v1}, Lp9/a;->j(Landroid/content/Context;)Lp9/a;

    move-result-object v1

    invoke-virtual {v1}, Lp9/a;->m()V

    throw v0
.end method
