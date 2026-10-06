.class Lcom/miui/common/card/BaseViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/card/BaseViewHolder;->showFirstAidAlertInfoDialog(Lcom/miui/common/card/models/BaseCardModel;Lcom/miui/securityscan/model/AbsModel;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/common/card/BaseViewHolder;

.field final synthetic val$absModel:Lcom/miui/securityscan/model/AbsModel;


# direct methods
.method constructor <init>(Lcom/miui/common/card/BaseViewHolder;Lcom/miui/securityscan/model/AbsModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/BaseViewHolder$2;->this$0:Lcom/miui/common/card/BaseViewHolder;

    iput-object p2, p0, Lcom/miui/common/card/BaseViewHolder$2;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder$2;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Leg/p;->a(Ljava/lang/String;)Landroid/net/Uri;

    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder$2;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getFirstAidEventHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p2, 0xc9

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
