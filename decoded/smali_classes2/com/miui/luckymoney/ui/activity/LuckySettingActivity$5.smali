.class Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->showCloseDialog()V
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

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->access$300(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method
