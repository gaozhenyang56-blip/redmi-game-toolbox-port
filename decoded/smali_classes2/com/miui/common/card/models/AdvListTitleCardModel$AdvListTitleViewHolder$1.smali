.class Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;

.field final synthetic val$m:Lcom/miui/common/card/models/AdvListTitleCardModel;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;Lcom/miui/common/card/models/AdvListTitleCardModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder$1;->this$0:Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;

    iput-object p2, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder$1;->val$m:Lcom/miui/common/card/models/AdvListTitleCardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder$1;->val$m:Lcom/miui/common/card/models/AdvListTitleCardModel;

    invoke-virtual {v0, p1}, Lcom/miui/common/card/models/AdvListTitleCardModel;->onClick(Landroid/view/View;)V

    return-void
.end method
