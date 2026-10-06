.class Lcom/miui/common/card/BaseViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/card/BaseViewHolder;->showManualItemLongClickDialog(Lcom/miui/common/card/models/BaseCardModel;Lcom/miui/securityscan/model/AbsModel;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/common/card/BaseViewHolder;

.field final synthetic val$absModel:Lcom/miui/securityscan/model/AbsModel;

.field final synthetic val$baseModel:Lcom/miui/common/card/models/BaseCardModel;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/common/card/BaseViewHolder;Lcom/miui/common/card/models/BaseCardModel;Lcom/miui/securityscan/model/AbsModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/BaseViewHolder$1;->this$0:Lcom/miui/common/card/BaseViewHolder;

    iput-object p2, p0, Lcom/miui/common/card/BaseViewHolder$1;->val$baseModel:Lcom/miui/common/card/models/BaseCardModel;

    iput-object p3, p0, Lcom/miui/common/card/BaseViewHolder$1;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    iput-object p4, p0, Lcom/miui/common/card/BaseViewHolder$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-nez p2, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder$1;->this$0:Lcom/miui/common/card/BaseViewHolder;

    iget-object p2, p0, Lcom/miui/common/card/BaseViewHolder$1;->val$baseModel:Lcom/miui/common/card/models/BaseCardModel;

    iget-object v0, p0, Lcom/miui/common/card/BaseViewHolder$1;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    iget-object v1, p0, Lcom/miui/common/card/BaseViewHolder$1;->val$context:Landroid/content/Context;

    invoke-static {p1, p2, v0, v1}, Lcom/miui/common/card/BaseViewHolder;->access$000(Lcom/miui/common/card/BaseViewHolder;Lcom/miui/common/card/models/BaseCardModel;Lcom/miui/securityscan/model/AbsModel;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
