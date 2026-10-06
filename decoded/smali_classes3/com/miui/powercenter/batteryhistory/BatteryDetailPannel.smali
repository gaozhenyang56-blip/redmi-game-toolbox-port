.class public Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/LinearLayout;

.field private c:Lcom/miui/powercenter/batteryhistory/q;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;->b()V

    return-void
.end method

.method static synthetic a(Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;->d:Ljava/util/List;

    return-object p1
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e03d1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0b027f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;->c:Lcom/miui/powercenter/batteryhistory/q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/powercenter/batteryhistory/q;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/powercenter/batteryhistory/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;->c:Lcom/miui/powercenter/batteryhistory/q;

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;->c:Lcom/miui/powercenter/batteryhistory/q;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {}, Lme/l;->d()Lme/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    new-instance v0, Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel$b;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel$a;)V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;->e:Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel$b;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;->a:Landroid/content/Context;

    instance-of v1, v0, Lcom/miui/powercenter/PowerMainActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v0}, Lcom/miui/powercenter/PowerMainActivity;->d0()Lcom/miui/powercenter/batteryhistory/l;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;->e:Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel$b;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/batteryhistory/l;->u(Lcom/miui/powercenter/batteryhistory/w;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-static {}, Lme/l;->d()Lme/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    invoke-static {}, Lme/l;->d()Lme/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;->e:Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;->a:Landroid/content/Context;

    instance-of v1, v0, Lcom/miui/powercenter/PowerMainActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v0}, Lcom/miui/powercenter/PowerMainActivity;->d0()Lcom/miui/powercenter/batteryhistory/l;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;->e:Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel$b;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/batteryhistory/l;->v(Lcom/miui/powercenter/batteryhistory/w;)V

    :cond_0
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    instance-of p1, p2, Landroid/os/Message;

    if-eqz p1, :cond_0

    check-cast p2, Landroid/os/Message;

    iget p1, p2, Landroid/os/Message;->what:I

    const/16 v0, 0x2713

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryDetailPannel;->c:Lcom/miui/powercenter/batteryhistory/q;

    iget v0, p2, Landroid/os/Message;->arg1:I

    iget p2, p2, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, v0, p2}, Lcom/miui/powercenter/batteryhistory/q;->e(II)V

    :cond_0
    return-void
.end method
