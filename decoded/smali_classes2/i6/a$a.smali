.class Li6/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li6/a;


# direct methods
.method constructor <init>(Li6/a;)V
    .locals 0

    iput-object p1, p0, Li6/a$a;->a:Li6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "CollimatorUtils"

    :try_start_0
    iget-object v0, p0, Li6/a$a;->a:Li6/a;

    invoke-static {p2}, Lcom/xiaomi/joyose/securitycenter/IGunSightInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;

    move-result-object p2

    invoke-static {v0, p2}, Li6/a;->b(Li6/a;Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;)Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gun service conncect successed:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Li6/a$a;->a:Li6/a;

    invoke-static {v0}, Li6/a;->a(Li6/a;)Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Li6/a$a;->a:Li6/a;

    invoke-virtual {p2}, Li6/a;->n()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p2

    invoke-static {p2}, Ls5/a;->e(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "gun_sight service is invalid!!!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p2, p0, Li6/a$a;->a:Li6/a;

    invoke-virtual {p2}, Li6/a;->p()V

    iget-object p2, p0, Li6/a$a;->a:Li6/a;

    invoke-static {p2}, Li6/a;->c(Li6/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gun service conncect exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "CollimatorUtils"

    const-string v0, "gun service conncect failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Li6/a$a;->a:Li6/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Li6/a;->b(Li6/a;Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;)Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;

    return-void
.end method
