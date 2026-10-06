.class Lcom/miui/common/card/models/AdvCardModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/card/models/AdvCardModel;->closeNormalAd(Lcom/miui/securityscan/BaseAdvActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/common/card/models/AdvCardModel;

.field final synthetic val$context:Lcom/miui/securityscan/BaseAdvActivity;

.field final synthetic val$popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/AdvCardModel;Landroid/widget/PopupWindow;Lcom/miui/securityscan/BaseAdvActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel$1;->this$0:Lcom/miui/common/card/models/AdvCardModel;

    iput-object p2, p0, Lcom/miui/common/card/models/AdvCardModel$1;->val$popupWindow:Landroid/widget/PopupWindow;

    iput-object p3, p0, Lcom/miui/common/card/models/AdvCardModel$1;->val$context:Lcom/miui/securityscan/BaseAdvActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/common/card/models/AdvCardModel$1;->val$popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object p1, p0, Lcom/miui/common/card/models/AdvCardModel$1;->val$context:Lcom/miui/securityscan/BaseAdvActivity;

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$1;->this$0:Lcom/miui/common/card/models/AdvCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/AdvCardModel;->access$700(Lcom/miui/common/card/models/AdvCardModel;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/securityscan/BaseAdvActivity;->g0(Lcom/miui/common/card/models/BaseCardModel;I)V

    return-void
.end method
