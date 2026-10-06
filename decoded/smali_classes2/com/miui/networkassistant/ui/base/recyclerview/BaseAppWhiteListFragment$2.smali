.class Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;


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

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$2;->this$0:Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppListUpdated()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$2;->this$0:Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->access$100(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$2;->this$0:Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;

    new-instance v1, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$2$1;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$2;->this$0:Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;

    invoke-direct {v1, p0, v2}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$2$1;-><init>(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$2;Landroidx/fragment/app/Fragment;)V

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->access$200(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;Lcom/miui/common/base/asyn/b;)V

    :cond_0
    return-void
.end method
