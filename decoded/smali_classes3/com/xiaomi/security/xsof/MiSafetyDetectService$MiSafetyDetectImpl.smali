.class public Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;
.super Lcom/xiaomi/security/xsof/IMiSafetyDetectServer$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/security/xsof/MiSafetyDetectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MiSafetyDetectImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/security/xsof/MiSafetyDetectService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/security/xsof/MiSafetyDetectService;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;->a:Lcom/xiaomi/security/xsof/MiSafetyDetectService;

    invoke-direct {p0}, Lcom/xiaomi/security/xsof/IMiSafetyDetectServer$Stub;-><init>()V

    return-void
.end method

.method private o8(Lcom/xiaomi/security/xsof/IMiSafetyDetectCallback;Ljava/lang/String;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p1, p2, p3}, Lcom/xiaomi/security/xsof/IMiSafetyDetectCallback;->m2(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private v1(ILjava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;->a:Lcom/xiaomi/security/xsof/MiSafetyDetectService;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;->a:Lcom/xiaomi/security/xsof/MiSafetyDetectService;

    invoke-static {v1, p1}, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->d(Lcom/xiaomi/security/xsof/MiSafetyDetectService;I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.xiaomi.security.permission.ACCESS_XSOF"

    invoke-static {v0, p1, v1}, Lfj/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing Declare permission, from calling package "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mi-SDS"

    invoke-static {p2, p1}, Ljj/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public C3(Ljava/lang/String;Ljava/lang/String;ILcom/xiaomi/security/xsof/IMiSafetyDetectCallback;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;->a:Lcom/xiaomi/security/xsof/MiSafetyDetectService;

    invoke-static {v1, v0}, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->d(Lcom/xiaomi/security/xsof/MiSafetyDetectService;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "xsof_device_trust"

    invoke-static {v2, v1}, Ljj/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;->v1(ILjava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/16 p1, 0x3f9

    invoke-direct {p0, p4, v2, p1}, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;->o8(Lcom/xiaomi/security/xsof/IMiSafetyDetectCallback;Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call API 001 from package : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Mi-SDS"

    invoke-static {v3, v0}, Ljj/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lgj/a;->a(Ljava/lang/String;I)Lgj/a;

    move-result-object p1

    instance-of v3, p1, Lgj/d;

    const/16 v4, 0x3ee

    if-nez v3, :cond_1

    invoke-direct {p0, p4, v2, v4}, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;->o8(Lcom/xiaomi/security/xsof/IMiSafetyDetectCallback;Ljava/lang/String;I)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lgj/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p4, v2, v4}, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;->o8(Lcom/xiaomi/security/xsof/IMiSafetyDetectCallback;Ljava/lang/String;I)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;->a:Lcom/xiaomi/security/xsof/MiSafetyDetectService;

    invoke-static {v1}, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->e(Lcom/xiaomi/security/xsof/MiSafetyDetectService;)Lcom/xiaomi/security/xsof/MiSafetyDetectService$a;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;->a:Lcom/xiaomi/security/xsof/MiSafetyDetectService;

    invoke-static {v1}, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->e(Lcom/xiaomi/security/xsof/MiSafetyDetectService;)Lcom/xiaomi/security/xsof/MiSafetyDetectService$a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    check-cast p1, Lgj/d;

    invoke-virtual {p1, p2}, Lgj/d;->f(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lgj/d;->g(I)V

    new-instance p2, Ldj/a;

    invoke-direct {p2, v0, p1, p4}, Ldj/a;-><init>(ILgj/a;Lcom/xiaomi/security/xsof/IMiSafetyDetectCallback;)V

    iget-object p1, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;->a:Lcom/xiaomi/security/xsof/MiSafetyDetectService;

    invoke-static {p1, p2}, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->f(Lcom/xiaomi/security/xsof/MiSafetyDetectService;Ldj/a;)V

    return-void
.end method

.method public E2(Ljava/lang/String;JLcom/xiaomi/security/xsof/IMiSafetyDetectCallback;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;->a:Lcom/xiaomi/security/xsof/MiSafetyDetectService;

    invoke-static {v1, v0}, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->d(Lcom/xiaomi/security/xsof/MiSafetyDetectService;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "xsof_simulated_touch"

    invoke-static {v2, v1}, Ljj/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;->v1(ILjava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/16 p1, 0x3f9

    invoke-direct {p0, p4, v2, p1}, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;->o8(Lcom/xiaomi/security/xsof/IMiSafetyDetectCallback;Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call API 003 from uid = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Mi-SDS"

    invoke-static {v3, v0}, Ljj/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc

    invoke-static {p1, v0}, Lgj/a;->a(Ljava/lang/String;I)Lgj/a;

    move-result-object p1

    instance-of v3, p1, Lgj/c;

    const/16 v4, 0x3ee

    if-nez v3, :cond_1

    invoke-direct {p0, p4, v2, v4}, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;->o8(Lcom/xiaomi/security/xsof/IMiSafetyDetectCallback;Ljava/lang/String;I)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lgj/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p4, v2, v4}, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;->o8(Lcom/xiaomi/security/xsof/IMiSafetyDetectCallback;Ljava/lang/String;I)V

    return-void

    :cond_2
    check-cast p1, Lgj/c;

    invoke-virtual {p1, p2, p3}, Lgj/c;->f(J)V

    new-instance p2, Ldj/a;

    invoke-direct {p2, v0, p1, p4}, Ldj/a;-><init>(ILgj/a;Lcom/xiaomi/security/xsof/IMiSafetyDetectCallback;)V

    iget-object p1, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;->a:Lcom/xiaomi/security/xsof/MiSafetyDetectService;

    invoke-static {p1, p2}, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->f(Lcom/xiaomi/security/xsof/MiSafetyDetectService;Ldj/a;)V

    return-void
.end method

.method public i4(Ljava/lang/String;Lcom/xiaomi/security/xsof/IMiSafetyDetectCallback;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;->a:Lcom/xiaomi/security/xsof/MiSafetyDetectService;

    invoke-static {v1, v0}, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->d(Lcom/xiaomi/security/xsof/MiSafetyDetectService;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "xsof_risk_app"

    invoke-static {v2, v1}, Ljj/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;->v1(ILjava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/16 p1, 0x3f9

    invoke-direct {p0, p2, v2, p1}, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;->o8(Lcom/xiaomi/security/xsof/IMiSafetyDetectCallback;Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call API 002 from package : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Mi-SDS"

    invoke-static {v3, v0}, Ljj/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb

    invoke-static {p1, v0}, Lgj/a;->a(Ljava/lang/String;I)Lgj/a;

    move-result-object p1

    instance-of v3, p1, Lgj/b;

    const/16 v4, 0x3ee

    if-nez v3, :cond_1

    invoke-direct {p0, p2, v2, v4}, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;->o8(Lcom/xiaomi/security/xsof/IMiSafetyDetectCallback;Ljava/lang/String;I)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lgj/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p2, v2, v4}, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;->o8(Lcom/xiaomi/security/xsof/IMiSafetyDetectCallback;Ljava/lang/String;I)V

    return-void

    :cond_2
    new-instance v1, Ldj/a;

    invoke-direct {v1, v0, p1, p2}, Ldj/a;-><init>(ILgj/a;Lcom/xiaomi/security/xsof/IMiSafetyDetectCallback;)V

    iget-object p1, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;->a:Lcom/xiaomi/security/xsof/MiSafetyDetectService;

    invoke-static {p1, v1}, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->f(Lcom/xiaomi/security/xsof/MiSafetyDetectService;Ldj/a;)V

    return-void
.end method
