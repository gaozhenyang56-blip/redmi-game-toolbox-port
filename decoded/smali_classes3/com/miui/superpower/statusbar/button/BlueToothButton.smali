.class public Lcom/miui/superpower/statusbar/button/BlueToothButton;
.super Lng/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/superpower/statusbar/button/BlueToothButton$a;
    }
.end annotation


# instance fields
.field private h:Landroid/bluetooth/BluetoothAdapter;

.field private i:Lcom/miui/superpower/statusbar/button/BlueToothButton$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/superpower/statusbar/button/BlueToothButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lng/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/superpower/statusbar/button/BlueToothButton;->h:Landroid/bluetooth/BluetoothAdapter;

    new-instance p2, Lcom/miui/superpower/statusbar/button/BlueToothButton$a;

    invoke-direct {p2, p0, p1}, Lcom/miui/superpower/statusbar/button/BlueToothButton$a;-><init>(Lcom/miui/superpower/statusbar/button/BlueToothButton;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/superpower/statusbar/button/BlueToothButton;->i:Lcom/miui/superpower/statusbar/button/BlueToothButton$a;

    return-void
.end method

.method private e()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/button/BlueToothButton;->h:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public d()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/button/BlueToothButton;->e()Z

    move-result v0

    invoke-virtual {p0, v0}, Lng/a;->setChecked(Z)V

    return-void
.end method

.method public getEnableDrawableImpl()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lng/a;->b:Landroid/content/Context;

    const-string v1, "ic_qs_bluetooth_on"

    const v2, 0x7f0808b5

    invoke-static {v0, v1, v2}, Lmg/b;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lng/a;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/button/BlueToothButton;->i:Lcom/miui/superpower/statusbar/button/BlueToothButton$a;

    invoke-virtual {v0}, Lmg/a;->a()Landroid/content/Intent;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lng/a;->toggle()V

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/button/BlueToothButton;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/superpower/statusbar/button/BlueToothButton;->h:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/superpower/statusbar/button/BlueToothButton;->h:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Lng/a;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/button/BlueToothButton;->i:Lcom/miui/superpower/statusbar/button/BlueToothButton$a;

    invoke-virtual {v0}, Lmg/a;->b()V

    return-void
.end method
