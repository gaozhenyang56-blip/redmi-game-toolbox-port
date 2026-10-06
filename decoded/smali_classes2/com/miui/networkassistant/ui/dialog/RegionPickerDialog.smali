.class public Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;
.super Lcom/miui/common/base/ui/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog$SelectListener;,
        Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog$ChangeListener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private city:Ljava/lang/String;

.field cityWheel:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

.field private citys:[Ljava/lang/String;

.field listener:Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog$ChangeListener;

.field private province:Ljava/lang/String;

.field provinceWheel:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

.field private provinces:[Ljava/lang/String;

.field selectListener:Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog$SelectListener;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/base/ui/a;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/String;Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog$ChangeListener;Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog$SelectListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/base/ui/a;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->provinces:[Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->citys:[Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->listener:Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog$ChangeListener;

    iput-object p5, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->selectListener:Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog$SelectListener;

    const/4 p1, 0x0

    invoke-interface {p4, p1}, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog$ChangeListener;->getCityForProvince(I)[Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;Lmiuix/appcompat/app/AlertDialog;Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->lambda$onBuild$0(Lmiuix/appcompat/app/AlertDialog;Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;II)V

    return-void
.end method

.method private synthetic lambda$onBuild$0(Lmiuix/appcompat/app/AlertDialog;Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;II)V
    .locals 1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->cityWheel:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    new-instance p3, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/ArrayWheelAdapter;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p4, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->listener:Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog$ChangeListener;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->provinceWheel:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->getCurrentItem()I

    move-result v0

    invoke-interface {p4, v0}, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog$ChangeListener;->getCityForProvince(I)[Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p1, p4}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->setViewAdapter(Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->cityWheel:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->setCurrentItem(I)V

    return-void
.end method


# virtual methods
.method protected getNegativeButtonText()I
    .locals 1

    const v0, 0x7f12049a

    return v0
.end method

.method protected getPositiveButtonText()I
    .locals 1

    const v0, 0x7f120f49

    return v0
.end method

.method protected onBuild(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/base/ui/a;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e054c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    const v1, 0x7f0b091f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->provinceWheel:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    const v1, 0x7f0b0240

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->cityWheel:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->provinceWheel:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->setVisibleItems(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->cityWheel:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->setVisibleItems(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->provinceWheel:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    new-instance v1, Lcom/miui/networkassistant/ui/dialog/e;

    invoke-direct {v1, p0, p1}, Lcom/miui/networkassistant/ui/dialog/e;-><init>(Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->addChangingListener(Lcom/miui/networkassistant/ui/dialog/wheelview/OnWheelChangedListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->provinceWheel:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    new-instance v1, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/ArrayWheelAdapter;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->provinces:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->setViewAdapter(Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->cityWheel:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    new-instance v1, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/ArrayWheelAdapter;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->citys:[Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->setViewAdapter(Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;)V

    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->selectListener:Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog$SelectListener;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->provinceWheel:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->cityWheel:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog$SelectListener;->selectResult(II)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method protected onShow(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    return-void
.end method

.method public setPosition(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->provinces:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->provinceWheel:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    invoke-virtual {p1, v1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->listener:Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog$ChangeListener;

    invoke-interface {p1, v1}, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog$ChangeListener;->getCityForProvince(I)[Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->listener:Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog$ChangeListener;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->provinceWheel:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog$ChangeListener;->getCityForProvince(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->citys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->cityWheel:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    new-instance v2, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/ArrayWheelAdapter;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3, p1}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->setViewAdapter(Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/WheelViewAdapter;)V

    :goto_2
    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->citys:[Ljava/lang/String;

    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object p1, p1, v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->cityWheel:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->setCurrentItem(I)V

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public show()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/common/base/ui/a;->showDialog()V

    return-void
.end method
