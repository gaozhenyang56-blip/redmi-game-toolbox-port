.class Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;

.field final synthetic val$commonFunction:Lcom/miui/common/card/functions/BaseFunction;

.field final synthetic val$data:Lcom/miui/common/card/functions/FuncTopBannerScrollData;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;Lcom/miui/common/card/functions/BaseFunction;Lcom/miui/common/card/functions/FuncTopBannerScrollData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder$2;->this$0:Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder;

    iput-object p2, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder$2;->val$commonFunction:Lcom/miui/common/card/functions/BaseFunction;

    iput-object p3, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder$2;->val$data:Lcom/miui/common/card/functions/FuncTopBannerScrollData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder$2;->val$commonFunction:Lcom/miui/common/card/functions/BaseFunction;

    invoke-virtual {v0, p1}, Lcom/miui/common/card/functions/BaseFunction;->onClick(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder$2;->val$data:Lcom/miui/common/card/functions/FuncTopBannerScrollData;

    invoke-virtual {v0}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#Intent;action=miui.intent.action.APP_PREDICT_GUIDE_DIALOG_ONCE;package=com.miui.securitycenter;end"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/miui/securityscan/MainActivity;

    invoke-virtual {p1, v0}, Lcom/miui/securityscan/MainActivity;->x0(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder$2;->val$data:Lcom/miui/common/card/functions/FuncTopBannerScrollData;

    invoke-virtual {p1}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getStatKey()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v0}, Lqf/c;->v0(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder$2;->val$data:Lcom/miui/common/card/functions/FuncTopBannerScrollData;

    iget-object p1, p1, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->id:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/common/card/models/FuncListTopScrollCardModel$TopCardViewHolder$2;->val$data:Lcom/miui/common/card/functions/FuncTopBannerScrollData;

    iget-object p1, p1, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->id:Ljava/lang/String;

    invoke-static {p1}, Lqf/c;->v0(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
