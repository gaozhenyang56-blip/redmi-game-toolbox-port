.class Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionUpdated(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->access$000(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)Lcom/miui/networkassistant/model/WhiteListItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->access$000(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)Lcom/miui/networkassistant/model/WhiteListItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->onItemSwitched(Lcom/miui/networkassistant/model/WhiteListItem;Z)V

    :cond_0
    return-void
.end method
