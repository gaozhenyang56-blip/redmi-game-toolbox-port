.class Lcom/miui/securityscan/model/manualitem/FlowRankModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/model/manualitem/FlowRankModel;
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

.field final synthetic b:Lcom/miui/securityscan/model/manualitem/FlowRankModel;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/model/manualitem/FlowRankModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/FlowRankModel$a;->b:Lcom/miui/securityscan/model/manualitem/FlowRankModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/securityscan/model/manualitem/FlowRankModel$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/FlowRankModel$a;->b:Lcom/miui/securityscan/model/manualitem/FlowRankModel;

    iget-object v2, p0, Lcom/miui/securityscan/model/manualitem/FlowRankModel$a;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/miui/securityscan/model/manualitem/FlowRankModel;->access$000(Lcom/miui/securityscan/model/manualitem/FlowRankModel;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/FlowRankModel$a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
