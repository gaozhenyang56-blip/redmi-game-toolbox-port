.class Lcom/miui/networkassistant/ui/view/RadioGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/view/RadioCheckable$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/view/RadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;


# direct methods
.method private constructor <init>(Lcom/miui/networkassistant/ui/view/RadioGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$CheckedStateTracker;->this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/networkassistant/ui/view/RadioGroup;Lcom/miui/networkassistant/ui/view/RadioGroup$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/RadioGroup$CheckedStateTracker;-><init>(Lcom/miui/networkassistant/ui/view/RadioGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 3

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$CheckedStateTracker;->this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/view/RadioGroup;->access$300(Lcom/miui/networkassistant/ui/view/RadioGroup;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$CheckedStateTracker;->this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/miui/networkassistant/ui/view/RadioGroup;->access$302(Lcom/miui/networkassistant/ui/view/RadioGroup;Z)Z

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$CheckedStateTracker;->this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/view/RadioGroup;->access$400(Lcom/miui/networkassistant/ui/view/RadioGroup;)I

    move-result p2

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$CheckedStateTracker;->this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/view/RadioGroup;->access$400(Lcom/miui/networkassistant/ui/view/RadioGroup;)I

    move-result v1

    invoke-static {p2, v1, v2}, Lcom/miui/networkassistant/ui/view/RadioGroup;->access$500(Lcom/miui/networkassistant/ui/view/RadioGroup;IZ)V

    :cond_1
    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$CheckedStateTracker;->this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;

    invoke-static {p2, v2}, Lcom/miui/networkassistant/ui/view/RadioGroup;->access$302(Lcom/miui/networkassistant/ui/view/RadioGroup;Z)Z

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$CheckedStateTracker;->this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;

    invoke-static {p2, p1, v0}, Lcom/miui/networkassistant/ui/view/RadioGroup;->access$600(Lcom/miui/networkassistant/ui/view/RadioGroup;IZ)V

    return-void
.end method
