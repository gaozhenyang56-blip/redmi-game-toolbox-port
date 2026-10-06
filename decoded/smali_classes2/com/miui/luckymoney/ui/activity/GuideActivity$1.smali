.class Lcom/miui/luckymoney/ui/activity/GuideActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/luckymoney/ui/activity/GuideActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/GuideActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/GuideActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/GuideActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/GuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordGuidePage(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/GuideActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/GuideActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/GuideActivity;->access$000(Lcom/miui/luckymoney/ui/activity/GuideActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setFirstStartUp(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/GuideActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/GuideActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/GuideActivity;->access$000(Lcom/miui/luckymoney/ui/activity/GuideActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/luckymoney/config/CommonConfig;->setXiaomiLuckyMoneyEnable(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/GuideActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/GuideActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/GuideActivity;->access$000(Lcom/miui/luckymoney/ui/activity/GuideActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/luckymoney/config/CommonConfig;->setXiaomiLuckyMoneyEnable(Z)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/GuideActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/GuideActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/GuideActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/GuideActivity;

    const-class v2, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/GuideActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/GuideActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
