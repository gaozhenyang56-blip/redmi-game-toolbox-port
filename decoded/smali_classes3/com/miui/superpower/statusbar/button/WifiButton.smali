.class public Lcom/miui/superpower/statusbar/button/WifiButton;
.super Lng/a;
.source "SourceFile"


# instance fields
.field private h:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/superpower/statusbar/button/WifiButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lng/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private e()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/button/WifiButton;->h:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public d()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/button/WifiButton;->e()Z

    move-result v0

    invoke-virtual {p0, v0}, Lng/a;->setChecked(Z)V

    return-void
.end method

.method public getEnableDrawableImpl()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lng/a;->b:Landroid/content/Context;

    const-string v1, "ic_qs_wifi_on"

    const v2, 0x7f0808bb

    invoke-static {v0, v1, v2}, Lmg/b;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lng/a;->toggle()V

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/button/WifiButton;->e()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/button/WifiButton;->h:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lng/a;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setWifiManager(Landroid/net/wifi/WifiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/statusbar/button/WifiButton;->h:Landroid/net/wifi/WifiManager;

    return-void
.end method
