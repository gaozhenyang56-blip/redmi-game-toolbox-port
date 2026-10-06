.class Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->access$900(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;)V

    :goto_0
    return-void
.end method
