.class Lcom/miui/common/card/models/AdvListTitleCardModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/card/models/AdvListTitleCardModel;->closeNormalAd(Lcom/miui/securityscan/BaseAdvActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/common/card/models/AdvListTitleCardModel;

.field final synthetic val$context:Lcom/miui/securityscan/BaseAdvActivity;

.field final synthetic val$popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/AdvListTitleCardModel;Landroid/widget/PopupWindow;Lcom/miui/securityscan/BaseAdvActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$1;->this$0:Lcom/miui/common/card/models/AdvListTitleCardModel;

    iput-object p2, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$1;->val$popupWindow:Landroid/widget/PopupWindow;

    iput-object p3, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$1;->val$context:Lcom/miui/securityscan/BaseAdvActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$1;->val$popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object p1, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$1;->this$0:Lcom/miui/common/card/models/AdvListTitleCardModel;

    invoke-virtual {p1}, Lcom/miui/common/card/models/TitleCardModel;->getSubCardModelList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$1;->val$context:Lcom/miui/securityscan/BaseAdvActivity;

    iget-object v1, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$1;->this$0:Lcom/miui/common/card/models/AdvListTitleCardModel;

    invoke-static {v1}, Lcom/miui/common/card/models/AdvListTitleCardModel;->access$000(Lcom/miui/common/card/models/AdvListTitleCardModel;)I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/miui/securityscan/BaseAdvActivity;->f0(Lcom/miui/common/card/models/BaseCardModel;Ljava/util/List;I)V

    :cond_0
    return-void
.end method
