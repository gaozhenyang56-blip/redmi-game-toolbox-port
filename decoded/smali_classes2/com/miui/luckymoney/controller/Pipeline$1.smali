.class Lcom/miui/luckymoney/controller/Pipeline$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/luckymoney/utils/ScreenUtil$KeyguardUnlockedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/luckymoney/controller/Pipeline;->create(Lcom/miui/luckymoney/model/config/BaseConfiguration;Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;)Lcom/miui/luckymoney/controller/Pipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardUnlocked()V
    .locals 5

    invoke-static {}, Lcom/miui/luckymoney/controller/Pipeline;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/miui/luckymoney/controller/Pipeline;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/miui/luckymoney/controller/Pipeline;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/luckymoney/controller/Pipeline;

    invoke-static {v3}, Lcom/miui/luckymoney/controller/Pipeline;->access$100(Lcom/miui/luckymoney/controller/Pipeline;)Lcom/miui/luckymoney/model/message/AppMessage;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/miui/luckymoney/controller/Pipeline;->access$100(Lcom/miui/luckymoney/controller/Pipeline;)Lcom/miui/luckymoney/model/message/AppMessage;

    move-result-object v4

    invoke-static {v3, v2}, Lcom/miui/luckymoney/controller/Pipeline;->access$102(Lcom/miui/luckymoney/controller/Pipeline;Lcom/miui/luckymoney/model/message/AppMessage;)Lcom/miui/luckymoney/model/message/AppMessage;

    invoke-static {v3, v4, v1}, Lcom/miui/luckymoney/controller/Pipeline;->access$200(Lcom/miui/luckymoney/controller/Pipeline;Lcom/miui/luckymoney/model/message/AppMessage;Z)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/luckymoney/controller/Pipeline;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/controller/Pipeline;

    invoke-static {v0, v2}, Lcom/miui/luckymoney/controller/Pipeline;->access$102(Lcom/miui/luckymoney/controller/Pipeline;Lcom/miui/luckymoney/model/message/AppMessage;)Lcom/miui/luckymoney/model/message/AppMessage;

    :cond_2
    invoke-static {}, Lcom/miui/luckymoney/controller/Pipeline;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
