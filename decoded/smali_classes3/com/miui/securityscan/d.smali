.class public Lcom/miui/securityscan/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;

.field private final b:Ljava/lang/String;

.field private c:Lcom/miui/securityscan/d$a;

.field private final d:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;Ljava/lang/String;Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/miui/securityscan/d;->a:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;

    invoke-direct {p0, p2}, Lcom/miui/securityscan/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/securityscan/d;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/securityscan/d;->d:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array v1, p1, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "timestamp=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "r=%s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public b(Lcom/miui/securityscan/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/d;->c:Lcom/miui/securityscan/d$a;

    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/d;->a:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel;

    iget-object v1, p0, Lcom/miui/securityscan/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lp4/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lcom/miui/securityscan/model/privacy/PrivacyRspModel;

    invoke-static {v0, v1}, Lx4/l0;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/privacy/PrivacyRspModel;

    iget-object v1, p0, Lcom/miui/securityscan/d;->c:Lcom/miui/securityscan/d$a;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/securityscan/model/privacy/PrivacyRspModel;->isSucceed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/d;->c:Lcom/miui/securityscan/d$a;

    iget-object v2, p0, Lcom/miui/securityscan/d;->d:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    invoke-interface {v1, v2, v0}, Lcom/miui/securityscan/d$a;->a(Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;Lcom/miui/securityscan/model/privacy/PrivacyRspModel;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/securityscan/d;->c:Lcom/miui/securityscan/d$a;

    iget-object v2, p0, Lcom/miui/securityscan/d;->d:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    invoke-interface {v1, v2, v0}, Lcom/miui/securityscan/d$a;->b(Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;Lcom/miui/securityscan/model/privacy/PrivacyRspModel;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/d;->c:Lcom/miui/securityscan/d$a;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/securityscan/d;->d:Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/miui/securityscan/d$a;->b(Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;Lcom/miui/securityscan/model/privacy/PrivacyRspModel;)V

    :cond_2
    :goto_0
    return-void
.end method
