.class Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->checkShowWarningDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    iput p2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$6;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->access$1700(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/CommonConfig;->setNoMoreAskRoaming(Z)Z

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    iget p2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$6;->val$type:I

    invoke-static {p1, p2}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->access$700(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;I)V

    return-void
.end method
