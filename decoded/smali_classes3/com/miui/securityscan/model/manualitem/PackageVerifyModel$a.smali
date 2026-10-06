.class Lcom/miui/securityscan/model/manualitem/PackageVerifyModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel$a;->b:Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 5

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lx4/c1;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lx4/c1;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lx4/c1;->a(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lx4/z1;->v()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lx4/c1;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel$a;->b:Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;

    iget-object v1, p0, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel$a;->a:Landroid/content/Context;

    invoke-static {v1}, Lx4/c1;->c(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;->access$002(Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;J)J

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel$a;->b:Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;

    invoke-static {v0}, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;->access$000(Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel$a;->b:Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;

    invoke-static {v2}, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;->access$000(Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf731400

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel$a;->b:Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;

    const-wide/32 v3, 0x5265c00

    div-long/2addr v0, v3

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v2, v0}, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;->access$102(Lcom/miui/securityscan/model/manualitem/PackageVerifyModel;I)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/PackageVerifyModel$a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
