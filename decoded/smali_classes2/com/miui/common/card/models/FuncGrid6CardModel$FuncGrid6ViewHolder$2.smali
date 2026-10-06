.class Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$data:Lcom/miui/common/card/GridFunctionData;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;Ljava/lang/String;Lcom/miui/common/card/GridFunctionData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$2;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    iput-object p2, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$2;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$2;->val$data:Lcom/miui/common/card/GridFunctionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$2;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    const v0, 0x7f0b0aac

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$902(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$2;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    const v0, 0x7f0b0aad

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$1002(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$2;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    const v0, 0x7f0b0aae

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$1102(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$2;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    const/4 p2, 0x3

    new-array p2, p2, [Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$900(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$2;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$1000(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$2;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$1100(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$1202(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;[Landroid/widget/ImageView;)[Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$2;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {p1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$000(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$2;->val$action:Ljava/lang/String;

    new-instance v7, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$2;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$1300(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$2;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$1400(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$2;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$1500(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$2;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$1600(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$2;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$1200(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)[Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$2;->val$data:Lcom/miui/common/card/GridFunctionData;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;-><init>(Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;[Landroid/widget/ImageView;Lcom/miui/common/card/GridFunctionData;)V

    invoke-interface {p1, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$2;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {p1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$1700(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Lsf/i;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$2;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {p1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$1700(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Lsf/i;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$2;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$1800(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Lsf/i$d;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$2;->this$0:Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->access$000(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lsf/i;->i(Lsf/i$d;Ljava/util/Set;)V

    :cond_0
    return-void
.end method
