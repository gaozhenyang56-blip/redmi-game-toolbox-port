.class Lcom/miui/powercenter/batteryhistory/d0$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/d0$k;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/miui/powercenter/batteryhistory/d0$k;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/d0$k;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$k$a;->b:Lcom/miui/powercenter/batteryhistory/d0$k;

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/d0$k$a;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x2

    const/4 v0, 0x0

    if-eq p2, p1, :cond_2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$k$a;->a:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lpg/d;->f(Z)V

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Lhd/a;->u1(Z)V

    const-string p2, "home"

    invoke-static {p2}, Lpg/e;->h(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/d0$k$a;->b:Lcom/miui/powercenter/batteryhistory/d0$k;

    iget-object p2, p2, Lcom/miui/powercenter/batteryhistory/d0$k;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p2}, Lcom/miui/powercenter/batteryhistory/d0;->j(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object p2

    invoke-static {p2, p1, p1}, Lme/w;->F0(Landroid/content/Context;ZZ)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$k$a;->b:Lcom/miui/powercenter/batteryhistory/d0$k;

    iget-object p1, p1, Lcom/miui/powercenter/batteryhistory/d0$k;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/d0;->x(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/common/ui/HoverSlidingSwitch;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmiuix/slidingwidget/widget/SlidingSwitch;->setChecked(Z)V

    :goto_0
    return-void
.end method
