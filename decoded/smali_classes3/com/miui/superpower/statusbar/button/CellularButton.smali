.class public Lcom/miui/superpower/statusbar/button/CellularButton;
.super Lng/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/superpower/statusbar/button/CellularButton$b;
    }
.end annotation


# instance fields
.field private h:Lzg/a;

.field private i:Landroid/telephony/TelephonyManager;

.field private j:Landroid/content/ContentResolver;

.field private k:Lcom/miui/superpower/statusbar/button/CellularButton$b;

.field private l:Z

.field private m:Z

.field private final n:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/superpower/statusbar/button/CellularButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lng/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->l:Z

    iput-boolean p2, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->m:Z

    new-instance p2, Lcom/miui/superpower/statusbar/button/CellularButton$a;

    iget-object p3, p0, Lng/a;->g:Landroid/os/Handler;

    invoke-direct {p2, p0, p3}, Lcom/miui/superpower/statusbar/button/CellularButton$a;-><init>(Lcom/miui/superpower/statusbar/button/CellularButton;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->n:Landroid/database/ContentObserver;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->i:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lzg/a;->a(Landroid/content/Context;)Lzg/a;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->h:Lzg/a;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->j:Landroid/content/ContentResolver;

    new-instance p2, Lcom/miui/superpower/statusbar/button/CellularButton$b;

    invoke-direct {p2, p0, p1}, Lcom/miui/superpower/statusbar/button/CellularButton$b;-><init>(Lcom/miui/superpower/statusbar/button/CellularButton;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->k:Lcom/miui/superpower/statusbar/button/CellularButton$b;

    return-void
.end method

.method static synthetic e(Lcom/miui/superpower/statusbar/button/CellularButton;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->j:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/superpower/statusbar/button/CellularButton;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->i:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic g(Lcom/miui/superpower/statusbar/button/CellularButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->m:Z

    return p1
.end method

.method private getSimStatus()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic h(Lcom/miui/superpower/statusbar/button/CellularButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/button/CellularButton;->l()V

    return-void
.end method

.method static synthetic i(Lcom/miui/superpower/statusbar/button/CellularButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->l:Z

    return p1
.end method

.method private l()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lng/a;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/superpower/statusbar/button/CellularButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/superpower/statusbar/button/CellularButton;->j()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lng/a;->setEnabled(Z)V

    iget-object v0, p0, Lng/a;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lng/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/superpower/statusbar/button/CellularButton;->k()Z

    move-result v0

    invoke-virtual {p0, v0}, Lng/a;->setChecked(Z)V

    return-void
.end method

.method public getDisableDrawableImpl()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lng/a;->b:Landroid/content/Context;

    const-string v1, "ic_qs_data_off"

    const v2, 0x7f0808b6

    invoke-static {v0, v1, v2}, Lmg/b;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getEnableDrawableImpl()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lng/a;->b:Landroid/content/Context;

    const-string v1, "ic_qs_data_on"

    const v2, 0x7f0808b7

    invoke-static {v0, v1, v2}, Lmg/b;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->i:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->h:Lzg/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lzg/a;->b()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    iget-object v0, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->j:Landroid/content/ContentResolver;

    invoke-static {v0}, Lpg/i;->f(Landroid/content/ContentResolver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->l:Z

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/button/CellularButton;->getSimStatus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->m:Z

    iget-object v0, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->k:Lcom/miui/superpower/statusbar/button/CellularButton$b;

    invoke-virtual {v0}, Lmg/a;->a()Landroid/content/Intent;

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/button/CellularButton;->l()V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->j:Landroid/content/ContentResolver;

    const-string v1, "mobile_policy"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->n:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-super {p0}, Lng/a;->onAttachedToWindow()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/superpower/statusbar/button/CellularButton;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->h:Lzg/a;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lng/a;->toggle()V

    iget-object p1, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->h:Lzg/a;

    invoke-virtual {p0}, Lcom/miui/superpower/statusbar/button/CellularButton;->k()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lzg/a;->c(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->k:Lcom/miui/superpower/statusbar/button/CellularButton$b;

    invoke-virtual {v0}, Lmg/a;->b()V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->j:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/superpower/statusbar/button/CellularButton;->n:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method
