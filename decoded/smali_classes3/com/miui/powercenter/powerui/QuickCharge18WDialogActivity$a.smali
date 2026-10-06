.class Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity$a;->a:Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "miui.intent.action.MIUI_PC_BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    const-string v0, "miui.intent.extra.EXTRA_WIRED_REVERSE_QUICK_CHARGE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity$a;->a:Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity$a;->a:Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity$a;->a:Lcom/miui/powercenter/powerui/QuickCharge18WDialogActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method
