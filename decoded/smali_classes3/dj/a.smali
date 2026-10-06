.class public Ldj/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public a:I

.field private final b:Lgj/a;

.field private c:Lcom/xiaomi/security/xsof/IMiSafetyDetectCallback;

.field private d:Landroid/os/IBinder;

.field private e:Z


# direct methods
.method public constructor <init>(ILgj/a;Lcom/xiaomi/security/xsof/IMiSafetyDetectCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldj/a;->a:I

    iput-object p2, p0, Ldj/a;->b:Lgj/a;

    iput-object p3, p0, Ldj/a;->c:Lcom/xiaomi/security/xsof/IMiSafetyDetectCallback;

    const/4 p1, 0x0

    :try_start_0
    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    iput-object p2, p0, Ldj/a;->d:Landroid/os/IBinder;

    if-eqz p2, :cond_0

    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iput-boolean p1, p0, Ldj/a;->e:Z

    return-void
.end method


# virtual methods
.method public a()Lgj/a;
    .locals 1

    iget-object v0, p0, Ldj/a;->b:Lgj/a;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Ldj/a;->e:Z

    return v0
.end method

.method public binderDied()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderDied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldj/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientApiRequest"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ldj/a;->d:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldj/a;->e:Z

    return-void
.end method

.method public c(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldj/a;->e:Z

    iget-object v0, p0, Ldj/a;->c:Lcom/xiaomi/security/xsof/IMiSafetyDetectCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Ldj/a;->a:I

    invoke-static {v0}, Ljj/c;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldj/a;->b:Lgj/a;

    invoke-virtual {v1}, Lgj/a;->d()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ldj/a;->a:I

    invoke-static {v2, p1, p2}, Ljj/c;->b(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljj/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Ldj/a;->d:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1
    iget-object v0, p0, Ldj/a;->c:Lcom/xiaomi/security/xsof/IMiSafetyDetectCallback;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/security/xsof/IMiSafetyDetectCallback;->m2(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Ldj/a;->c:Lcom/xiaomi/security/xsof/IMiSafetyDetectCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldj/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
