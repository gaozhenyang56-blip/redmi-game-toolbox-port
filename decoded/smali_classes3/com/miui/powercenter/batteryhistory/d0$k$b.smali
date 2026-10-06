.class Lcom/miui/powercenter/batteryhistory/d0$k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/d0$k;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/d0$k;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/d0$k;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$k$b;->a:Lcom/miui/powercenter/batteryhistory/d0$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$k$b;->a:Lcom/miui/powercenter/batteryhistory/d0$k;

    iget-object p1, p1, Lcom/miui/powercenter/batteryhistory/d0$k;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/d0;->x(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/common/ui/HoverSlidingSwitch;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/slidingwidget/widget/SlidingSwitch;->setChecked(Z)V

    return-void
.end method
