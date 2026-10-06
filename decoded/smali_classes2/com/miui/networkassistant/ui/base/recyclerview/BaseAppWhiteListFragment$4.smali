.class Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$4;->this$0:Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$4;->this$0:Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$4;->this$0:Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->access$500(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;Ljava/lang/String;)V

    :cond_0
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
