.class Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->access$400(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    const v1, 0x7f120ce6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/luckymoney/utils/PackageUtil;->startUriWithBrowser(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordFuncNoWork()V

    goto :goto_0

    :sswitch_1
    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->access$300(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->access$300(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    goto :goto_0

    :sswitch_2
    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->access$200(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    const-class v2, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_3
    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b01a4 -> :sswitch_3
        0x7f0b0674 -> :sswitch_2
        0x7f0b0686 -> :sswitch_1
        0x7f0b0c77 -> :sswitch_0
    .end sparse-switch
.end method
