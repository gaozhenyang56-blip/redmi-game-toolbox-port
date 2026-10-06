.class Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/view/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2$1;->this$1:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2$1;->this$1:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;

    iget-object p1, p1, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    iget-object p1, p1, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mContainerLayout:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->setInSearchMode(Z)V

    :cond_0
    return-void
.end method

.method public onStop(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2$1;->this$1:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;

    iget-object p1, p1, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    iget-object p1, p1, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mContainerLayout:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->setInSearchMode(Z)V

    :cond_0
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 0

    return-void
.end method
