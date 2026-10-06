.class Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;->access$000(Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;

    const-class v1, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lx4/z1;->d()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lx4/v;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
