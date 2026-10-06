.class Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsf/i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAntiSpamChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$000(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "#Intent;action=miui.intent.action.SET_FIREWALL;end"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v1, p1, v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$300(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    :cond_0
    return-void
.end method

.method public onAppManagerChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$000(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "#Intent;action=miui.intent.action.APP_MANAGER;end"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v1, p1, v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$200(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    :cond_0
    return-void
.end method

.method public onDeepCleanChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$000(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN;end"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v1, p1, v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$800(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    :cond_0
    return-void
.end method

.method public onGarbageChange(ZJ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$000(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "#Intent;action=miui.intent.action.GARBAGE_CLEANUP;end"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v1, p1, p2, p3, v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$400(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZJLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    :cond_0
    return-void
.end method

.method public onNetworkAssistChange(ZZJZ)V
    .locals 8

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$000(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "#Intent;action=miui.intent.action.NETWORKASSISTANT_ENTRANCE;end"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    if-eqz v7, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-static/range {v1 .. v7}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$600(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZZJZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    :cond_0
    return-void
.end method

.method public onOptimizemanageChange(ZJ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$000(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "#Intent;action=miui.intent.action.OPTIMIZE_MANAGE;end"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v1, p1, v0, p2, p3}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$700(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;J)V

    :cond_0
    return-void
.end method

.method public onPowerCenterChange(ZIZILjava/lang/String;)V
    .locals 6

    iget-object p4, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {p4}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$000(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Ljava/util/Map;

    move-result-object p4

    const-string v0, "#Intent;action=miui.intent.action.POWER_MANAGER;end"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    move-object v5, p4

    check-cast v5, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$100(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZIZLjava/lang/String;Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    :cond_0
    return-void
.end method

.method public onSecurityScanChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$000(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "#Intent;action=miui.intent.action.ANTI_VIRUS;end"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v1, p1, v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$500(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    :cond_0
    return-void
.end method
