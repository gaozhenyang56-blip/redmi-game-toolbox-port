.class Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$4;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$4;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->access$000(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/luckymoney/config/CommonConfig;->setDNDModeEnable(Z)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$4;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {p1, p2}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->access$100(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;Z)V

    return-void
.end method
