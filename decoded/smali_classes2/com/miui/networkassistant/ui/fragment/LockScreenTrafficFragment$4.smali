.class Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->access$100(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;

    iget-object p1, p1, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$MyAppInfo;->appInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object p1, p1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlotNum(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->access$500(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->startAppDetailFragment(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
