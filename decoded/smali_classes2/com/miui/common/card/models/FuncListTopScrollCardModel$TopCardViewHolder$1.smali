.class Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/securityscan/ui/main/HpViewFlipper$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;

.field final synthetic val$convertView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder$1;->this$0:Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;

    iput-object p2, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder$1;->val$convertView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentView(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder$1;->val$convertView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder$1;->this$0:Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;

    invoke-static {v1}, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->access$000(Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/common/card/functions/FuncTopBannerScrollData;

    invoke-static {v0, p1}, Lqf/c;->x0(Landroid/content/Context;Lcom/miui/common/card/functions/FuncTopBannerScrollData;)V

    return-void
.end method
