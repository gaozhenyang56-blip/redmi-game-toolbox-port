.class Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/adapter/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$400(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->getNumber(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$2000(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$400(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->getNumber(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1302(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$000(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$000(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$000(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$2100(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$300(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$400(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->getNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$500(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$400(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->getNumber(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->getIspByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$2200(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$400(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->getNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->getIspByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;->setCarrier(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->fetchProductList()V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$2300(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$600(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$600(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$400(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->getNumber(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->getIspByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$600(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1203f2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDelete(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$400(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->getNumber(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$400(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->deleteNumber(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1800(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1900(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1800(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "recentNum"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
