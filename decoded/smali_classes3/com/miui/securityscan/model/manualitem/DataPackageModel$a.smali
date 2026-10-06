.class Lcom/miui/securityscan/model/manualitem/DataPackageModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/model/manualitem/DataPackageModel;
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

.field final synthetic b:Lcom/miui/securityscan/model/manualitem/DataPackageModel;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/model/manualitem/DataPackageModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/DataPackageModel$a;->b:Lcom/miui/securityscan/model/manualitem/DataPackageModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/securityscan/model/manualitem/DataPackageModel$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 7

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/DataPackageModel$a;->b:Lcom/miui/securityscan/model/manualitem/DataPackageModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/securityscan/model/manualitem/DataPackageModel;->access$002(Lcom/miui/securityscan/model/manualitem/DataPackageModel;Z)Z

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/DataPackageModel$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lx4/a0;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lx4/z1;->v()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/DataPackageModel$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lx4/c1;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/DataPackageModel$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lx4/c1;->a(Landroid/content/Context;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/miui/securityscan/model/manualitem/DataPackageModel$a;->a:Landroid/content/Context;

    invoke-static {v3}, Lx4/c1;->i(Landroid/content/Context;)Z

    move-result v3

    if-eqz v0, :cond_2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/DataPackageModel$a;->b:Lcom/miui/securityscan/model/manualitem/DataPackageModel;

    invoke-static {v0, v2}, Lcom/miui/securityscan/model/manualitem/DataPackageModel;->access$002(Lcom/miui/securityscan/model/manualitem/DataPackageModel;Z)Z

    move v2, v1

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/DataPackageModel$a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
