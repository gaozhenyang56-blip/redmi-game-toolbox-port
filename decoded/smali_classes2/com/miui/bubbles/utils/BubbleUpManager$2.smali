.class Lcom/miui/bubbles/utils/BubbleUpManager$2;
.super Lcom/miui/bubbles/settings/GlobalSettings;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/bubbles/utils/BubbleUpManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/bubbles/utils/BubbleUpManager;


# direct methods
.method constructor <init>(Lcom/miui/bubbles/utils/BubbleUpManager;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/utils/BubbleUpManager$2;->this$0:Lcom/miui/bubbles/utils/BubbleUpManager;

    invoke-direct {p0, p2, p3, p4}, Lcom/miui/bubbles/settings/GlobalSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onSettingChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/utils/BubbleUpManager$2;->this$0:Lcom/miui/bubbles/utils/BubbleUpManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/miui/bubbles/utils/BubbleUpManager;->access$102(Lcom/miui/bubbles/utils/BubbleUpManager;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSettingChanged: isZenMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/bubbles/utils/BubbleUpManager$2;->this$0:Lcom/miui/bubbles/utils/BubbleUpManager;

    invoke-static {v0}, Lcom/miui/bubbles/utils/BubbleUpManager;->access$100(Lcom/miui/bubbles/utils/BubbleUpManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeadUpManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
