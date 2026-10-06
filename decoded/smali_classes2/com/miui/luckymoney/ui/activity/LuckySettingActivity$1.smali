.class Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->access$000(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->access$100(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;Z)V

    :goto_0
    return-void
.end method
