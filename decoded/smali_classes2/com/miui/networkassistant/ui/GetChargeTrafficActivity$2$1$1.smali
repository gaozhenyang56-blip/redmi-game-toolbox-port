.class Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2$1;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2$1;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2$1;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2$1$1;->this$2:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2$1;

    iput p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2$1$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2$1$1;->this$2:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2$1;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2$1;->this$1:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$1600(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/miui/networkassistant/ui/view/MyViewPager;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2$1$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/MyViewPager;->resetHeight(I)V

    const/4 v0, 0x0

    return v0
.end method
