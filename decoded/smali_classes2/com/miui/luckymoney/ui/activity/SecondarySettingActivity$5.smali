.class Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const v1, 0x7f120c2f

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->access$800(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p1

    goto :goto_0

    :sswitch_1
    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->access$900(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p1

    goto :goto_0

    :sswitch_2
    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-direct {p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120ce8

    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v2}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->access$600(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v3}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->access$000(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckySoundWarningLevel()I

    move-result v3

    new-instance v4, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5$2;

    invoke-direct {v4, p0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5$2;-><init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;)V

    invoke-virtual {p1, v2, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    goto :goto_1

    :sswitch_3
    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->access$1000(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p1

    goto :goto_0

    :sswitch_4
    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->access$1100(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->toggle()V

    goto/16 :goto_3

    :sswitch_5
    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f1206cd

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f1206cc

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-direct {p1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1206cb

    invoke-virtual {p1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v3}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->access$000(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->getDNDModeLevel()I

    move-result v3

    new-instance v4, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5$1;

    invoke-direct {v4, p0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5$1;-><init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;)V

    invoke-virtual {p1, v2, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    :goto_1
    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    goto :goto_3

    :sswitch_6
    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {}, Lcom/miui/luckymoney/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v2}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->access$000(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getDNDStartTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    new-instance v2, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$StartTimeListener;

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-direct {v2, v3}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$StartTimeListener;-><init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)V

    goto :goto_2

    :sswitch_7
    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {}, Lcom/miui/luckymoney/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v2}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->access$000(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getDNDStopTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    new-instance v2, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$EndTimeListener;

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-direct {v2, v3}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$EndTimeListener;-><init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)V

    :goto_2
    invoke-static {p1, v0, v1, v2}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->access$400(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;JLmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;)V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b066f -> :sswitch_7
        0x7f0b0670 -> :sswitch_6
        0x7f0b0671 -> :sswitch_5
        0x7f0b0672 -> :sswitch_4
        0x7f0b0683 -> :sswitch_3
        0x7f0b0684 -> :sswitch_2
        0x7f0b0931 -> :sswitch_1
        0x7f0b0db7 -> :sswitch_0
    .end sparse-switch
.end method
