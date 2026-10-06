.class Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5$1;->this$1:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5$1;->this$1:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;

    iget-object v0, v0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->access$000(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/luckymoney/config/CommonConfig;->setDNDModeLevel(I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5$1;->this$1:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;

    iget-object v0, v0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->access$500(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/miui/luckymoney/config/DoNotDisturbConstants;->DND_TEXT_ID:[I

    aget p2, v1, p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
