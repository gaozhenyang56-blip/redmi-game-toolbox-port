.class Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/securityscan/model/AbsModel$AbsModelDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;


# direct methods
.method constructor <init>(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$a;->a:Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbsModelDisplay()V
    .locals 3

    iget-object v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$a;->a:Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;

    invoke-static {v0}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->access$000(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RestrictDataUsageModel"

    const-string v1, "onAbsModelDisplay callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$a;->a:Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->access$002(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;Z)Z

    iget-object v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$a;->a:Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;

    invoke-static {v0}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->access$100(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$a;->a:Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;

    invoke-static {v0}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->access$200(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$a;->a:Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;

    invoke-static {v0}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->access$200(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$a;->a:Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;

    invoke-static {v0}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->access$300(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;)Luf/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$a;->a:Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;

    invoke-static {v1}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->access$200(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "RestrictDataUsageModel_Wlan"

    invoke-virtual {v0, v2, v1}, Luf/b;->o(Ljava/lang/String;Ljava/util/Set;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$a;->a:Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;

    invoke-static {v0}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->access$400(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$a;->a:Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;

    invoke-static {v0}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->access$400(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$a;->a:Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;

    invoke-static {v0}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->access$300(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;)Luf/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel$a;->a:Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;

    invoke-static {v1}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->access$400(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "RestrictDataUsageModel_Mobile"

    invoke-virtual {v0, v2, v1}, Luf/b;->o(Ljava/lang/String;Ljava/util/Set;)V

    :cond_1
    return-void
.end method
