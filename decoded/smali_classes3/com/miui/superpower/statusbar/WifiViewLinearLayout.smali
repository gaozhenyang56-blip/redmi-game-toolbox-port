.class public Lcom/miui/superpower/statusbar/WifiViewLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/superpower/statusbar/WifiViewLinearLayout$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/net/wifi/WifiManager;

.field private c:Lcom/miui/superpower/statusbar/WifiViewLinearLayout$c;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/miui/superpower/statusbar/button/WifiButton;

.field private f:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "wifi"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->b:Landroid/net/wifi/WifiManager;

    new-instance p2, Lcom/miui/superpower/statusbar/WifiViewLinearLayout$c;

    invoke-direct {p2, p0, p1}, Lcom/miui/superpower/statusbar/WifiViewLinearLayout$c;-><init>(Lcom/miui/superpower/statusbar/WifiViewLinearLayout;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->c:Lcom/miui/superpower/statusbar/WifiViewLinearLayout$c;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f081014

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    iget-object p3, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method static synthetic a(Lcom/miui/superpower/statusbar/WifiViewLinearLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->d()V

    return-void
.end method

.method static synthetic b(Lcom/miui/superpower/statusbar/WifiViewLinearLayout;)Lcom/miui/superpower/statusbar/button/WifiButton;
    .locals 0

    iget-object p0, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->e:Lcom/miui/superpower/statusbar/button/WifiButton;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/superpower/statusbar/WifiViewLinearLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->e(Z)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/superpower/statusbar/a;->x(Landroid/content/Context;)Lcom/miui/superpower/statusbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/superpower/statusbar/a;->w()Lcom/miui/superpower/statusbar/a$d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private e(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "<unknown ssid>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setClickable(Z)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->d:Landroid/widget/TextView;

    const v0, 0x7f120349

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    const v0, 0x7f0b0dcb

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->d:Landroid/widget/TextView;

    const v0, 0x7f0b0dc0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/superpower/statusbar/button/WifiButton;

    iput-object v0, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->e:Lcom/miui/superpower/statusbar/button/WifiButton;

    iget-object v1, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Lcom/miui/superpower/statusbar/button/WifiButton;->setWifiManager(Landroid/net/wifi/WifiManager;)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->e:Lcom/miui/superpower/statusbar/button/WifiButton;

    invoke-virtual {v0}, Lcom/miui/superpower/statusbar/button/WifiButton;->d()V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->c:Lcom/miui/superpower/statusbar/WifiViewLinearLayout$c;

    invoke-virtual {v0}, Lmg/a;->a()Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->d:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    iget-object v0, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/superpower/statusbar/WifiViewLinearLayout$a;

    invoke-direct {v1, p0}, Lcom/miui/superpower/statusbar/WifiViewLinearLayout$a;-><init>(Lcom/miui/superpower/statusbar/WifiViewLinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->e:Lcom/miui/superpower/statusbar/button/WifiButton;

    new-instance v1, Lcom/miui/superpower/statusbar/WifiViewLinearLayout$b;

    invoke-direct {v1, p0}, Lcom/miui/superpower/statusbar/WifiViewLinearLayout$b;-><init>(Lcom/miui/superpower/statusbar/WifiViewLinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->c:Lcom/miui/superpower/statusbar/WifiViewLinearLayout$c;

    invoke-virtual {v0}, Lmg/a;->b()V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method
