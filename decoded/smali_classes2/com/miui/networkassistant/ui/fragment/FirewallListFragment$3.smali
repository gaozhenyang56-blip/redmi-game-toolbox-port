.class Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    iget-object p1, p1, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->setSearchInput(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    iget-object v0, p1, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->setData(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->updateSearchResult(Ljava/lang/String;)V

    :cond_1
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
