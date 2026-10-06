.class Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;


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

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextSetted(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;

    invoke-static {p2, p1}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->access$602(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->access$700(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;)Lmiuix/preference/TextPreference;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;

    invoke-static {p2, p1}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->access$402(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->access$500(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;)Lmiuix/preference/TextPreference;

    move-result-object p2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;

    invoke-static {p2, p1}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->access$202(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->access$300(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;)Lmiuix/preference/TextPreference;

    move-result-object p2

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;

    invoke-static {p2, p1}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->access$002(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->access$100(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;)Lmiuix/preference/TextPreference;

    move-result-object p2

    :goto_0
    invoke-virtual {p2, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->access$802(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;Z)Z

    return-void
.end method
