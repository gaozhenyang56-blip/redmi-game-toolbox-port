.class Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$8;
.super Landroid/os/Handler;
.source "SourceFile"


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
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$8;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "fast_open"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$8;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->access$500(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$8;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->access$200(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isFastOpenEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5df2\u5f00\u542f"

    goto :goto_0

    :cond_1
    const-string v0, "\u5df2\u5173\u95ed"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const-string v0, "lucky_open"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$8;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->access$300(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$8;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->access$300(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$8;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$8;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->access$100(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;Z)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$8;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->access$300(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$8;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->access$600(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_3
    :goto_1
    return-void
.end method
