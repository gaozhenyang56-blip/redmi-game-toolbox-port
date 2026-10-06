.class Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectItemUpdate(II)V
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->access$500(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)I

    move-result p2

    if-ne p2, p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {p2, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->access$700(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;I)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {p2, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->access$600(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;I)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {p2, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->access$400(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;I)V

    :goto_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->access$302(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;Z)Z

    return-void
.end method
