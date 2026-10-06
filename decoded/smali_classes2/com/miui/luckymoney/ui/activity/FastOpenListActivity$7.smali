.class Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$7;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$7;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {v3}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->access$800(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lx4/b;->b(Z[Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$7;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {v0, p1}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->access$900(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$7;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->access$600(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->updateData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$7;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->access$600(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/common/expandableview/a;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
