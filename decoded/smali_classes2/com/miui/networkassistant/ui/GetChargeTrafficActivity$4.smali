.class Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$4;
.super Lcom/miui/common/base/asyn/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->showErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$4;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-direct {p0, p2}, Lcom/miui/common/base/asyn/b;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected runOnUiThread()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$4;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$2400(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1203d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
