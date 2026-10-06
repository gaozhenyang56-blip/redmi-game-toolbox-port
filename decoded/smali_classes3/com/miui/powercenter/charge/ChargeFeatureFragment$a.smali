.class Lcom/miui/powercenter/charge/ChargeFeatureFragment$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/charge/ChargeFeatureFragment;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/charge/ChargeFeatureFragment;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/charge/ChargeFeatureFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment$a;->a:Lcom/miui/powercenter/charge/ChargeFeatureFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "miui.intent.action.ACTION_WIRELESS_CHARGING"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment$a;->a:Lcom/miui/powercenter/charge/ChargeFeatureFragment;

    invoke-static {p1}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->e0(Lcom/miui/powercenter/charge/ChargeFeatureFragment;)Lmiuix/preference/CheckBoxPreference;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment$a;->a:Lcom/miui/powercenter/charge/ChargeFeatureFragment;

    invoke-static {p2}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;->h0(Lcom/miui/powercenter/charge/ChargeFeatureFragment;)Loe/a;

    move-result-object p2

    invoke-interface {p2}, Loe/a;->g()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
