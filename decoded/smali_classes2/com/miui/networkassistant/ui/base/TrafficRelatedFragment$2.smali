.class Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$2;
.super Lcom/miui/common/base/asyn/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->resetTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$2;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    invoke-direct {p0, p2}, Lcom/miui/common/base/asyn/b;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public runOnUiThread()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$2;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->access$200(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$2;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->access$300(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$2;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->access$400(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$2;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    iget v3, v3, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSlotNum:I

    if-nez v3, :cond_1

    const v3, 0x7f1206d8

    goto :goto_0

    :cond_1
    const v3, 0x7f1206d9

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s-%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$2;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->access$500(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;Ljava/lang/String;)V

    return-void
.end method
